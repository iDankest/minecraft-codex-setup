# Mac Setup

The Mac is the primary workstation for editing, planning, documentation, and OpenCode-assisted changes. The current task is only to prepare this workspace and its apps; Minecraft project setup is deferred.

## Quick path

1. Read the [Windows handoff snapshot](../WINDOWS/STATUS.md).
2. Install and verify Git.
3. Install and verify OpenCode.
4. Clone this onboarding repository into a normal development folder.
5. Run the workspace verification script.
6. Keep Tailscale optional; Git is the synchronization boundary.
7. Leave Java and Minecraft setup deferred.

## Installation and verification

### Git

Install Git using the method approved for the Mac, then verify:

~~~bash
git --version
git config --global user.name "<YOUR_NAME>"
git config --global user.email "<YOUR_EMAIL>"
~~~

Use a real email only in your local Git configuration. Never put credentials or tokens in this repository. See the [Git documentation](https://git-scm.com/doc).

### OpenCode

Install OpenCode using the [official documentation](https://opencode.ai/docs/). The documented macOS options include the install script and Homebrew:

~~~bash
curl -fsSL https://opencode.ai/install | bash
~~~

~~~bash
brew install anomalyco/tap/opencode
~~~

Verify the installation:

~~~bash
opencode --version
~~~

If you use the desktop app or an IDE integration instead, open this checkout and confirm that OpenCode can read the project. OpenCode on the Mac and OpenCode on Windows have independent context and permissions.

The repository includes a project-local `opencode.json`, `AGENTS.md`, and Mac-side agent. They keep the Mac role explicit and require approval before edits or shell commands.

### Tailscale (optional)

The repository records Tailscale as optional for this first setup. If the app is already installed on the Mac, leave it available but do not make it a dependency: Git is the synchronization boundary. If you later need network access, sign in to the Tailscale app and follow [Connect to devices](https://tailscale.com/kb/1452/connect-to-devices).

### Java/JDK (deferred)

Java is not required for the current app-only setup. Do not install a JDK by habit. Install one only after a real project documents the required version and Mac-side checks.

Verify an installed JDK with:

~~~bash
java -version
javac -version
~~~

### Verify this workspace

From the root of this repository, run:

~~~bash
bash MAC/setup.sh
opencode
~~~

The verification script does not install software, configure credentials, or run Minecraft commands. If OpenCode reports a configuration problem, run `opencode debug config` from the repository root and fix the reported project configuration before continuing.

## Clone and open this workspace

Clone this onboarding repository on the Mac:

~~~bash
mkdir -p "$HOME/Code"
cd "$HOME/Code"
git clone "git@github.com:iDankest/minecraft-codex-setup.git" "minecraft-codex-setup"
cd "minecraft-codex-setup"
git status --short --branch
bash MAC/setup.sh
opencode
~~~

If this repository is already cloned, do not clone over it. Update and inspect it first:

~~~bash
cd "$HOME/Code/minecraft-codex-setup"
git pull --ff-only origin main
git status --short --branch
git remote -v
bash MAC/setup.sh
opencode
~~~

Do not paste a token into a remote URL. Use the GitHub authentication method approved for the account, and keep its credentials in the credential manager or agent rather than in documentation.

## Mac editing loop

Before starting work:

~~~bash
git status --short --branch
git pull --ff-only origin "<CURRENT_BRANCH>"
~~~

Then ask OpenCode to inspect this workspace before changing files. Keep changes small, run relevant checks, and review the diff:

~~~bash
git diff --check
git diff --stat
git status --short
~~~

Commit only intentional files. Example commit messages:

~~~text
docs(workflow): document Mac and Windows roles
feat(mod): add item registration
test(mod): cover item registration
~~~

Push only after checking the branch and commit:

~~~bash
git push -u origin "<CURRENT_BRANCH>"
~~~

For the later Minecraft project handoff rules, read [WORKFLOW/README.md](../WORKFLOW/README.md). Do not start that project workflow until its repository and project facts are available.
