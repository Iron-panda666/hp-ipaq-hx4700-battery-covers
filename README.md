# Thin and Max battery covers for the HP iPAQ hx4700

[Česky](README.cs.md)

![Work in progress](https://img.shields.io/badge/status-work_in_progress-orange)
[![Models: CC BY-NC 4.0](https://img.shields.io/badge/models-CC_BY--NC_4.0-lightgrey)](LICENSE)

I wanted a replacement battery cover I could print for my hx4700, so I drew two versions, Thin and Max. The printed parts are far enough along to share. I still have a sharp corner to tidy up and the space for the electronics in Max may change once I've settled on the PCB mounts and connector position.

**Keep the original battery electronics board (BMS). The current build requires it.**

[![Download Thin and Max, STL ZIP v0.1.3](https://img.shields.io/badge/STL_ZIP-v0.1.3-blue)](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.3.zip)

The ZIP has five STL files: Thin, Max, Holder, Lever and Lever cover. I've included the CAD screenshots, notes and license too. The [checksum](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/blob/main/releases/SHA256SUMS.txt) is in the releases folder. I'm still working on cell choices, assembly instructions and a print profile.

## Thin and Max

![Inside the Thin cover](docs/images/Thin01.png)

[Thin width](docs/images/Thin02.png) · [Thin detail](docs/images/Thin03.png)

![Inside the Max cover with the proposed space for electronics marked in yellow](docs/images/Max03.png)

The yellow area is where I plan to put the charging PCB, USB-C PD module and connector.

[Max length](docs/images/Max01.png) · [Max width](docs/images/Max02.png)

## Printing and the latch spring

I printed the parts on a Bambu Lab X1C with a 0.2 mm nozzle. I'd consider an SLA resin printer for the smaller pieces if I wanted a finer finish.

The latch takes a small extension spring. Here's what I'm looking for.

| Dimension or feature | Requirement |
| --- | --- |
| Wire diameter | About 0.2 mm |
| Outer diameter | 1.8 mm maximum, preferably 1.5 mm |
| Overall length | 4 to 5 mm |
| Ends | A closed eye at each end with both eyes centered on the spring axis |

I'll try the 0.2 × 1.5 × 5 mm springs when they arrive from China. That's wire diameter × outer diameter × overall length. [Spring listing on AliExpress](https://www.aliexpress.com/item/1005009679520375.html)

## Charging

I got most of the custom PCB design worked out with some help from Claude and Codex. Then I priced five assembled boards. Depending on the assembly service the quotes came to US$185 to US$555 (about €165 to €495). That's more than I want to spend on five boards at this stage. For now I'm planning around modules and parts from suppliers such as AliExpress, Amazon, Mouser, DigiKey and TME.

I'd like the custom board to support USB-C Power Delivery and let only one charging input run at a time. The idea is for the 22-pin input to disable USB-C charging when it's in use and for USB-C to block charging through the 22-pin input when it takes over. I still have to decide which input gets priority and work out the switching. The schematics, parts list and electrical specs are still in progress.

## Feedback and license

If you print one and something fits poorly, open an issue with the cover version, print settings and a photo of where it catches. Thanks to the folks at r/OldHandhelds for supporting the project. [Report a problem or suggest a change](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/issues) · [r/OldHandhelds](https://www.reddit.com/r/OldHandhelds/)

The models and notes are CC BY-NC 4.0. For non-commercial sharing or modifications, credit Iron-panda666 aka Tomket, keep the notices, link to the license and say what you changed. Contact me on GitHub about commercial use. HP and iPAQ identify the compatible device. This is an independent project and the license covers my own work. Third-party trademarks, logos and patents remain outside its scope. The packaging script is under MIT. [Model license](LICENSE) · [Attribution](ATTRIBUTION.md) · [Script license](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/blob/main/tools/LICENSE) · [Contact](https://github.com/Iron-panda666)
