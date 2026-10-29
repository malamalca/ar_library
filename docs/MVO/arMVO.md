# arMVO

Central settings part for MVO views. Not placeable in the model — a Library Global Settings object that stores fonts and representation levels (Simple / Detailed / None) for vents and lights, separately for the home story and other stories. Objects with a **By MVO** representation option ([ar2DLight](../Lights/ar2DLight.md), [arOhisjeZaVentil](../MEP/arOhisjeZaVentil.md), captions in [arKanalizacija](../MEP/arKanalizacija.md)) read these settings, so the whole project's MVO look is controlled from one place.

**Source:** [`Library_Src/MVO/arMVO/`](../../Library_Src/MVO/arMVO/)

## Parameters (main)

| Parameter | Meaning |
|-----------|---------|
| `arPrikazVentilaHomeStory` / `arPrikazVentilaOtherStories` | Vent display: Simple / Detailed / None, per story group |
| `arPrikazLustrovHomeStory` / `arPrikazLustrovOtherStories` | Light display, per story group |
| font parameters | Text fonts used in MVO views |
