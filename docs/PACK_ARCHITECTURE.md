# FrostVale Pack Architecture

FrostVale ships as **one shared** Thunderstore package:
`FrostVale_ModPack_3`.

## Why one pack

Most FrostVale mods register networked items, pieces, and recipes through Jotunn,
or enforce version matching through ServerSync. Jotunn refuses a join whenever the
client and server modsets differ (including a client carrying an *extra* mod the
server lacks). A split client/server/solo layout drifted out of sync and broke
joins, so the packs were reunified.

The shared gameplay and networked modset remains identical. A dedicated server
may add a narrowly documented server-only utility when the upstream project
explicitly requires server-only installation and the plugin adds no client or
networked content. These utilities are overlays, not alternate packs.

WebMap is the current exception. Its upstream documentation says it works only
on dedicated servers and clients do not need it. Installing WebMap 2.7.1 on a
client can throw from its `ZNet.SetServer` patch and stop the join flow.
Therefore WebMap is excluded from the Thunderstore manifest and player profile
exports. See `WEBMAP_SERVER_SETUP.md`.

## Shared identity

FrostVale is Balrond-first. Balrond owns the primary progression and world
identity: nature, crafting, food, building, ships, monsters, gear, and the
survival loop. RtDOcean is intentionally narrow — ocean danger, shoreline
interest, and the rice loop — without replacing Balrond progression. QoL mods
(Azumatt, MSchmoecker, Smoothbrain, SearsCatalog, BetterUI) are part of the
design.

## Public distribution model

The Thunderstore package is a reusable public baseline, not an Eldradia server
installer. It contains the pinned dependency graph, non-secret configs, and the
local compatibility plugin, but no world, connection details, passwords, admin
lists, Discord credentials, backups, or dedicated-server-only WebMap config.

A server operator can deploy the baseline unchanged or use it to create a
named server profile. After testing, the operator should export that exact
r2modman/Thunderstore profile as a code or file and share it with players.
Every dependency or shared-config change requires a new export. The published
pack remains the reproducible starting point; the exported profile represents
one server's tested deployment. Server-only overlays must not be added to the
profile exported to players.

## Discord integration

`FiresDiscordIntegration` is in the pack but only does something on the host,
which supplies a bot token. On solo/client installs it sits idle. The token lives
only on the server and is never shipped in the pack.

## Configs

ServerSync-capable mods push their settings from the host to clients on join, so
multiplayer players automatically inherit the server's tuning. For solo parity,
the build can bundle the host's tuned `.cfg` files into the pack
(`Build-Modpacks.ps1 -BundleConfigs`), excluding any secret-bearing config. Do
this only after the live server has been rebuilt on the current list and tuned.

## Local tweaks

`FrostValeCompat.dll` is the local compatibility plugin. It keeps RtDOcean rice
placement near shoreline water level, supports Discord-visible player-name
cleanup, and owns FrostVale's star-scaled Jewelcrafting creature gem drops.

## Building

- Authoritative build (from the server workspace): `scripts/Build-Modpacks.ps1`
  in `P:\valheim`. Reads shared pinned versions from `mods/dependencies.txt`,
  stages this repo, and zips to `dist/`. It intentionally ignores
  `mods/server-optional-dependencies.txt`. Pass `-Update` only after approving a
  release that should re-pin non-core dependencies to latest Thunderstore
  versions.
- Standalone build (from a clone of just this repo): `scripts/Build-Packages.ps1`
  reads `dependencies/frostvale.txt` and zips the current repo contents.

The FrostVale server installer reads both `mods/dependencies.txt` and
`mods/server-optional-dependencies.txt`, so the live dedicated server retains
its chosen server utilities without placing them in the public manifest.

## Thunderstore release versions are immutable

Thunderstore identifies an upload by package namespace, package name, and
`manifest.json` `version_number`. Once that exact identity has been accepted,
its archive and documentation cannot be replaced by uploading another zip with
the same version.

The duplicate-version rejection is:

```text
manifest.json non_field_errors: Package of the same namespace, name and version already exists
```

When it appears:

1. Confirm the existing version on Thunderstore.
2. Increment the patch version in the authoritative and standalone builders.
3. Update `manifest.json` and add a changelog entry explaining whether
   dependencies changed or the release is documentation/packaging-only.
4. Rebuild the zip and verify its internal manifest before uploading.

Do not rename the namespace or package to work around this error, and do not
assume rebuilding a zip makes an already-published version replaceable.
