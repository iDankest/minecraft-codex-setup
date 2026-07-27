# Mac Setup

The Mac is the primary workstation for editing, planning, documentation, and OpenCode-assisted changes. The Windows desktop is the authoritative machine for Minecraft compilation, tests, and runtime.

## Quick path

1. Confirm the [unknown project decisions](../DECISIONS.md#next-decisions).
2. Verify Git.
3. Install and verify OpenCode.
4. Keep Tailscale available, but treat it as optional for this local setup.
5. Clone the project into a normal development folder.
6. Create a focused branch before editing.
7. Push small commits for Windows to consume.

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

Tailscale is already installed on the Mac. For this first setup, do not make it a dependency: the computers are together and Git is the synchronization boundary. If you later need network access, sign in to the Tailscale app and follow [Connect to devices](https://tailscale.com/kb/1452/connect-to-devices). Install it on Windows only if a specific network use case requires it.

### Java/JDK

The Mac does not need to run the Minecraft build in the recommended workflow. Install a JDK here only if the project will also be built or tested locally. The required version is still unknown: [JDK version: TBD].

Verify an installed JDK with:

~~~bash
java -version
javac -version
~~~

Do not select a JDK by habit. Confirm compatibility from the project files and the chosen Minecraft loader/version first.

### Verify this workspace

From the root of this repository, run:

~~~bash
bash MAC/setup.sh
opencode
~~~

The verification script does not install software, configure credentials, or run Minecraft commands. If OpenCode reports a configuration problem, run `opencode debug config` from the repository root and fix the reported project configuration before continuing.

## Clone and prepare the project

Replace placeholders before running commands:

~~~bash
mkdir -p "$HOME/Code"
cd "$HOME/Code"
git clone "<REPOSITORY_URL>" "<PROJECT_DIRECTORY>"
cd "<PROJECT_DIRECTORY>"
git status --short --branch
git switch --create "work/mac-plan-<topic>"
~~~

If the project is already cloned, do not clone over it. Inspect it first:

~~~bash
cd "<PROJECT_DIRECTORY>"
git status --short --branch
git remote -v
~~~

Do not paste a token into a remote URL. Use the GitHub authentication method approved for the account, and keep its credentials in the credential manager or agent rather than in documentation.

## Mac editing loop

Before starting work:

~~~bash
git status --short --branch
git pull --ff-only origin "<CURRENT_BRANCH>"
~~~

Then ask OpenCode to inspect the current project before changing files. Keep changes small, run relevant checks, and review the diff:

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

For the complete handoff rules, read [WORKFLOW/README.md](../WORKFLOW/README.md).
