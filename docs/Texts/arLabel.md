# arLabel

General element label. Label for elements (doors, windows, walls, ...) with optional slope marker (none / triangle / inclination value), optional border (none / rectangle / polygon), MVO text option and a 3×3 anchor grid to pick where the label attaches.

**Source:** [`Library_Src/Texts/arLabel/`](../../Library_Src/Texts/arLabel/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `slopeMarker` | Brez / Trikotnik / Naklon |
| `customBorder` | Brez / Pravokotnik / Večkotnik |
| `textOptionMVO` | Default / Small (MVO text) |
| `anchor` + `ui_anchor[3][3]` | 3×3 anchor grid, exactly one point checked |
