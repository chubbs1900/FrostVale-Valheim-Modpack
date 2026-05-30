# FrostVale Pack Architecture

FrostVale ships as **one** Thunderstore package: `FrostVale_ModPack_3`.

## Why one pack

Most FrostVale mods register networked items, pieces, and recipes through Jotunn,
or enforce version matching through ServerSync. Jotunn refuses a join whenever the
client and server modsets differ (including a client carrying an *extra* mod the
server lacks). A split client/server/solo layout drifted out of sync and broke
joins, so the packs were reunified.

The only safe ways to diverge are mods that add no networked content:
server-only ops mods, or purely cosmetic client-side mods. The maintenance cost
of tracking that correctly was not worth it for this pack, so **everything is in
one pack** and the server runs the exact same pack as players.

## Shared identity

FrostVale is Balrond-first. Balrond owns the primary progression and world
identity: nature, crafting, food, building, ships, monsters, gear, and the
survival loop. RtDOcean is intentionally narrow — ocean danger, shoreline
interest, and the rice loop — without replacing Balrond progression. QoL mods
(Azumatt, MSchmoecker, Smoothbrain, SearsCatalog, BetterUI) are part of the
design.

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
placement near shoreline water level and supports Discord-visible player-name
cleanup.

## Building

- Authoritative build (from the server workspace): `scripts/Build-Modpacks.ps1`
  in `P:\valheim`. Reads `mods/dependencies.txt`, resolves latest versions,
  re-pins, stages this repo, and zips to `dist/`.
- Standalone build (from a clone of just this repo): `scripts/Build-Packages.ps1`
  reads `dependencies/frostvale.txt` and zips the current repo contents.
