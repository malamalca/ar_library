# arStud

Single stud, vertical or horizontal. Basic framing member used alongside [arFrame](arFrame.md); reports lumber size and volume for schedules.

**Source:** [`Library_Src/3D/arStud/`](../../Library_Src/3D/arStud/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `orientation` | Vertical / Horizontal |
| `A`, `B` | Cross-section dimensions (horizontal: A is the length) |
| `studCount` | Studs per section (vertical orientation) |
| `studA`, `studB` | Computed cross-section per stud, locked |
| `LumberSize`, `h` | Lumber length / width for schedules |
| `lumberVol` | Lumber volume (locked, computed) |
