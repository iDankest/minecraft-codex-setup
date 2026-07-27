# OpenCode Project Instructions

This repository is the onboarding and handoff workspace for a two-computer Minecraft mod workflow.

## Machine roles

- Mac: primary editing, planning, documentation, and OpenCode workspace.
- Windows: compilation, tests, Minecraft runtime, and hardware-intensive work.
- Git: the synchronization boundary between independent checkouts.

## Safe operating rules

- Inspect the repository, Git status, branch, remotes, and relevant documentation before changing files.
- Never have two OpenCode sessions edit the same checkout concurrently.
- Keep Mac and Windows as separate local checkouts and synchronize through committed branches.
- Do not guess the Minecraft version, loader, JDK, repository URL, branch, or build/test/runtime commands. Keep unknown values as `TBD` and ask for them.
- Do not run Minecraft build or runtime commands on Mac unless the project explicitly documents that Mac-side validation is required.
- Never add passwords, API keys, tokens, private keys, `.env` contents, private IPs, or machine-specific secrets.
- Do not initialize Git, publish, push, force-push, reset, or discard work without explicit user approval.
- Prefer small, reviewable changes and fast-forward-only pulls.

## Mac-side workflow

1. Read `DECISIONS.md` and `MAC/README.md`.
2. Read `WINDOWS/STATUS.md` for the latest committed Windows handoff snapshot.
3. Inspect the target checkout and report any uncommitted changes.
4. Confirm the project facts before proposing Minecraft-specific commands.
5. Make only the smallest approved change.
6. Run documented checks that are appropriate for Mac.
7. Run `git diff --check`, review the diff, and report the exact handoff branch and commit.

Use `WINDOWS/README.md` and `PROMPTS/windows-setup.md` for Windows validation. Do not silently move Windows-only work onto the Mac.
