# Decisions and Open Questions

This file records the workflow decisions that should remain stable and the facts that must be confirmed before Minecraft-specific installation is finalized.

The current phase is only app and workspace setup. The Minecraft project, Java version, loader, and build commands are intentionally out of scope until that project is provided.

## Confirmed decisions

| Decision | Status | Rationale |
|---|---|---|
| Mac is the primary editing and planning machine | Confirmed | It is the main development context |
| Windows is the build, test, and Minecraft runtime machine | Confirmed | It has more power for compilation and execution |
| OpenCode is installed locally on both computers when needed | Confirmed | Local work is preferred over depending on remote desktop |
| Git is the synchronization boundary | Confirmed | Commits and branches provide an explicit, reviewable handoff |
| Two OpenCode sessions must not edit one checkout concurrently | Confirmed | Local installations do not coordinate automatically |
| Tailscale is optional for the first setup | Confirmed | The computers are together; network access is not required for Git |
| Sunshine/Moonlight is a fallback | Confirmed | Remote desktop is a later convenience, not a setup dependency |
| No Git initialization or publishing is part of this documentation task | Confirmed | Documentation must be created without changing repository hosting state |

## Required project facts

| Fact | Current value | Needed before |
|---|---|---|
| Windows edition | Microsoft Windows 11 Pro | Windows-specific installation choices |
| Minecraft version | [Minecraft version: TBD] | Loader and toolchain selection |
| Mod loader | [Fabric / Forge / NeoForge: TBD] | Loader-specific tooling and commands |
| Java/JDK version | [JDK version: TBD] | Build and runtime compatibility |
| Repository URL | `git@github.com:iDankest/minecraft-codex-setup.git` | Clone and remote configuration |
| GitHub account/owner | `iDankest` | Access and repository ownership |
| Default branch | `main` | Safe pull and branch commands |
| Minecraft project directory | [Minecraft project directory: TBD] | Windows checkout location |
| Build/test/runtime commands | [Project documentation: TBD] | First validation sequence |

## Next decisions

Before Minecraft-specific installation can be finalized, provide or confirm:

1. The Windows edition and whether the account can install developer tools.
2. The exact Minecraft version.
3. The mod loader: Fabric, Forge, or NeoForge.
4. The required Java/JDK version for that exact project.
5. The repository URL and GitHub account/owner, without sharing credentials.
6. The default branch and the preferred local project directories.
7. The project-documented commands for dependency setup, compilation, tests, and the Minecraft runtime.
8. Whether Windows ever needs Tailscale, or whether local Git and direct use are sufficient.

Do not resolve these with guessed commands. Once confirmed, update this file and the relevant setup guide together.
