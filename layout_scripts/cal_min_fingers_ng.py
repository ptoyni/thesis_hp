import math

# --- helpers ---
def parse_val(s: str) -> float:
    """
    Parse a numeric string with optional unit suffix:
      'u' -> micro (1e-6), 'm' -> milli (1e-3).
    No suffix -> base SI.
    Examples: '5u' -> 5e-6, '1m' -> 1e-3, '2.5' -> 2.5
    """
    s = s.strip().lower()
    if not s:
        raise ValueError("Empty input.")
    mult = 1.0
    if s.endswith('u'):
        mult = 1e-6
        s = s[:-1]
    elif s.endswith('m'):
        mult = 1e-3
        s = s[:-1]
    # allow plain number (no suffix)
    return float(s) * mult

kB = 1.380649e-23  # J/K

print("Enter values. You may use 'u' for micro and 'm' for milli. No suffix = SI base.")
W_in = input("Width W (e.g., 5u for 5 µm): ").strip()
L_in = input("Length L (e.g., 0.13u for 0.13 µm): ").strip()
Id_in = input("Drain current I_D (e.g., 1m for 1 mA): ").strip()
gm_id_in = input("gm/Id (1/V), no suffix (e.g., 10): ").strip()
# Rsheet_in = input("Gate sheet resistance R_sheet (ohm/sq), no suffix (e.g., 30): ").strip()
# set 7.0 as default value in ihpsg13g2 rsil or salicidated polysilicon sheet resistance
Rsheet_in = 7
#T_in = input("Temperature T in K [default 300]: ").strip()
# Lmin_in = input("Lmin (e.g., 0.13u) [default 0.13u]: ").strip()


# --- parse inputs ---
W = parse_val(W_in)                 # meters (if you wrote µm, it's converted)
L = parse_val(L_in)                 # meters
Id = parse_val(Id_in)               # amperes
gm_id = float(gm_id_in)             # 1/V
Rsheet = float(Rsheet_in)           # ohm/sq
#T = float(T_in) if T_in else 300.0  # K
T=300.0
# Lmin = parse_val(Lmin_in) if Lmin_in else 0.13e-6  # meters
Lmin = 0.13e-6



# --- compute gm and gamma ---
gm = gm_id * Id
if gm <= 0:
    raise ValueError("gm must be > 0. Check Id and gm/Id.")

gamma = 1.0 if (L <= 3.0 * Lmin) else (2.0 / 3.0)

# --- noise formulas (as requested) ---
# v_ch = sqrt(4 k T gamma / gm)
v_ch = math.sqrt(4.0 * kB * T * gamma / gm)

# v_g = sqrt(4 k T Rsheet W / (3 L N^2))
# Enforce v_ch = 5 * v_g  -> solve for N, then ceil to integer:
# gamma/gm = 25 * (Rsheet*W)/(3*L*N^2)  ->  N = sqrt( 25 * (Rsheet*W)/(3*L) * (gm/gamma) )
N_cont = math.sqrt(25.0 * (Rsheet * W) / (3.0 * L) * (gm / gamma))
N_min = max(1, math.ceil(N_cont))

# Evaluate noises at N_min
v_g_at_N = math.sqrt(4.0 * kB * T * Rsheet * W / (3.0 * L * (N_min**2)))
ratio = v_ch / (5.0 * v_g_at_N)  # should be >= 1 with ceiling

# --- report ---
print("\n--- Result ---")
print(f"\n\nMinimum integer N          : {N_min}")
print(f"\n\ngamma                      : {gamma:.6g}")
print(f"gm (S)                     : {gm:.6g}")
print(f"Target condition           : v_ch = 5 * v_g")
print(f"Continuous N               : {N_cont:.6g}")
print(f"v_ch  (V/√Hz)              : {v_ch:.6e}")
print(f"v_g   (V/√Hz) @ N_min      : {v_g_at_N:.6e}")
print(f"Check v_ch / (5*v_g)       : {ratio:.6g}  (>=1 means satisfied)")