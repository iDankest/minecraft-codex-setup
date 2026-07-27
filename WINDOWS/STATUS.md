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

## Windows remote streaming (Tailscale + Sunshine + Moonlight)

- Method: Tailscale network + Sunshine on Windows + Moonlight on Mac
- RDP: disabled; not part of the selected setup
- Tailscale on Windows: `1.98.9` installed and running; login pending
- Sunshine: installed and running; web UI reachable at `https://localhost:47990`; first-run account/PIN pending
- Moonlight: Mac client installation and pairing pending
- Router port forwarding: none

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

1. Sign in to Tailscale on Windows with the same account/tailnet used on the Mac, then finish the Sunshine account/PIN at `https://localhost:47990`.
2. On the Mac, install Moonlight, add the Windows Tailscale device, and complete PIN pairing.
3. Keep this onboarding checkout clean on `main`; Git remains the synchronization boundary.
4. Keep Minecraft version, loader, JDK requirement, and build commands as `TBD` until a real project is selected and its facts are confirmed.
5. Run compilation, tests, and Minecraft runtime work on Windows only after that project is available.
