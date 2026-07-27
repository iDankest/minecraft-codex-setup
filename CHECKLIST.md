# Onboarding Checklist

Use this as the short path. Keep unknown values marked TBD; do not fill them by guesswork.

## Decisions before installation

- [ ] Windows edition confirmed: [Windows edition: TBD]
- [ ] Minecraft version confirmed: [Minecraft version: TBD]
- [ ] Mod loader confirmed: [Fabric / Forge / NeoForge: TBD]
- [ ] Required JDK version confirmed: [JDK version: TBD]
- [ ] Repository URL confirmed: [Repository URL: TBD]
- [ ] GitHub account/owner confirmed: [GitHub account or owner: TBD]
- [ ] Default branch confirmed: [Default branch: TBD]
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

- [ ] Git for Windows installed and verified
- [ ] OpenCode installed locally and verified
- [ ] Full JDK installed at the confirmed version
- [ ] java -version and javac -version match the project requirement
- [ ] This onboarding repository cloned locally
- [ ] Minecraft project cloned into a separate local directory
- [ ] Loader-specific tooling installed only after the loader/version decision
- [ ] Project README and build files inspected before commands run

## First validation

- [ ] Windows checkout is clean
- [ ] Intended branch and commit are confirmed
- [ ] git pull --ff-only succeeds
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
