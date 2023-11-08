#!/bin/bash

# Define input and output file paths
input_file="muldiv_fast_sr_copy.v"  # Replace with the actual Verilog file name
output_file="output.v"  # Replace with the desired output file name

# Define the transformations
# clear_value=$(grep '\.clear\s*(' "$input_file" | awk -F '[()]' '{print $2}') #From CHATGPT
# clock=""
# d=""
# q=""
# qn=""
# sn=""
# reset=""
# instance_name=""
# dfb="DFB $instance_name ($clock, $d, $q, $qn, $sn, $reset)"


# Define the string to search for   clock=$(echo "$line" | sed 's/.*\.clocked_in(\(.*\)).*/\1/')
search_string="SEQGEN"

# Use a while loop to read the file line by line
while IFS= read -r line; do
    if [[ $line == *"$search_string"* ]]; then
        echo "Found '$search_string' in line: $line"
        # Retrieve all relevant 
        $clock=$(echo -n4 "$line" | sed 's/.*\.clocked_in(\(.*\)).*/\1/')
        echo $clock
    fi
done < "$input_file"

# Delete \**SEQGEN** afterwards
#sed -e '/SEQGEN/,/;/d' $input_file > $output_file

# Perform the replacements using sed
# sed -e "s/\.clocked_on\s*(\s*[^,)]*\s*)/$clocked_on_mapping/g" \
#     -e "s/\.data_in\s*(\s*[^,)]*\s*)/$data_in_mapping/g" \
#     -e "s/\.Q\s*(\s*[^,)]*\s*)/$q_mapping/g" \
#     -e "s/\.QN\s*(\s*[^,)]*\s*)/$qn_mapping/g" \
#     -e "s/\.clear\s*(\s*[^,)]*\s*)/$clear_mapping/g" \
#     -e "s/\.preset\s*(\s*[^,)]*\s*)/$preset_mapping/g" \
#     "$input_file" > "$output_file"
