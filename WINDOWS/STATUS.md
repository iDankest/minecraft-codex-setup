# Windows Handoff Status

This is a safe snapshot of the Windows workstation and the latest Mac setup result for the two-computer workflow. Mac owns editing, planning, documentation, and OpenCode; Windows owns compilation, tests, and Minecraft runtime work. Git remains the synchronization boundary. Update this file after installing tools or changing the active branch.

## Windows status last verified

- Date: 2026-07-27
- Windows edition: Microsoft Windows 11 Pro
- Git: `2.55.0.windows.2`
- OpenCode CLI: `1.18.7` (optional for this Codex-led session)
- OpenSSH: `9.5p2`
- Tailscale CLI: not found; Tailscale is optional for this workflow
- Java/Javac: not required for the current app-only setup

## Onboarding checkout at last Windows verification

- Repository: `git@github.com:iDankest/minecraft-codex-setup.git`
- Branch: `main`
- Commit: `00a6f38 docs(workflow): record Mac workspace verification`
- Working tree: clean
- Default branch: `main`
- Synchronization: `git pull --ff-only origin main` — already up to date

## Windows remote access (same LAN)

- Method: Windows Remote Desktop (RDP)
- Network profile: `Private`
- Remote Desktop: enabled
- Firewall: inbound TCP/UDP rules enabled only for the private profile
- Remote Desktop service: running; local listener verified on port `3389`
- Tailscale: not required for this local-network connection

## Mac setup verified

- Date: 2026-07-27
- Architecture: `arm64`
- Git: `2.50.1`
- OpenCode CLI: `1.18.7`
- Git identity: configured
- OpenCode project files: present (`opencode.json`, `AGENTS.md`, `.opencode/agents/mac-workspace.md`)
- Java: installed; required JDK version remains `TBD`
- Setup verification: passed
- Working tree: clean

No Minecraft repository is needed to complete the current app and workspace setup phase.

## Next safe actions

1. On the Mac, install the official Windows App and connect to the Windows PC name `DANKEST-PC` with the Windows account credentials.
2. Keep this onboarding checkout clean on `main`; Git remains the synchronization boundary.
3. Keep Minecraft version, loader, JDK requirement, and build commands as `TBD` until a real project is selected and its facts are confirmed.
4. Run compilation, tests, and Minecraft runtime work on Windows only after that project is available.
