TASK_ID=$1
FAIL="$2"
FAIL="${FAIL:-true}"
NOW=$(date)
EDITFILE=$(realpath ./src/test/java/com/intland/xunit/GatherComputerInfoTest.java)
REPOHOST="$(git remote -v | grep fetch | awk '{print $2}')"

echo ${TASK_ID}
echo ${FIX}
echo ${NOW}
echo ${EDITFILE}
git pull

echo -e "\n${NOW} - Added line to ${REPOHOST}/README.md for ${TASK_ID}" >> README.md

if [[ "${FAIL}" == "true" ]]; then
    if grep -q "// throw " ${EDITFILE}; then
        # remove the comment on the exception to make the test fail
        sed -i -e 's@// throw @throw @g' ${EDITFILE}
    fi
else
    if grep -q "// throw " ${EDITFILE}; then
        # do nothing
        echo ""
    else
        # restore the comment on the exception to make the test pass
        sed -i -e 's@throw @// throw @g' ${EDITFILE}
    fi
fi
git add .
git commit -m "#${TASK_ID} - update for demonstration at ${NOW}"
git push
git pull
