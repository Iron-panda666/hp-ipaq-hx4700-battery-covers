# Model archives

[Download Thin & Max v0.1.0](hp-ipaq-hx4700-Thin-Max-v0.1.0.zip)

This combined archive contains five original STL files:

- `models/Thin/Thin - PDA Hx4700 battery cover.stl`
- `models/Max/Max - PDA Hx4700 battery cover.stl`
- `models/Shared/Holder - PDA Hx4700 battery cover.stl`
- `models/Shared/Lever - PDA Hx4700 battery cover.stl`
- `models/Shared/Lever cover - PDA Hx4700 battery cover.stl`

Archive integrity: [SHA256SUMS.txt](SHA256SUMS.txt).

Each model archive will contain:

- The STL file or files for the named variant.
- `LICENSE` — the complete CC BY-NC 4.0 legal text.
- `ATTRIBUTION.md` — creator credit and license information.
- `README.md` and `README.cs.md` — project status and the original BMS requirement.
- `docs/images/` — the supplied Thin CAD screenshots referenced by the READMEs.

## Build an archive locally

Add the final models to `models/Thin/`, `models/Max/` and `models/Shared/`, then run from the repository root:

```powershell
./tools/Build-ModelArchive.ps1 -Variant Thin-Max -Version v0.1.1
```

Use the actual release version. The script requires real, non-empty STL inputs and refuses to overwrite an existing archive. Update the download tables in both READMEs when adding a release.

The combined archive name is `hp-ipaq-hx4700-Thin-Max-<version>.zip`. `-Variant Thin` or `-Variant Max` can also package an individual cover folder; those options omit the Shared folder.
