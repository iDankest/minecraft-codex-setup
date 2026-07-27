# Windows Setup

The Windows desktop is the build, test, and Minecraft runtime machine. This guide is intentionally loader-neutral: the exact Minecraft version, loader, JDK, and build command must come from the project and be confirmed before installation is finalized.

For the current app-only setup, use `WINDOWS/STATUS.md` and `MAC/README.md`. The Minecraft-specific sections below are for a later phase.

## Quick path

1. Confirm [Windows edition: TBD] and the Minecraft project facts in [DECISIONS.md](../DECISIONS.md).
2. Install and verify Git for Windows.
3. Install and verify OpenCode locally if Windows will also use an agent.
4. Install the project-required JDK.
5. Clone this repository and the Minecraft project into separate local folders.
6. Inspect the project before running any build or Minecraft command.
7. Run the first validation sequence below.

## Installation and verification

### Git for Windows

Install Git for Windows from the approved source, then open PowerShell or Git Bash and verify:

~~~powershell
git --version
git config --global user.name "<YOUR_NAME>"
git config --global user.email "<YOUR_EMAIL>"
~~~

See the [Git documentation](https://git-scm.com/doc). Use the account's approved credential manager or SSH setup; never store tokens in this repository.

### OpenCode

Install OpenCode locally on Windows using the [official documentation](https://opencode.ai/docs/). If using the CLI, verify it with:

~~~powershell
opencode --version
~~~

If using the desktop app or an IDE integration, open the project and confirm that OpenCode can inspect the checkout. This installation is independent from the Mac installation.

### Java/JDK

Install a full JDK, not only a runtime, once [JDK version: TBD] is confirmed. Check the project's build files and official loader documentation before changing JAVA_HOME or installing more than one JDK.

Verify:

~~~powershell
java -version
javac -version
~~~

If multiple JDKs are installed, record which one the project uses and verify the active one before building. Do not change the project's Gradle or Java settings just to make a guessed version work.

### Tailscale (optional)

Windows does not need Tailscale for the first local setup. Install it only if you need network access between the computers or a later remote workflow. Follow [Connect to devices](https://tailscale.com/kb/1452/connect-to-devices). Do not use Tailscale as a substitute for Git synchronization.

### Minecraft tooling

Do not install a loader-specific toolchain from memory. First confirm:

- Minecraft version: [Minecraft version: TBD]
- Loader: [Fabric / Forge / NeoForge: TBD]
- JDK: [JDK version: TBD]
- Required launcher, mappings, dependencies, and test/runtime instructions

Then follow the project's own README and the loader's official documentation. Use the repository's existing wrapper or documented task when one exists. Do not invent a command for Fabric, Forge, or NeoForge.

## Clone this repository on Windows

This repository can be downloaded or cloned. Cloning is recommended because it preserves branches and makes later synchronization explicit.

Replace placeholders before running commands. Create the parent directory before changing into it:

~~~powershell
New-Item -ItemType Directory -Force "$HOME\Documents\Code" | Out-Null
Set-Location "$HOME\Documents\Code"
git clone "<REPOSITORY_URL>" "<ONBOARDING_DIRECTORY>"
Set-Location ".\<ONBOARDING_DIRECTORY>"
git status --short --branch
~~~

Clone the Minecraft project into its own directory, not inside the onboarding documentation directory:

~~~powershell
git clone "<MINECRAFT_REPOSITORY_URL>" "<MINECRAFT_PROJECT_DIRECTORY>"
Set-Location ".\<MINECRAFT_PROJECT_DIRECTORY>"
git status --short --branch
~~~

## First Windows validation sequence

Run this sequence only after the values above are confirmed:

1. **Confirm a clean checkout.**
   ~~~powershell
   git status --short --branch
   git branch --show-current
   ~~~
2. **Inspect before changing anything.** Read the project README and inspect the top-level build files, wrapper files, version properties, .gitignore, and documented scripts.
3. **Confirm Java.** Run java -version and javac -version; compare the result with the project's stated requirement.
4. **Synchronize safely.** Fetch the intended branch and use a fast-forward-only pull:
   ~~~powershell
   git fetch origin
   git pull --ff-only origin "<CURRENT_BRANCH>"
   ~~~
5. **Run the project-documented checks.** Use only the build, test, or run tasks found in the project documentation or existing wrapper. If no command is documented, stop and ask for the loader/version decision.
6. **Start Minecraft or the test runtime.** Follow the project's documented development-client/server sequence. Record the exact command, result, and any log path.
7. **Report without secrets.** Record changed files, commands, results, and blockers. Exclude tokens, private IPs, personal paths, and credential contents.
8. **Commit only intentional changes.** Do not commit generated build output, logs, or local configuration unless the project explicitly requires it.

If a command fails, stop before trying random fixes. Capture the first meaningful error and compare it with the project's declared versions.

## Windows handoff

After validation, tell the Mac which branch and commit were tested. If Windows changes code or configuration, commit them on a focused branch and push them so the Mac can review them. See [WORKFLOW/README.md](../WORKFLOW/README.md).
