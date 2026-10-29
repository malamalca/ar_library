# arTurningCurves

Vehicle turning path and envelope curves for road / driveway design. The path is a chain of points following the rear axle centre; each segment is shaped by mid-chord along/side offsets. The object draws the wheel paths, the vehicle outline (or an exact swept envelope) at sampled positions, and reports the minimum turning radius. Points where the car stops and reverses can be marked.

**Source:** [`Library_Src/2D/arTurningCurves/`](../../Library_Src/2D/arTurningCurves/)

## Parameters

| Parameter | Meaning |
|-----------|---------|
| `x`, `y` | Path points (rear axle centre) |
| `midalong`, `midside` | Per-segment arc mid-point offsets along / across the chord |
| `dirchange` | Marks a point where the vehicle stops and changes direction |
| `vehicletype` | Custom or Passenger car preset |
| `veh_width`, `veh_wheelbase`, `veh_fo`, `veh_ro` | Vehicle width, wheelbase, front / rear overhang |
| `veh_track`, `veh_maxsteer` | Track width, maximum steering angle |
| `veh_tyrelen`, `veh_tyrewid` | Tyre length / width |
| `minradius` | Smallest turning radius of the rear axle centre (locked, computed) |
| `samplestep`, `nodesize` | Envelope sampling step, node size |
| `fixend`, `endangle` | Fix / release the end direction |

Display toggles: `showaxis`, `showtyres`, `showenvelope`, `envexact`, `showoutlines`, `showcar` with their pens / line types.
