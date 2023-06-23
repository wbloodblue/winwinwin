#!/bin/bash

if robot /home/automatetest/Desktop/automate/1.robot; then
    echo "Robot Framework task completed successfully."
else
    echo "Robot Framework task encountered an error."
fi