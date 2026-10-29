# arKeynoteSpan

Keynote balloon / span. Draws the object ID in a hexagonal balloon with draggable leader lines; several kinds: label with two line segments, diagonal (follows A × B), and both-sides span. Reads the keynote section / long name from `keynotes_lib`.

**Source:** [`Library_Src/Keynotes/arKeynoteSpan/`](../../Library_Src/Keynotes/arKeynoteSpan/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `kind` | Label with lines / diagonal / both sides |
| `dx1`, `dy1`, `dx2`, `dy2` | Leader line endpoints (draggable, angle-lockable) |
| `stFont` | Balloon text font |
| `sectionText`, `longText` | Looked-up keynote texts (locked) |

Requires the **keynotes_lib** part in the project's embedded library.
