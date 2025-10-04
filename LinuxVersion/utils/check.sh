#!/usr/bin/env bash

config_file=""
while getopts "c:" opt; do
    case $opt in
        c)
            config_file="$OPTARG"
        ;;
        *)
            echo "Usage: $0 -c config_file"
            exit 1
        ;;
    esac
done

if [ -z "$config_file" ] || [ ! -f "$config_file" ]; then
    echo "Config file is required and must exist."
    exit 1
fi

check_file_in_config_file() {
    local filename="$1"
    if ! rg -q "$filename" "$config_file"; then
        echo "Removing [$filename]"
        rm -f "$filename"
    fi
}

check_config_required_files() {
    local flag=0
    local required_files
    required_files=$(awk '/\[Scheme.Cur\]/ {flag=1; next} /\[Strings\]/ {flag=0} flag' "$config_file" | tr -d '\r' )
    while IFS= read -r file; do
        if [ ! -f "$file" ]; then
            echo  "Required file not found: [$file]"
            flag=1
        fi
    done <<< "$required_files"

    if [ $flag -eq 0 ]; then
        echo "All required files are present."
    fi
}

echo "Choose config file: $config_file"
echo "-----------------------------------"

echo "Check Required Files in Config"
check_config_required_files

echo '==================================='


echo "Delete Unused Cursor Files"
for file in *.{cur,ani}; do
    check_file_in_config_file "$file"
done
echo '==================================='