# Safe Two-Computer Workflow

Use Git as the boundary between the Mac and Windows workspaces. Each computer has its own local checkout; neither computer edits the other computer's working tree.

## Roles

| Computer | Primary responsibility | Typical outcome |
|---|---|---|
| Mac | Edit, plan, review, document, coordinate Codex work | Small branch and pushed commit |
| Windows | Compile, test, launch Minecraft, inspect runtime behavior | Validation result or focused fix commit |

Both machines may run Codex locally, but the agents do not share context, locks, or awareness. **Never have both agents edit the same checkout at the same time.** Tailscale can connect machines; it does not coordinate agents or replace Git.

## Daily happy path

### 1. Mac starts a change

~~~bash
git status --short --branch
git pull --ff-only origin "<DEFAULT_BRANCH>"
git switch --create "work/mac-plan-<topic>"
~~~

Ask Codex to inspect the current project first. Make one small change, run relevant checks, inspect the diff, and commit:

~~~bash
git diff --check
git diff --stat
git add "<INTENTIONAL_FILE>"
git commit -m "<type>(<scope>): <outcome>"
git push -u origin "work/mac-plan-<topic>"
~~~

### 2. Windows consumes the change

Use a separate local checkout. Do not copy an uncommitted working directory from the Mac.

~~~powershell
Set-Location "<MINECRAFT_PROJECT_DIRECTORY>"
git status --short --branch
git fetch origin
git switch "work/mac-plan-<topic>"
git pull --ff-only origin "work/mac-plan-<topic>"
~~~

Run the project-documented build, test, and Minecraft runtime checks. Report the exact branch, commit, commands, and results.

### 3. Windows returns a result

- If validation passes, tell the Mac the commit is tested.
- If Windows needs a code or configuration fix, create a focused branch such as "work/windows-fix-<topic>", commit it, and push it.
- If the change is only local experimentation, do not commit it; record the result and clean the checkout before switching tasks.

## Suggested branch names

- "work/mac-plan-<topic>" — Mac-led implementation or planning slice
- "work/windows-test-<topic>" — Windows-only validation or test work
- "work/windows-fix-<topic>" — focused Windows-discovered fix
- "docs/onboarding-workflow" — this documentation set

Use the repository's existing branch convention if it has one. Do not assume the default branch is named "main"; confirm [Default branch: TBD] first.

## Safe synchronization rules

### Before pulling

~~~bash
git status --short --branch
git diff --check
~~~

If there are uncommitted changes, stop and decide whether to commit them, set them aside using the team's approved process, or discard them intentionally. Do not pull over unknown work.

### Prefer fast-forward-only updates

~~~bash
git fetch origin
git pull --ff-only origin "<CURRENT_BRANCH>"
~~~

If this fails because histories diverged, stop. Inspect the branch and coordinate which commit should be kept. Do not use "git reset --hard", force-push, or delete branches as a first response.

### Before pushing

~~~bash
git status --short --branch
git log -1 --oneline
git diff "<DEFAULT_BRANCH>...HEAD" --stat
git push -u origin "<CURRENT_BRANCH>"
~~~

Push only the intended branch. Never put credentials in a remote URL or commit them to the repository.

## Commit examples

Use conventional, outcome-focused messages:

~~~text
docs(workflow): document two-computer handoff
feat(mod): add item registration
fix(mod): handle missing configuration value
test(mod): cover item registration
~~~

One commit should represent one reviewable work unit. Keep its relevant documentation and tests with the change they explain. Do not add AI attribution or Co-Authored-By lines.

## When a conflict or unexpected state appears

1. Stop editing.
2. Run "git status" and save the output without secrets.
3. Do not run destructive recovery commands from memory.
4. Identify the last known good commit and the active branch.
5. Coordinate one person to resolve the state.
6. Re-run the relevant checks before handing the branch to the other computer.

## Remote desktop fallback

Sunshine/Moonlight can be added later if switching keyboards and displays becomes inconvenient. It is not needed for the first setup and should not be the synchronization mechanism. Establish local Codex installations and Git first; add remote desktop only for convenience.
