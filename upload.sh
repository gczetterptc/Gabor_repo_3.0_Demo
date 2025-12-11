#!/bin/bash
# upload.sh - Upload test results to CodeBeamer

# Usage: ./upload.sh <username> <password> <testCaseTrackerId> <testRunTrackerId> <zipFile>

USERNAME="$1"
PASSWORD="$2"
TESTCASE_TRACKER_ID="$3"
TESTRUN_TRACKER_ID="$4"
ZIP_FILE="$5"

# Optional fields - can leave empty or set values
RELEASE_ID=""
CI_URL=""
TESTRUN_FIELD_NAME=""
BUILD_IDENTIFIER=""
DEFAULT_PACKAGE_PREFIX=""
TESTCONFIGURATION_ID=""

# Execute curl to upload the ZIP file
curl -X POST "https://pp-250428092473.portal.ptc.io:9443/cb/api/xunit" \
  --user "${USERNAME}:${PASSWORD}" \
  -H "accept: */*" \
  -H "Content-Type: multipart/form-data" \
  -F "releaseId=${RELEASE_ID}" \
  -F "ciUrl=${CI_URL}" \
  -F "testRunFieldName=${TESTRUN_FIELD_NAME}" \
  -F "testCaseTrackerId=${TESTCASE_TRACKER_ID}" \
  -F "buildIdentifier=${BUILD_IDENTIFIER}" \
  -F "defaultPackagePrefix=${DEFAULT_PACKAGE_PREFIX}" \
  -F "files=@${ZIP_FILE};type=application/zip" \
  -F "testRunTrackerId=${TESTRUN_TRACKER_ID}" \
  -F "testConfigurationId=${TESTCONFIGURATION_ID}"

