# Codex Prompt Library

These prompts are reusable starting points, not permission to make unreviewed changes. Paste them into the Codex session opened in the relevant local checkout.

## Shared rules for every prompt

Each prompt requires Codex to:

1. Inspect the current project and Git state before changing files.
2. State assumptions and unknowns before acting.
3. Avoid secrets, credentials, private IPs, tokens, and .env contents.
4. Make the smallest useful change.
5. Run relevant checks without inventing loader-specific commands.
6. Report changed files, commands, results, and blockers.

If the working tree is not clean, the requested branch is unclear, or the project facts are missing, Codex should stop and ask for clarification rather than guessing. Never ask two local Codex sessions to edit the same checkout concurrently.

## Prompt index

| Prompt | Use on | Purpose |
|---|---|---|
| [mac-setup.md](mac-setup.md) | Mac | Inspect and prepare the editing/planning workstation |
| [windows-setup.md](windows-setup.md) | Windows | Inspect and prepare the build/test/runtime workstation |
| [sync-and-test.md](sync-and-test.md) | Either, usually Windows | Synchronize a branch and validate it safely |

## How to use a prompt

- Replace placeholders such as "<CURRENT_BRANCH>" and "<MINECRAFT_PROJECT_DIRECTORY>" before pasting.
- Give Codex one bounded task at a time.
- Review its plan before allowing file changes.
- Review the diff and the reported checks before committing.
- Keep installation credentials outside prompts and documentation.
