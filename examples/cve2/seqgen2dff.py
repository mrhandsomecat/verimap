
#input_file = "muldiv_fast_sr_copy.v"
input_file = "seqgen_test.v"
# 
# myfile = open("input_file", "W")
# 
# myline = myfile.readline()
# 
# strings = ("SEQGEN")
# while myline:
#     if any(s in myline for s in strings):
        

# Open the Verilog file for reading
with open(input_file, 'r') as verilog_file:
    lines = verilog_file.readlines()


#module DFB (C, D, Q, QN, RN, SN);
def gen_dff(instance_name, values):
    clock = str(values.get("clocked_on"))
    q = str(values.get("Q"))
    qn = str(values.get("QN"))
    preset = str(values.get("preset"))
    clear = str(values.get("clear"))
    data_in = str(values.get("data_in"))
    dff_string = "DFB" +" "+ instance_name +" " "(" + clock+", " + data_in+", " + q+", "+ qn+", "+ clear+", "+ preset+ ");"
    return dff_string

# Function to extract values enclosed in parentheses for specific signals
def extract_signal_values(line, signals):
    values = {}
    for signal in signals:
        start = line.find(f"{signal}(")
        if start != -1:
            end = line.find(')', start)
            if end != -1:
                value = line[start + len(signal) + 1:end]
                values[signal] = value
    return values


# List of signals to extract values for
signals_to_extract = ["Q", "QN", "clocked_on", "preset", "clear", "data_in"]

# Iterate through the lines and find SEQGEN lines
# for i, line in enumerate(lines):
#    if 'SEQGEN' in line:
#        seqgen_line = line.strip()
#        instance_name = seqgen_line.split('  ')[1]
#        values = {}  # Initialize a dictionary to store values for the specified signals
#        for j in range(i, i + 3):
#            values.update(extract_signal_values(lines[j], signals_to_extract))
#        print("SEQGEN Line:", seqgen_line)
#        print("Values for specified signals:")
#        new_string = gen_dff(instance_name, values)
#        print(new_string) 

for i, line in enumerate(lines):
    if 'SEQGEN' in line:
        seqgen_line = line.strip()+lines[i+1].strip()+lines[i+2].strip()+lines[i+3].strip()
        instance_name = seqgen_line.split('  ')[1]
        values = {}  # Initialize a dictionary to store values for the specified signals
        values.update(extract_signal_values(seqgen_line, signals_to_extract))
        print("SEQGEN Line:", seqgen_line)
        new_string = gen_dff(instance_name, values)
        print(new_string)



