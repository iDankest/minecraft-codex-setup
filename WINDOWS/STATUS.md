# Windows Handoff Status

This is a safe snapshot of the Windows workstation for the Mac-side OpenCode session. The current scope is app and workspace setup, not Minecraft project setup. It is not live machine telemetry; update it after installing tools or changing the active branch.

## Last verified

- Date: 2026-07-27
- Windows edition: Microsoft Windows 11 Pro
- Git: `2.55.0.windows.2`
- OpenCode CLI: `1.17.13`
- OpenSSH: `9.5p2`
- Tailscale CLI: not found; Tailscale is optional for this workflow
- Java/Javac: not required for the current app-only setup

## Onboarding checkout at last verification

- Repository: `git@github.com:iDankest/minecraft-codex-setup.git`
- Branch: `main`
- Commit: `a261619 docs(workflow): configure OpenCode Mac workspace`
- Working tree: clean
- Default branch: `main`

## Mac setup target

The Mac should be prepared with these tools:

- Git: required for cloning and synchronization
- OpenCode: required for the local coding-agent session
- Tailscale: optional; Git remains the synchronization boundary
- Java/JDK: deferred until a real project requires Mac-side checks

The repository already contains the Mac OpenCode configuration in `opencode.json`, `AGENTS.md`, and `.opencode/agents/mac-workspace.md`. No Minecraft repository is needed to complete this phase.

## Next Mac actions

1. Clone or pull this onboarding repository on the Mac.
2. Install Git and OpenCode using `MAC/README.md`.
3. Run `bash MAC/setup.sh` from the repository root.
4. Start `opencode` and authenticate with the provider using OpenCode's `/connect` flow if needed.
5. Do not install Java or clone a Minecraft project yet.
