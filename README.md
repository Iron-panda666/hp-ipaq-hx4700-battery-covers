# HP iPAQ hx4700 — Thin & Max Battery Covers

[Česky](README.cs.md) · [License: CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)

3D-printable replacement battery covers for the **HP iPAQ hx4700**, in two variants: **Thin** and **Max**. The project also includes development plans for a charging solution.

## Cover variants and downloads

| Variant | Model download |
| --- | --- |
| **Thin** | STL archive pending |
| **Max** | STL archive pending |

STL files have not yet been added to this repository. Dimensions, compatible cells and print settings will be documented alongside the models once confirmed.

Models will be distributed as ZIP archives containing the STL files, the full `LICENSE` text and `ATTRIBUTION.md`. See [`releases/`](releases/) for available model archives. A cover archive contains mechanical models only; it does not include charging electronics.

## Current battery requirement

**For now, the original BMS / battery electronics board from an original HP iPAQ hx4700 battery must be reused.**

The printed cover does not replace that board. A replacement BMS or a complete replacement battery electronics design is not provided at this stage.

## Charging electronics — work in progress

The charging electronics are under development. The initial approach is to assemble a solution from readily available modules and components sourced from suppliers such as AliExpress, Mouser, TME or Amazon. The final module selection and wiring have not been published yet.

A more integrated, intelligent charging board is also being considered, potentially with **USB-C Power Delivery (PD)** and **mutual exclusion between USB-C charging and the iPAQ's 22-pin connector**:

- When the 22-pin connector is connected, the USB-C charging path would be disabled.
- When USB-C charging is active, charging through the 22-pin connector would be blocked.
- Only one charging input would be active at a time. Priority and switching behavior are still to be defined.

These are development goals, not features implemented in the current release. USB-C PD, input switching, a circuit diagram, a bill of materials and verified electrical specifications are not available yet.

## License and attribution

The cover models and project documentation are licensed under **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)**. You may share and adapt them for non-commercial purposes under the license terms. When sharing, credit **Iron-panda666**, retain the supplied notices, link to the license and indicate changes.

- [Full license text](LICENSE)
- [License summary](https://creativecommons.org/licenses/by-nc/4.0/)
- [Attribution information](ATTRIBUTION.md)

For commercial use, including selling printed covers, contact [Iron-panda666 on GitHub](https://github.com/Iron-panda666) to discuss a separate commercial license.

The packaging script in `tools/` is separately licensed under the [MIT License](tools/LICENSE). No firmware is included. Any firmware added in the future will require an explicit software license.

This is an independent community project. HP and iPAQ are trademarks of their respective owners; no affiliation or endorsement is implied.
