# Review Journal

The repository goal stays the same: create a Julia reference implementation for vm workflows, centered on security rule linting, safe and unsafe fixtures, and remediation hints. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 152, lane `ship`
- `stress`: `lowering drift`, score 187, lane `ship`
- `edge`: `stack depth`, score 182, lane `ship`
- `recovery`: `diagnostic reach`, score 189, lane `ship`
- `stale`: `IR pressure`, score 138, lane `watch`

## Note

A future change should add new cases before it changes the scoring rule.
