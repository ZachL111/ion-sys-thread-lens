# Ion Sys Thread Lens Walkthrough

I use this file as a small checklist before changing the R implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 143 | ship |
| stress | dirty state | 197 | ship |
| edge | guard slack | 167 | ship |
| recovery | layout drift | 220 | ship |
| stale | allocation pressure | 167 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
