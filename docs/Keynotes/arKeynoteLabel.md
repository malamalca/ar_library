# arKeynoteLabel

Keynote label. Draws a label with the object ID and looks up the matching section / long / additional text in the project's `keynotes_lib` part. The search needle can be the object's own ID or an explicitly entered keynote ID.

**Source:** [`Library_Src/Keynotes/arKeynoteLabel/`](../../Library_Src/Keynotes/arKeynoteLabel/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `idSource` | Object's ID / Keynote ID |
| `keynote` | Explicit keynote ID (hidden when idSource = object's ID) |
| `sectionText`, `longText`, `additionalText` | Looked-up texts (locked) |

Requires the **keynotes_lib** part in the project's embedded library.
