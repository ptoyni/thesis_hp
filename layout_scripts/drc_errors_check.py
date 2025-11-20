"""
DRC Errors Check 

This script gives 2 functions: 
1st needs the the errors copied from KLayout to be pasted in drc_log function inside script and than run the script.
It can be tidious to change script again and again. Therefore, not recommended.

For 2nd function just run the script and paste your errors copied from KLayout in the terminal and press enter and DONE. 
By default, script uses this function.""" 

# DRC Error Check
# 1st function

def parse_drc_errors(drc_log: str):
    lines = drc_log.strip().splitlines()
    print("⚠️ Rules with errors:")
    for line in lines:
        if "error(s)" in line:
            try:
                rule, error_text = line.split(":")
                error_count = int(error_text.strip().split()[0])
                if error_count >= 1:
                    print(f"{rule.strip()}: {error_count} error(s)")
            except ValueError:
                continue

# Example: Paste your DRC log below
drc_log = """
Rule forbidden.PEmPoly: 0 error(s)
Rule forbidden.EmPoly: 0 error(s)
Rule forbidden.LDMOS: 0 error(s)
Rule forbidden.PBiWind: 0 error(s)
Rule forbidden.Flash: 0 error(s)
Rule forbidden.ColWind: 0 error(s)
"""
# parse_drc_errors(drc_log)
# If you want to put manually inside script not in terminal than use above function


# 2nd Funtion
def parse_drc_errors_new():
    print(" Paste your DRC error log below. Press Enter twice to finish:")
    
    # Collect multiline input
    lines = []
    while True:
        line = input()
        if line.strip() == "":
            break
        lines.append(line)
    
    print("\n⚠️ Rules with errors :")
    i=0
    for line in lines:
        if "error(s)" in line:
            try:
                rule, error_text = line.split(":")
                error_count = int(error_text.strip().split()[0])
                if error_count >= 1:
                    print(f"{rule.strip()}: {error_count} error(s)")
                    i=1

            except ValueError:
                continue
    
    if i==0:
        print("Congrats! No error")

# Run the parser
parse_drc_errors_new()
