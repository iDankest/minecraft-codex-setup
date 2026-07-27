# Two-Computer Minecraft Mod Workflow

This repository documents a safe, local-first workflow for developing Minecraft mods with two computers:

- **Mac:** primary editing, planning, documentation, and OpenCode workspace.
- **Windows desktop:** compilation, tests, Minecraft runtime, and other hardware-intensive work.
- **Git:** synchronization boundary between independent local checkouts.
- **OpenCode:** installed locally on both computers when both machines need an agent.

The current phase is app and workspace setup: install Git and OpenCode on the Mac, use Tailscale only if needed, and leave Java and the Minecraft project for a later phase.

## Recommended workflow

1. Plan and edit on the Mac.
2. Commit and push a small, reviewable change.
3. Pull that commit into the Windows checkout.
4. Build, test, and run Minecraft on Windows.
5. Report results through a commit, issue, or written handoff before the next change.

Two local OpenCode installations **do not coordinate automatically**. Never let both agents edit the same checkout at the same time. Keep one independent checkout per computer and synchronize only through commits, pull, and branches.

Tailscale is optional when both computers are next to each other. Remote desktop through Sunshine/Moonlight is a fallback, not a requirement for the first setup.

## Current app setup path

1. Read the [Windows handoff snapshot](WINDOWS/STATUS.md).
2. Follow [Mac setup](MAC/README.md).
3. Install Git and OpenCode on the Mac.
4. Run `bash MAC/setup.sh` from this repository.
5. Start OpenCode and use the project-local configuration.
6. Keep Minecraft setup and Windows validation for a later phase.

For the later two-computer development workflow, use the [safe synchronization workflow](WORKFLOW/README.md), [Windows setup](WINDOWS/README.md), and reusable [OpenCode prompts](PROMPTS/README.md).

## Current project facts

Keep unknown values as placeholders until confirmed. Do not guess them in commands or configuration.

| Fact | Value |
|---|---|
| Windows edition | Microsoft Windows 11 Pro |
| Minecraft version | [Minecraft version: TBD] |
| Mod loader | [Fabric / Forge / NeoForge: TBD] |
| Java/JDK version | [JDK version: TBD] |
| Repository URL | `git@github.com:iDankest/minecraft-codex-setup.git` |
| GitHub account/owner | `iDankest` |
| Default branch | `main` |

## Repository map

| Path | Purpose |
|---|---|
| [MAC/README.md](MAC/README.md) | Mac installation and planning workstation |
| [WINDOWS/README.md](WINDOWS/README.md) | Windows installation and Minecraft validation |
| [WINDOWS/STATUS.md](WINDOWS/STATUS.md) | Latest committed Windows workstation handoff snapshot |
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
