# UAV 專題

Student team workspace for contributing to existing open-source drone projects. Anchor project: rahulsarchive/FOS_UAV (fixed-wing flying-wing mapping platform; docs + DXF only, unmaintained since 2019, no LICENSE file — see `docs/fos-uav-analysis.md`). Software contributions go to its active stack: ArduPilot Plane (primary), OpenDroneMap (secondary); PX4 is optional. This repo holds only our own docs, tracker, and scripts; upstream clones live in the gitignored `upstream/` folder, each with its own git history and its own license.

- This is also the team's FCU aerospace capstone (group 8). **Read `docs/course/README.md` first**: course rules (original PDF alongside), confirmed hardware/schedule constraints, and current design decisions. Update its constraints and decisions sections when they change.
- Docs are Traditional Chinese first with an English summary at the end; README is fully bilingual. Keep that pattern.
- When working inside `upstream/<repo>`, follow that project's commit conventions (ArduPilot: `Subsystem: message`, one subsystem per commit; PX4: Conventional Commits) — see `docs/contribution-workflow.md`.
- Workspace commits use short Conventional Commits.
- Log claimed upstream issues/PRs in `tracker/contributions.md`.
