# HP iPAQ hx4700 — Thin & Max Battery Covers

[Česky](README.cs.md) · [License: CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)

3D-printable replacement battery covers for the **HP iPAQ hx4700**, in two variants: **Thin** and **Max**. The project also includes development plans for a charging solution.

## Development status — not a final version

**This is a work-in-progress prototype, not a finished design.** It still has a few rough edges:

- A sharp corner still needs to be refined.
- The electronics space will probably change to accommodate the PCB mounting points and connector placement.
- The enclosure geometry and electronics layout may change in future revisions.

## Cover variants and downloads

| Variant | Model download |
| --- | --- |
| **Thin** | [Download STL ZIP — Thin & Max, v0.1.2](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.2.zip) |
| **Max** | [Download STL ZIP — Thin & Max, v0.1.2](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.2.zip) |

The combined archive contains both cover variants and the supplied **Holder**, **Lever** and **Lever cover** STL files. Compatible cells, complete assembly instructions and a detailed print profile will be documented once confirmed.

Models are distributed as ZIP archives containing the STL files, the full `LICENSE` text, `ATTRIBUTION.md` and project documentation. See [`releases/`](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/tree/main/releases) for model archives and checksums. The archive does not include charging electronics.

## Thin model previews

These supplied CAD screenshots show the Thin variant.

![Thin cover — inner view](docs/images/Thin01.png)

[Width measurement](docs/images/Thin02.png) · [Detail measurement](docs/images/Thin03.png)

## Printing

I printed the project using **FDM on a Bambu Lab X1C with a 0.2 mm nozzle**. For a finer finish, especially on the small parts, an **SLA resin printer** may be a better choice.

## Required extension spring

A small **extension spring** is required in addition to the printed parts.

| Property | Requirement |
| --- | --- |
| Outer diameter | **1.8 mm maximum; 1.5 mm preferred** |
| Overall length | **4–5 mm** |
| End style | **Closed eyes (loops) at both ends; no open hooks** |
| Eye alignment | **Both eyes centered on the spring axis**, rather than offset to one side |
| Wire diameter | Approximately **0.2 mm** |

## Current battery requirement

**For now, the original BMS / battery electronics board from an original HP iPAQ hx4700 battery must be reused.**

The printed cover does not replace that board. A replacement BMS or a complete replacement battery electronics design is not provided at this stage.

## Charging electronics — work in progress

The charging electronics are under development. For the **Max** cover, the area marked in yellow in the design will probably house the **charging PCB, USB-C PD module and connector**. This placement is still provisional.

I've more or less worked out the custom PCB design, with a bit of help from **Claude and Codex**. However, the current estimates for getting just **five boards made and assembled** range from **US$185 to US$555 (about €165–495)**, depending on the assembly service. That is a steep price for only five boards.

So for now, I'll use **off-the-shelf modules and parts from AliExpress, Amazon, Mouser, DigiKey or TME**. The final module selection and wiring have not been published yet.

For the custom board, I'm considering **USB-C Power Delivery (PD)** and **mutual exclusion between USB-C charging and the iPAQ's 22-pin connector**:

- When the 22-pin connector is connected, the USB-C charging path would be disabled.
- When USB-C charging is active, charging through the 22-pin connector would be blocked.
- Only one charging input would be active at a time. Priority and switching behavior are still to be defined.

These are development goals, not features implemented in the current release. USB-C PD, input switching, a circuit diagram, a bill of materials and verified electrical specifications are not available yet.

## License and attribution

The cover models and project documentation are licensed under **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)**. You may share and adapt them for non-commercial purposes under the license terms. When sharing, credit **Iron-panda666**, retain the supplied notices, link to the license and indicate changes.

This license applies only to copyright and similar rights that the project author is entitled to license. It does not grant rights to third-party trademarks, logos or patents. See [Section 2(b) of the license](https://creativecommons.org/licenses/by-nc/4.0/legalcode.en#s2b).

- [Full license text](LICENSE)
- [License summary](https://creativecommons.org/licenses/by-nc/4.0/)
- [Attribution information](ATTRIBUTION.md)

For commercial use, including selling printed covers, contact [Iron-panda666 on GitHub](https://github.com/Iron-panda666) to discuss a separate commercial license.

The packaging script in `tools/` is separately licensed under the [MIT License](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/blob/main/tools/LICENSE). No firmware is included. Any firmware added in the future will require an explicit software license.

## Compatibility and trademarks

This is an independent community project. **HP** and **iPAQ** are trademarks of their respective owners. These names identify the device the covers are intended to fit; the covers are not official HP products, and no affiliation, sponsorship or endorsement is implied. HP/iPAQ trademarks and logos are not covered by this project's CC BY-NC 4.0 license.

HP's published [trademark terms](https://www.hp.com/us-en/terms-of-use.html) distinguish fair, accurate textual references from logo use and misleading claims of affiliation.
