# arKeynoteDescription

Text object that displays the description of a keynote. Looks up the object's own ID in the project's `keynotes_lib` part and exposes the matching section text, long name and additional text as parameters (for use in schedules or linked objects).

**Source:** [`Library_Src/Keynotes/arKeynoteDescription/`](../../Library_Src/Keynotes/arKeynoteDescription/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `sectionText` | Keynote section text for the object's ID (locked) |
| `longText` | Keynote long name (locked) |
| `additionalText` | Keynote additional text (locked) |

Requires the **keynotes_lib** part in the project's embedded library.
