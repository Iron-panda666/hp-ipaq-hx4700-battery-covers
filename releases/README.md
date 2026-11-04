# Model archives

No STL archives have been added yet.

Each model archive will contain:

- The STL file or files for the named variant.
- `LICENSE` — the complete CC BY-NC 4.0 legal text.
- `ATTRIBUTION.md` — creator credit and license information.
- `README.md` and `README.cs.md` — project status and the original BMS requirement.

## Build an archive locally

Add the final models to `models/Thin/` and `models/Max/`, then run from the repository root:

```powershell
./tools/Build-ModelArchive.ps1 -Variant Thin -Version v0.1.0
./tools/Build-ModelArchive.ps1 -Variant Max -Version v0.1.0
```

Use the actual release version. The script requires real, non-empty STL inputs and refuses to overwrite an existing archive. Update the download tables in both READMEs when adding a release.

The generated archive names are `hp-ipaq-hx4700-Thin-<version>.zip` and `hp-ipaq-hx4700-Max-<version>.zip`.
