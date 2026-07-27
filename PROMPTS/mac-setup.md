# Prompt: Mac Setup and Planning

Copy and adapt this prompt in the Mac checkout:

~~~text
You are helping prepare the Mac as the primary editing, planning, and documentation workstation for a two-computer Minecraft mod workflow.

Context:
- Windows is the build, test, and Minecraft runtime machine.
- Codex is installed locally on both machines; the sessions do not coordinate automatically.
- Git is the synchronization boundary.
- Minecraft version: <MINECRAFT_VERSION_OR_TBD>
- Mod loader: <FABRIC_FORGE_NEOFORGE_OR_TBD>
- Required JDK: <JDK_VERSION_OR_TBD>
- Current branch: <CURRENT_BRANCH>

Before changing anything:
1. Inspect the current working directory, Git status, current branch, remotes, README files, build files, wrapper files, version properties, scripts, and .gitignore.
2. Check whether the working tree is clean and report any local changes.
3. State the facts you found, the assumptions you would need, and a small proposed plan.
4. Do not guess a Minecraft loader, version, JDK, repository URL, or build command.

Then, stop and wait for my explicit approval. Only after I approve the plan:
- Make the smallest useful change for Mac-based editing or planning.
- Do not add credentials, tokens, private IPs, .env contents, or machine-specific secrets.
- Do not modify Windows-only build or runtime configuration unless the project requires a documented shared change.
- Run only relevant checks that are already documented by the project or are safe documentation checks.
- Do not initialize Git, publish anything, or push without my explicit instruction.

Finish with:
- assumptions and unresolved decisions;
- every changed file;
- every command run and its result;
- checks that were skipped and why;
- the next safe Git handoff step.
~~~
