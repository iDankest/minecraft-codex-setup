# Two-Computer Minecraft Mod Workflow

This repository documents a safe, local-first workflow for developing Minecraft mods with two computers:

- **Mac:** primary editing, planning, documentation, and OpenCode workspace.
- **Windows desktop:** compilation, tests, Minecraft runtime, and other hardware-intensive work.
- **Git:** synchronization boundary between independent local checkouts.
- **OpenCode:** installed locally on both computers when both machines need an agent.

## Recommended workflow

1. Plan and edit on the Mac.
2. Commit and push a small, reviewable change.
3. Pull that commit into the Windows checkout.
4. Build, test, and run Minecraft on Windows.
5. Report results through a commit, issue, or written handoff before the next change.

Two local OpenCode installations **do not coordinate automatically**. Never let both agents edit the same checkout at the same time. Keep one independent checkout per computer and synchronize only through commits, pull, and branches.

Tailscale is optional when both computers are next to each other. Remote desktop through Sunshine/Moonlight is a fallback, not a requirement for the first setup.

## Quick path

1. Fill in the [next decisions](DECISIONS.md#next-decisions).
2. Follow [Mac setup](MAC/README.md).
3. Clone this repository and the Minecraft project on Windows using [Windows setup](WINDOWS/README.md).
4. Use the [safe synchronization workflow](WORKFLOW/README.md).
5. Run the [first Windows validation sequence](WINDOWS/README.md#first-windows-validation-sequence).
6. Use the reusable [OpenCode prompts](PROMPTS/README.md).

## Current project facts

Keep unknown values as placeholders until confirmed. Do not guess them in commands or configuration.

| Fact | Value |
|---|---|
| Windows edition | [Windows edition: TBD] |
| Minecraft version | [Minecraft version: TBD] |
| Mod loader | [Fabric / Forge / NeoForge: TBD] |
| Java/JDK version | [JDK version: TBD] |
| Repository URL | [Repository URL: TBD] |
| GitHub account/owner | [GitHub account or owner: TBD] |
| Default branch | [Default branch: TBD] |

## Repository map

| Path | Purpose |
|---|---|
| [MAC/README.md](MAC/README.md) | Mac installation and planning workstation |
| [WINDOWS/README.md](WINDOWS/README.md) | Windows installation and Minecraft validation |
| [WORKFLOW/README.md](WORKFLOW/README.md) | Daily roles, Git synchronization, and recovery rules |
| [PROMPTS/README.md](PROMPTS/README.md) | OpenCode prompt library and usage rules |
| [PROMPTS/mac-setup.md](PROMPTS/mac-setup.md) | Mac setup prompt for OpenCode |
| [PROMPTS/windows-setup.md](PROMPTS/windows-setup.md) | Windows setup prompt for OpenCode |
| [PROMPTS/sync-and-test.md](PROMPTS/sync-and-test.md) | Safe sync and test prompt for OpenCode |
| [CHECKLIST.md](CHECKLIST.md) | Short setup and handoff checklists |
| [DECISIONS.md](DECISIONS.md) | Confirmed decisions and unresolved project facts |

## Official references

- [OpenCode documentation](https://opencode.ai/docs/)
- [Git documentation](https://git-scm.com/doc)
- [Tailscale: connect to devices](https://tailscale.com/kb/1452/connect-to-devices)
- [GitHub: getting started with Git](https://docs.github.com/en/get-started/getting-started-with-git)

## Guardrails

- Do not put passwords, access tokens, private keys, private IPs, or .env contents in this repository.
- Do not initialize Git, publish, or push as part of documentation setup.
- Do not run a Minecraft build command until the repository and its loader/version requirements have been inspected.
- Prefer fast-forward-only pulls and small commits. Stop when Git reports a conflict or unexpected local changes.

## Next step

Start with [DECISIONS.md](DECISIONS.md), then follow [MAC/README.md](MAC/README.md) to open this workspace on macOS. Use [WINDOWS/README.md](WINDOWS/README.md) for the separate Windows checkout.
