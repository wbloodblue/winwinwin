#!/bin/bash

export DISPLAY=:0

cd /home/automatetest/Desktop/winwinwin

xvfb-run -a -s "-screen 0 2560x1600x24" robot --outputdir ./results --output output.xml --log log.html --report report.html fullflow.robot

pass_count=$(echo 'cat //statistics/suite/stat[1]/@pass' | xmllint --shell ./results/output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
fail_count=$(echo 'cat //statistics/suite/stat[1]/@fail' | xmllint --shell ./results/output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')

access_token="w45RiVwCeMGdVD7pBEzaoIlkQklLoGxcBJwSat8Tvih"

message="Test Results:
Passed: $pass_count
Failed: $fail_count"

curl -X POST -H "Authorization: Bearer $access_token" -F "message=$message" https://notify-api.line.me/api/notify