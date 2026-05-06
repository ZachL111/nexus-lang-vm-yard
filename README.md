# nexus-lang-vm-yard

`nexus-lang-vm-yard` explores compilers with a small Julia codebase and local fixtures. The technical goal is to create a Julia reference implementation for vm workflows, centered on security rule linting, safe and unsafe fixtures, and remediation hints.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Nexus Lang VM Yard Review Notes

`recovery` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Highlights

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/nexus-lang-vm-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `diagnostic reach` and `IR pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Julia code keeps the review rule close to the tests.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
