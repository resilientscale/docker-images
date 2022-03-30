#! /bin/bash

set -e

die () { echo "$1"; exit 1; }
check_bools () {
  while [ "$#" -gt 0 ]; do
    case "${1,,}" in
      'true'|'false') shift;;
      *)  die "Don't recognize boolean $1";;
    esac
  done
}

# Set up environment
TITLE=Clamscan
SCANDIR=${SCANDIR:=''}
CMD_OPTIONS=${CMD_OPTIONS:=''}
FAIL=${FAIL:=false}
FAIL=${FAIL,,}
CLOSE=${CLOSE:=true}
CLOSE=${CLOSE,,}
check_bools "$FAIL" "$CLOSE"
GH_TOKEN=${TOKEN:=${GH_TOKEN}}

STATUS=''
mkdir -p tmp
rm -f tmp/clamscan_report.txt  # since clamscan --log appends
echo "::group::Inputs to Scan"
echo "SCANDIR=$SCANDIR"
echo "CMD_OPTIONS=$CMD_OPTIONS"
echo "FAIL=$FAIL"
echo "ISSUE=$ISSUE"
echo "GH_TOKEN=$GH_TOKEN"
echo "::endgroup::"

# Run freshclam and clamscan
echo "Updating signatures with freshclam..."
freshclam
echo
echo "Running clamscan..."
if [ -n "$CMD_OPTIONS" ]; then
  clamscan --infected --recursive --log=tmp/clamscan_report.txt "$CMD_OPTIONS" "./${SCANDIR}"
else
  clamscan --infected --recursive --log=tmp/clamscan_report.txt "./${SCANDIR}"
fi
if [ "$?" -ne 0 ]; then
  STATUS=error
elif ! grep -q -i 'infected files: *0' tmp/clamscan_report.txt; then
  echo "Clamscan found infected files"
  echo
  if [ "$FAIL" != false ]; then
    STATUS=failure
  else
    STATUS=warning
  fi
else
  STATUS=ok
  echo "Clamscan found no infected files"
  echo
fi

# Save output JSON for GitHub
DETAIL=$'~~~\n'$(cat clamscan_report.txt)$'\n~~~\n'
BLOB=$(echo "$DETAIL" | base64 -w 0)
# out="{\"Title\": \"${TITLE}\", \"Status\": \"${STATUS}\", \"Blob\": \"${BLOB}\"}"
out=$(jq -nc "{\"Title\": \"${TITLE}\", \"Status\": \"${STATUS}\", \"Detail\": \"${DETAIL}\", \"Blob\": \"${BLOB}\"}")
echo "::set-output name=json::$out"

# Clean up
rm -r tmp/

# Handle fail on scan find
if [ "$STATUS" == failure ]; then
  exit 1
fi
