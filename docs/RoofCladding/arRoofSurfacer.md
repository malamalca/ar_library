# arRoofSurfacer

Roof surfacer. Roof accessory (wall/roof coordinate system) that generates a tile layout on the roof surface: rows of tiles with width, length and thickness, batten height and half-width tile spacing between rows. Uses `FM_types_Accessories` for detail levels; slope parameters (`A`, `ZZYZX`, `ac_pitch`, `ac_rooflength`) are kept in sync automatically.

**Source:** [`Library_Src/RoofCladding/arRoofSurfacer/`](../../Library_Src/RoofCladding/arRoofSurfacer/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `A`, `ZZYZX`, `ac_pitch`, `ac_rooflength` | Roof slope dimensions (auto-synced) |
| `tile_width`, `tile_length`, `tile_thk` | Tile size / thickness |
| `batten_height` | Batten height under the tiles |
| `half_offset` | Half-width tile spacing between rows |
| `tile_mat` | Tile surface material |
| `gs_detlevel_2D` / `gs_detlevel_3D` | Detailed / Simple (3D also Off) |
| `shadow_cast` | Shadow casting in 3D |
| `gs_fill_type`, `gs_cont_pen`, `gs_fill_pen`, `gs_back_pen` | 2D fill and pens |
