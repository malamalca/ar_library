# arKanalizacijaJašek

Drainage shaft (jašek) used by [arKanalizacija](arKanalizacija.md). Round or rectangular shaft body with a round or rectangular cover, raise height above the floor, and 3D cover thickness. Carries the same dimension / option indices as the parent object (`DIM_SHAFT_*`, `OPT_*`).

**Source:** [`Library_Src/MEP/arKanalizacijaJašek/`](../../Library_Src/MEP/arKanalizacijaJašek/)

## Data indices (shared with arKanalizacija)

| Index | Meaning |
|-------|---------|
| `DIM_SHAFT_HEIGHT` | Total shaft height |
| `DIM_SHAFT_DIM1 / DIM2` | Shaft cross-section |
| `DIM_COVER_DIM1 / DIM2` | Cover size |
| `DIM_INLET_HEIGHT` | Inlet pipe height |
| `DIM_RAISE_HEIGHT` | Raise height to the cover (part of total height) |
| `OPT_SHOW_SHAFT`, `OPT_SHAFT_TYPE`, `OPT_COVER_TYPE`, `OPT_CASCADE` | Display / type options |
