import re
import math

# this file is incomplete or too time consuming, please refer to cal_min_fingers for corect cal

# Constants
R_sheet = 7          # Ohm/square
Lmin_um = 0.13        # µm
noise_ratio = 5       # Gate noise ≤ 1/5 of channel noise

def compute_min_fingers():
    print("Paste your MOSFET netlist lines (one per line). Press Enter twice to finish:")
    
    # Read multiline input
    mosfet_lines = []
    while True:
        line = input()
        if line.strip() == "":
            break
        mosfet_lines.append(line.strip())

    print(f"\n{'MOSFET':<8} {'W (um)':<7} {'L (um)':<7} {'Id (mA)':<10} {'gm (S)':<10} {'γ':<5} {'Min Fingers (N)'}")
    print("-" * 80)

    for line in mosfet_lines:
        name = line.split()[0]
        w = float(re.search(r"w=(\d+\.?\d*)u", line).group(1))
        l = float(re.search(r"l=(\d+\.?\d*)u", line).group(1))

        # User inputs
        Id = float(input(f"Enter Id (in A) for {name}: "))
        gm = float(input(f"Enter gm (in S) for {name}: "))

        # Gamma logic
        gamma = 1 if l <= 3 * Lmin_um else 2 / 3

        # Gate resistance and minimum finger calculation
        Rg = R_sheet * (w / l)
        N = math.sqrt((3 * Rg) / (noise_ratio * gm * gamma))

        print(f"{name:<8} {w:<7} {l:<7} {Id*1e3:<10.3f} {gm:<10.5f} {gamma:<5} {math.ceil(N)}")

# Run the function
compute_min_fingers()
