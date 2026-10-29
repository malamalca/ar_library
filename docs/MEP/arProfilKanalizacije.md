# arProfilKanalizacije

Longitudinal profile drawing of a pipe path. Companion to [arKanalizacija](arKanalizacija.md): up to 20 nodes, each with offset along the path, elevation, shaft size / height, pipe diameter and left / right inlet flags; draws the profile grid, invert levels, slopes and per-shaft titles with extension boxes.

**Source:** [`Library_Src/MEP/arProfilKanalizacije/`](../../Library_Src/MEP/arProfilKanalizacije/)

## Parameters (main)

| Parameter | Meaning |
|-----------|---------|
| `nodes[i][]` | Per node: offset, elevation, shaft size, shaft height, inlet left / right, pipe diameter, extension width / height |
| `titles[i][]` | Per-shaft title text and extension box size |
| `n` | Node count (max 20) |
| `font_td` | Profile text font |

UI proxy fields: `ui_selected_shaft`, `ui_shaft_offset/elevation/size/height/pipediameter/inletleft/inletright/title`, `ui_shaftextension_width/height`.
