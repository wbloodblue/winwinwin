#!/bin/bash

export DISPLAY=:0

cd /home/automatetest/Desktop/winwinwin

xvfb-run -s "-screen 0 2560x1600x8" -a robot --outputdir ./results --output output.xml --log log.html --report report.html salepage1.robot | tee -a output.txt

pass_count=$(echo 'cat //statistics/suite/stat[1]/@pass' | xmllint --shell ./results/output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')
fail_count=$(echo 'cat //statistics/suite/stat[1]/@fail' | xmllint --shell ./results/output.xml | awk -F'[="]' '!/>/{print $(NF-1)}')

access_token="Drg6JujEREzI3OnDF8TxOKPH6seXtgYKSzxA8IDU3OS"

message="Test Results for Salepage+Upsale:
Passed: $pass_count
Failed: $fail_count"

screenshot_dir="./results"
screenshot_files=($(ls "$screenshot_dir"/*.png))

for file in "${screenshot_files[@]}"; do
    curl -X POST \
         -H "Authorization: Bearer $access_token" \
         -F "message=$message" \
         -F "imageFile=@$file" \
         https://notify-api.line.me/api/notify

         rm -v "$file"
done