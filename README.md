# FrostVale Valheim Modpacks

FrostVale is a Balrond-first, quality-of-life heavy, conversion-lite Valheim
modpack family. The goal is to keep the game feeling like Valheim while adding
new mechanics, better long-term progression, richer oceans, stronger building
tools, and smoother server administration.

All FrostVale packages share the same identity:

- Balrond is the backbone for nature, crafting, food, building, ships,
  monsters, gear, and world flavor.
- RtDOcean is used narrowly to bring oceans and shoreline play to life.
- Azumatt, MSchmoecker, Smoothbrain, SearsCatalog, BetterUI, and related mods
  provide quality-of-life, skills, UI, storage, crafting, and building support.
- FrostVale local tweaks may be added over time to clean up world generation
  and content interactions as the pack is played.

## Which Pack Should I Install?

| If you are... | Install this | Package folder |
| --- | --- | --- |
| Playing solo or single-player | `FrostVale_ModPack_3` | `packages/solo/FrostVale_ModPack_3` |
| Joining a FrostVale hosted multiplayer server | `FrostVale_ClientPack_3` | `packages/client/FrostVale_ClientPack_3` |
| Hosting a FrostVale multiplayer server | `FrostVale_ServerPack_3` | `packages/server/FrostVale_ServerPack_3` |

## Package Roles

### FrostVale_ModPack_3

The solo package is for single-player. It keeps the FrostVale gameplay, QoL,
UI, Balrond, RtDOcean, and local compatibility tweaks, but omits Discord server
operations, VOIP, and multiplayer networking helpers that are only useful for a
hosted server setup.

### FrostVale_ClientPack_3

The client package is for players joining a FrostVale hosted server. It keeps
the gameplay, UI, QoL, VOIP, and networking helpers needed to join and play,
while leaving Discord operations and secrets on the server side.

### FrostVale_ServerPack_3

The server package is for dedicated-server hosts. It includes server operations,
Discord integration, networking/performance helpers, config-sync/enforcement
mods, and the FrostVale compatibility plugin. Discord credentials, passwords,
world saves, and generated live configs are not bundled.

## Repository Layout

- `packages/solo/FrostVale_ModPack_3`: Thunderstore source for solo play.
- `packages/client/FrostVale_ClientPack_3`: Thunderstore source for players.
- `packages/server/FrostVale_ServerPack_3`: Thunderstore source for hosts.
- `dependencies`: source dependency lists used to generate package manifests.
- `docs`: shared architecture, tuning, and setup notes.
- `scripts/Build-Packages.ps1`: rebuilds manifests and local upload zips.

Generated upload zips are written to `dist/` and are intentionally not tracked
by git.

## Build Upload Zips

Run from the repo root:

```powershell
.\scripts\Build-Packages.ps1
```

The script regenerates `manifest.json` for each package and writes Thunderstore
upload zips to `dist/`.

## Shared Docs

- `docs/PACK_ARCHITECTURE.md`
- `docs/DISCORD_SETUP.md`
