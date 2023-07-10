#!/bin/bash

export DISPLAY=:0

cd /home/automatetest/Desktop/winwinwin

xvfb-run -a robot --outputdir ./results --output output.xml --log log.html --report report.html fullflow.robot | tee -a output.txt

pass_count=$(echo 'cat //statistics/suite/stat[1]/@pass' | xmllint --shell ./results/output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
fail_count=$(echo 'cat //statistics/suite/stat[1]/@fail' | xmllint --shell ./results/output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')

access_token="Drg6JujEREzI3OnDF8TxOKPH6seXtgYKSzxA8IDU3OS"

message="Test Results:
Passed: $pass_count
Failed: $fail_count"

curl -X POST -H "Authorization: Bearer $access_token" -F "message=$message" https://notify-api.line.me/api/notify
