# AR Library

ARCHICAD library of GDL objects for architectural and MEP drafting (Slovenian practice).

- **Source:** [`Library_Src/`](Library_Src/) — object source code, organized in subfolders by intent
- **Precompiled:** [`Library_GSM/`](Library_GSM/) — compiled `.gsm` objects
- **Documentation:** [`docs/README.md`](docs/README.md) — per-object pages with previews and parameters
- **Preview images:** [`images/`](images/) — centralized copies of the object preview pictures
- **[GitHub Wiki](https://github.com/malamalca/ar_library/wiki)**

## Objects Summary

Objects are organized in subfolders by their intent:

| Category | Folder | Objects |
|----------|--------|---------|
| 2D | [`Library_Src/2D/`](Library_Src/2D/) | Doors, windows, polylines, road design tools, charts, survey points |
| 3D | [`Library_Src/3D/`](Library_Src/3D/) | Framing, timber, polygons on paths |
| Details | [`Library_Src/Details/`](Library_Src/Details/) | Detail-drawing symbols (anchors, screws) |
| Doors | [`Library_Src/Doors/`](Library_Src/Doors/) | Elevator and garage doors |
| Keynotes | [`Library_Src/Keynotes/`](Library_Src/Keynotes/) | Keynote labels and balloons |
| Lights | [`Library_Src/Lights/`](Library_Src/Lights/) | 2D light fixtures |
| MEP | [`Library_Src/MEP/`](Library_Src/MEP/) | Pipes, shafts, manholes, ventilation, meters |
| MVO | [`Library_Src/MVO/`](Library_Src/MVO/) | Central MVO display settings part |
| Ograje | [`Library_Src/Ograje/`](Library_Src/Ograje/) | Fence parts |
| RoofCladding | [`Library_Src/RoofCladding/`](Library_Src/RoofCladding/) | Roof tile layout generator |
| Stairs | [`Library_Src/Stairs/`](Library_Src/Stairs/) | Riser and tread stair components |
| Texts | [`Library_Src/Texts/`](Library_Src/Texts/) | Title blocks, labels, notes, zone labels |
| WallEnds | [`Library_Src/WallEnds/`](Library_Src/WallEnds/) | Wall end caps |
| Windows | [`Library_Src/Windows/`](Library_Src/Windows/) | Reveal, venetian blind |

Full per-object documentation with previews and parameters: **[docs/README.md](docs/README.md)**

## Related parts (not in the library)

- **arFrameTypes** — per-project frame type table called by `arFrame`. Add the part from [`Examples/arFrameTypes/`](Examples/arFrameTypes/) to the project's embedded library. See [docs/3D/arFrame.md](docs/3D/arFrame.md#frame-types).

## Build

`make_object.bat <Category> <Object>` stages a single object (plus `IDEntryList.dbe`) and compiles it into `Library_GSM/<Category>/` via the ArchiCAD converter. The `arFrameTypes` example is staged together with `3D arFrame`.
