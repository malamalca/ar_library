# ArLibrary Documentation

ARCHICAD library of GDL objects for architectural and MEP drafting (Slovenian practice).
Source: [`Library_Src/`](../Library_Src/) · Precompiled: [`Library_GSM/`](../Library_GSM/) · [GitHub Wiki](https://github.com/malamalca/ar_library/wiki)

Objects are organized in subfolders by their intent. Each object has its own page with a preview image, description and main parameters.

## 2D Objects
Line-drawing helpers: doors, windows, polylines, road design tools, charts, survey points.

| Object | Description |
|--------|-------------|
| [arDoor2D](2D/arDoor2D.md) | Simple 2D parametric door for line drawings |
| [arKriž](2D/arKriž.md) | Simple 2D cross object |
| [arPlankCuts](2D/arPlankCuts.md) | Plank / terrace decking cut drawing |
| [arPolyline](2D/arPolyline.md) | Double polyline with thickness, offset and fill |
| [arPregledniTrikotnik](2D/arPregledniTrikotnik.md) | Visibility (sight) triangle for road junctions |
| [arPrismVolume](2D/arPrismVolume.md) | Prism volume from 3D polygon and cut plane *(work in progress)* |
| [arShadingChart](2D/arShadingChart.md) | Shading chart |
| [arSlopePoly](2D/arSlopePoly.md) | Road / terrain slopes with multiple segments |
| [arSunChart](2D/arSunChart.md) | Sun movement for a specified geographical location |
| [arTurningCurves](2D/arTurningCurves.md) | Vehicle turning path and envelope curves |
| [arVišinskaKota](2D/arVišinskaKota.md) | Absolute height dimension point with two lines |
| [arWindow2D](2D/arWindow2D.md) | Simple 2D parametric window for line drawings |
| [arZakoličba](2D/arZakoličba.md) | Custom surveying point |
| [eGPilon](2D/eGPilon.md) | eG pilot parcel polygon with XML/JSON export *(work in progress)* |

## 3D Objects
Parametric 3D geometry: framing, timber, polygons on paths.

| Object | Description |
|--------|-------------|
| [ar3DPolygon](3D/ar3DPolygon.md) | 3D polygon helper, not placeable, used by other objects |
| [arBioklimatskaPergola](3D/arBioklimatskaPergola.md) | Simple awning / pergola object |
| [arFireplaceLog](3D/arFireplaceLog.md) | Fireplace log for interior decoration |
| [arFrame](3D/arFrame.md) | Stud framing with blocking and frame types |
| [arIveralPanel](3D/arIveralPanel.md) | Rotatable furniture panel (Iveral / plywood) |
| [arObjectOnPolyline](3D/arObjectOnPolyline.md) | Array of objects / profiles along a polyline path |
| [arProfileMultiplicator](3D/arProfileMultiplicator.md) | Multiplies a complex profile vertically / horizontally |
| [arSlopedPlane](3D/arSlopedPlane.md) | Sloped plane for sloped ground design |
| [arStud](3D/arStud.md) | Single stud, vertical or horizontal |
| [arTimber](3D/arTimber.md) | Timber post with arbitrary cutouts |

## Details
Detail-drawing symbols.

| Object | Description |
|--------|-------------|
| [arKnaufAnchor](Details/arKnaufAnchor.md) | Wall / concrete anchor drawing |
| [arKnaufScrew](Details/arKnaufScrew.md) | Screw drawing (TN 3.5x35) |

## Doors

| Object | Description |
|--------|-------------|
| [arElevatorDobleDoor](Doors/arElevatorDobleDoor.md) | Double sliding door for elevator access |
| [arGarageDoorSegment](Doors/arGarageDoorSegment.md) | Garage door panel segment |

## Keynotes
Keynote label helpers (all read the project's `keynotes_lib` part).

| Object | Description |
|--------|-------------|
| [arKeynoteDescription](Keynotes/arKeynoteDescription.md) | Keynote description text by ID |
| [arKeynoteLabel](Keynotes/arKeynoteLabel.md) | Keynote label with section and long name |
| [arKeynoteSpan](Keynotes/arKeynoteSpan.md) | Keynote balloon / span with leader lines |

## Lights

| Object | Description |
|--------|-------------|
| [ar2DLight](Lights/ar2DLight.md) | 2D light fixture symbol (circle / rectangle, ceiling / wall) |

## MEP
Pipes, shafts, manholes, ventilation and meters.

| Object | Description |
|--------|-------------|
| [arCevniRazvod](MEP/arCevniRazvod.md) | Horizontal pipe line with junctions |
| [arFasadnaRešetka](MEP/arFasadnaRešetka.md) | Facade ventilation box (intake + exhaust) |
| [arJašek](MEP/arJašek.md) | Generic shaft / manhole object |
| [arKanalizacija](MEP/arKanalizacija.md) | Pipe path with longitudinal section and shafts |
| [arKanalizacijaJašek](MEP/arKanalizacijaJašek.md) | Drainage shaft used by arKanalizacija |
| [arMKČN](MEP/arMKČN.md) | Manhole with TIMS 6PE standard size |
| [arMerilnaOmarica](MEP/arMerilnaOmarica.md) | Meter cabinet (PMO3 / PMO4) |
| [arOhisjeZaVentil](MEP/arOhisjeZaVentil.md) | Vent housing (intake / exhaust, ceiling / wall) |
| [arPonikovalnica](MEP/arPonikovalnica.md) | Infiltration pit (soakaway) |
| [arPrezračevanjeRazdelilec](MEP/arPrezračevanjeRazdelilec.md) | Ventilation air splitter |
| [arProfilKanalizacije](MEP/arProfilKanalizacije.md) | Longitudinal profile drawing of a pipe path |
| [arRešetka](MEP/arRešetka.md) | Grille / grating symbol |
| [arVertikala](MEP/arVertikala.md) | Vertical pipe (riser) object |
| [arVgradnaOmara](MEP/arVgradnaOmara.md) | Built-in cabinet with slatted front |
| [arVodomerniJašek](MEP/arVodomerniJašek.md) | Water meter manhole |

## MVO

| Object | Description |
|--------|-------------|
| [arMVO](MVO/arMVO.md) | Central MVO display settings (fonts, vent / light representation) |

## Ograje (Fences)

| Object | Description |
|--------|-------------|
| [arZaključekOgraje1](Ograje/arZaključekOgraje1.md) | Fence termination post |

## RoofCladding

| Object | Description |
|--------|-------------|
| [arRoofSurfacer](RoofCladding/arRoofSurfacer.md) | Roof surface / tile layout generator on roof elements |

## Stairs
Stair accessory components for ArchiCAD stairs.

| Object | Description |
|--------|-------------|
| [arStairRiser](Stairs/arStairRiser.md) | Riser component with optional reveal |
| [arStairTread](Stairs/arStairTread.md) | Tread component with nosing, recesses and non-slip bands |

## Texts
Labels, titles, notes.

| Object | Description |
|--------|-------------|
| [arGlava](Texts/arGlava.md) | Drawing title block (glava), classic set |
| [arGlava2025](Texts/arGlava2025.md) | Drawing title block, 2025 set |
| [arIDLabel](Texts/arIDLabel.md) | Element ID label |
| [arLabel](Texts/arLabel.md) | General element label with slope marker and border |
| [arLabelFireRating](Texts/arLabelFireRating.md) | Fire rating label (e.g. EI30) |
| [arNapis](Texts/arNapis.md) | Text note with variables, e.g. `<projectAltitude>` |
| [arZone](Texts/arZone.md) | Room / zone label (number, area, elevation) |
| [arZone2](Texts/arZone2.md) | Room / zone label, variant 2 |

## WallEnds

| Object | Description |
|--------|-------------|
| [arWallEnd1](WallEnds/arWallEnd1.md) | Wall end cap for straight and curved (composite) walls |

## Windows

| Object | Description |
|--------|-------------|
| [arInsulatedReveal](Windows/arInsulatedReveal.md) | Insulated reveal and window board |
| [arVenetianBlind](Windows/arVenetianBlind.md) | Venetian blind, slats can be a complex profile |

## Related parts (not in the library)

- **arFrameTypes** — per-project frame type table called by [arFrame](3D/arFrame.md).
  Add the part from [`Examples/arFrameTypes/`](../Examples/arFrameTypes/) to the project's embedded library and edit its table. See [arFrame docs](3D/arFrame.md#frame-types).
