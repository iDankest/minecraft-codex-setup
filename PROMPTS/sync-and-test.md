# Prompt: Safe Sync and Test

Copy and adapt this prompt when a branch moves between machines:

~~~text
Synchronize and validate the current project safely on this computer.

Context:
- Mac edits and plans; Windows builds, tests, and runs Minecraft.
- Each computer has its own local checkout.
- Git is the only synchronization boundary for project changes.
- Current branch expected: <CURRENT_BRANCH>
- Default branch: <DEFAULT_BRANCH_OR_TBD>
- Minecraft version: <MINECRAFT_VERSION_OR_TBD>
- Mod loader: <FABRIC_FORGE_NEOFORGE_OR_TBD>
- JDK version: <JDK_VERSION_OR_TBD>

Before changing files or running project tasks:
1. Inspect the current directory, Git status, branch, remotes, recent commit, README, build files, wrapper files, version properties, scripts, and .gitignore.
2. Report whether the working tree is clean and whether the current branch matches the expected branch.
3. State assumptions and propose a short plan.
4. If local changes exist, histories diverge, the branch is wrong, or a required version is unknown, stop and report the condition. Do not guess or use destructive recovery commands.

After the plan is accepted:
- Fetch the intended remote branch and use a fast-forward-only update.
- Use the project-documented build, test, and Minecraft runtime commands only; do not invent a loader-specific command.
- Make only small, necessary changes. Keep generated output and local secrets out of Git.
- Run relevant checks and capture the first meaningful failure if a check fails.
- Do not push, publish, force-push, or modify credentials without explicit approval.

Finish with:
- the commit and branch validated;
- every changed file;
- every command run and its result;
- build/test/runtime results;
- blockers, skipped checks, and why;
- the exact next Git handoff step.
~~~
