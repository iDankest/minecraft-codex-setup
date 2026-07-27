# Prompt: Windows Setup and Minecraft Toolchain

Copy and adapt this prompt in the Windows checkout:

~~~text
You are helping prepare the Windows desktop as the build, test, and Minecraft runtime workstation.

Known workflow:
- The Mac is the primary editing and planning machine.
- This Windows checkout is independent; another Codex session may exist on the Mac.
- Git commits, branches, fetch, and pull are the synchronization boundary.
- Never edit the same checkout concurrently from two Codex sessions.

Project facts:
- Windows edition: <WINDOWS_EDITION_OR_TBD>
- Minecraft version: <MINECRAFT_VERSION_OR_TBD>
- Mod loader: <FABRIC_FORGE_NEOFORGE_OR_TBD>
- Required JDK: <JDK_VERSION_OR_TBD>
- Current branch: <CURRENT_BRANCH>

Before changing anything:
1. Inspect the current working directory, Git status, current branch, remotes, project README, build files, wrapper files, version properties, scripts, and .gitignore.
2. Verify the active Java/JDK version and compare it with the project's declared requirement.
3. State the facts found, assumptions, risks, and a small proposed plan.
4. Do not invent a loader-specific command. Use only commands documented by the project or discoverable from an existing wrapper and its documentation.

Then, stop and wait for my explicit approval. Only after I approve the plan:
- Make the smallest useful setup or configuration change.
- Avoid credentials, tokens, private IPs, .env contents, and machine-specific secrets.
- Do not delete files, reset the branch, force-push, or overwrite local work.
- Run the relevant documented build, test, or runtime checks.
- If a required fact is missing, stop and ask instead of guessing.

Finish with:
- assumptions and unresolved decisions;
- every changed file;
- every command run and its result;
- the exact build/test/runtime command used, if any;
- logs or errors summarized without secrets;
- the next safe handoff step to the Mac.
~~~
