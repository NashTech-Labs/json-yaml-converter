#!/bin/bash

echo "Select one conversion option:"
echo "1. JSON-to-YAML(JY/jy)"
echo "2. YAML-to-JSON(YJ/yj)"
read -p "Enter option: " option

if [[ $option = "JY" ||  $option = "jy" ]];
then
    read -p "Enter JSON input file path: " input_path
    read -p "Enter YAML output file path: " output_path
    if [ -f "$input_path" ]; then
        python3 src/json-to-yaml.py $input_path $output_path
        echo "OUTPUT -> $output_path"
        cat $output_path
    else
        echo "File $input_path does not exist!"
    fi
elif [[ $option = "YJ" ||  $option = "yj" ]];
then
    read -p "Enter YAML input file path: " input_path
    read -p "Enter JSON output file path: " output_path
    if [ -f "$input_path" ]; then
        python3 src/yaml-to-json.py $input_path $output_path
        echo "OUTPUT -> $output_path"
        cat $output_path
    else
        echo "File $input_path does not exist!"
    fi
else
    echo "Wrong Input!"
fi