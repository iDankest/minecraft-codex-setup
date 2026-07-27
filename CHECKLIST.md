# Onboarding Checklist

Use this as the short path. Keep unknown values marked TBD; do not fill them by guesswork.

## Current app setup

- [x] Windows app status recorded in [WINDOWS/STATUS.md](WINDOWS/STATUS.md)
- [x] Git verified on Windows
- [x] OpenCode verified on Windows
- [ ] Git installed and verified on Mac
- [ ] OpenCode installed and verified on Mac
- [ ] This repository opened with the project-local OpenCode configuration
- [ ] OpenCode provider authenticated on Mac, if required
- [ ] Tailscale considered optional and not used as the Git synchronization boundary

## Future Minecraft decisions

- [x] Windows edition confirmed: Microsoft Windows 11 Pro
- [ ] Minecraft version confirmed: [Minecraft version: TBD]
- [ ] Mod loader confirmed: [Fabric / Forge / NeoForge: TBD]
- [ ] Required JDK version confirmed: [JDK version: TBD]
- [x] Repository URL confirmed: `git@github.com:iDankest/minecraft-codex-setup.git`
- [x] GitHub account/owner confirmed: `iDankest`
- [x] Default branch confirmed: `main`
- [ ] Project build, test, and runtime commands found in project documentation

## Mac

- [ ] Git installed and git --version works
- [ ] Git identity configured locally
- [ ] OpenCode CLI or IDE integration installed and can inspect the checkout
- [ ] Tailscale app confirmed installed; use remains optional
- [ ] Project cloned into a local development folder
- [ ] A focused branch is used for each change
- [ ] No credentials or private network details are stored in the repository

## Windows

- [x] Git for Windows installed and verified
- [x] OpenCode installed locally and verified (optional for this Codex-led session)
- [ ] Full JDK installed at the confirmed version
- [ ] java -version and javac -version match the project requirement
- [x] This onboarding repository cloned locally
- [ ] Minecraft project cloned into a separate local directory
- [ ] Loader-specific tooling installed only after the loader/version decision
- [ ] Project README and build files inspected before commands run

## Remote streaming

- [x] Tailscale installed on Windows
- [ ] Tailscale authenticated on Windows and connected to the Mac tailnet
- [x] Sunshine installed and running on Windows
- [ ] Sunshine account and pairing PIN configured
- [ ] Moonlight installed on the Mac and paired with Windows

## First validation

- [x] Windows checkout is clean
- [x] Intended branch and commit are confirmed
- [x] git pull --ff-only succeeds
- [ ] Project-documented build/check succeeds, or the first meaningful error is recorded
- [ ] Project-documented Minecraft runtime starts, or the first meaningful error is recorded
- [ ] Results are reported without secrets or private paths
- [ ] Any code/configuration fix is a focused commit and pushed branch

## Every handoff

- [ ] Sender committed intentional changes
- [ ] Sender pushed the correct branch
- [ ] Receiver fetched and pulled the intended branch
- [ ] Receiver did not overwrite uncommitted work
- [ ] Branch, commit, commands, and results were recorded
- [ ] No two OpenCode agents edited the same checkout concurrently
