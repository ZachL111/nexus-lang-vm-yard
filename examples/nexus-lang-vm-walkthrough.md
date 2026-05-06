# Nexus Lang VM Yard Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 152 | ship |
| stress | lowering drift | 187 | ship |
| edge | stack depth | 182 | ship |
| recovery | diagnostic reach | 189 | ship |
| stale | IR pressure | 138 | watch |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around lowering drift and diagnostic reach.
