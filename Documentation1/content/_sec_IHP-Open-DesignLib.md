


**IHP-Open-DesignLib** is an open-source IC design repository supporting the **SG13G2 BiCMOS** and **SG13CMOS** processes from IHP. It enables the fabrication of non-commercial, academic, and research-based designs via free Multi-Project Wafer (MPW) runs under the **FMD-QNC** project (project code: 16ME083, funded by the German government).

The platform promotes community-based development, tape-outs via GitHub submissions, and open access to prototype ICs fabricated at IHP’s pilot line.

### Available Technologies and Tape-in Dates

| Tape-In Date   | Technology | Area Available (mm²) |
|----------------|------------|-----------------------|
| 10 May 2024    | SG13G2     | 10                    |
| 11 Nov 2024    | SG13CMOS   | 220                   |
| 22 Nov 2024    | SG13G2     | 20                    |
| 07 Apr 2025    | SG13G2     | 140                   |
| 09 May 2025    | SG13G2     | 30                    |
| 18 Jul 2025    | SG13G2     | 30                    |
| 15 Sep 2025    | SG13CMOS   | 220                   |

**SG13G2**: Full BiCMOS access with high-performance HBTs (up to ~300 GHz fT).  
**SG13CMOS**: CMOS-only variant, no access to HBT devices.

### Submission Process

1. **Design Phase**: Define project scope based on PDK capabilities. Sponsors may add criteria.
2. **GitHub Submission**: Submit the design via pull request to the `IHP-Open-DesignLib` repository.
3. **Automated Checks**: DRC, completeness, and license validation performed automatically.
4. **Selection Process**: Community and IHP review submissions based on established criteria.
5. **Fabrication**: Selected designs are processed at IHP (4–6 months typical turnaround).
6. **Chip Depot Access**: Fabricated ICs are stored and made rentable via the IHP Open Chip Depot (max 2 years).
7. **Evaluation & Publication**: Results and characterization data must be submitted back to the repository.

### Selection Criteria

- Open-source license must be included.
- Layout must pass Design Rule Check (DRC).
- Target area is **< 2 mm²** (larger designs allowed if space is available).
- No export restrictions.
- First-time submitters are preferred.
- Use of tools compatible with the IHP-Open-PDK.
- Use of SiGe HBT devices (for SG13G2 designs) is preferred.
- Clear and complete documentation.
- Unique IP blocks are encouraged (e.g., novel ADCs, LNAs, etc.).
- High area and padframe utilization.


For more information, visit the [IHP-Open-DesignLib GitHub](https://github.com/IHP-GmbH/IHP-Open-DesignLib).
