


# Project Context

This section defines the **scope of work for the analog part** responsible for developing the analog portion of a split-design LED driver IC. This follows the buck converter topology as outlined in **@wicht2024**.

---

# Analog Design Responsibilities

## Core Analog Blocks to Design

| Block                        | Description |
|-----------------------------|-------------|
| Error Amplifier             | High-gain op-amp for feedback control |
| Ramp Generator              | Sawtooth waveform for PWM comparator |
| PWM Comparator              | Compares ramp with error voltage |
| Bandgap Reference (Vref)    | Internal voltage reference (e.g., 1.2 V) |
| Current Sinks (RGBW)        | Analog-controlled current mirrors (1–40 mA) |
| Compensation Network        | Type II/III loop stabilization |
| Protection Circuits         | UVLO, OVLO, OTP (analog logic + comparators) |
| Bias Generation             | Current mirrors, PTAT/CTAT sources |

---

## Do these blocks also fall under analog part?

- Level Shifters (if interfacing with HV gate driver)
- Soft-Start Circuit (analog ramp limiter)
- BIST/Test Enable logic for silicon debug

---

