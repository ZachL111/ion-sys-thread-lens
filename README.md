# ion-sys-thread-lens

`ion-sys-thread-lens` explores systems programming with a small R codebase and local fixtures. The technical goal is to build an R toolkit that studies thread behavior through deny and allow fixtures, with explainable decision traces and bounded memory input sets.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Ion Sys Thread Lens Review Notes

`recovery` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Highlights

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ion-sys-thread-walkthrough.md` walks through the case spread.
- The R code includes a review path for `layout drift` and `allocation pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added R path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Future Work

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
