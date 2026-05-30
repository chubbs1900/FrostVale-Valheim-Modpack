# FrostVale Pack Architecture

FrostVale is organized as three related Thunderstore packages.

## Shared Identity

FrostVale is Balrond-first. Balrond owns the primary progression and world
identity: nature, crafting, food, building, ships, monsters, gear, and the
overall survival loop.

RtDOcean is intentionally narrow. It adds ocean danger, shoreline interest, and
water travel flavor without replacing Balrond as the main progression backbone.

Quality-of-life mods are part of the design, not an afterthought. Azumatt,
MSchmoecker, Smoothbrain, SearsCatalog, BetterUI, and similar support mods are
used to make long-term play more pleasant while keeping survival pressure.

## Package Differences

- `FrostVale_ModPack_3`: solo/single-player. No Discord operations, VOIP, or
  multiplayer networking helpers.
- `FrostVale_ClientPack_3`: player package for joining a hosted server. Includes
  gameplay, UI, QoL, VOIP, and networking helpers.
- `FrostVale_ServerPack_3`: host package. Includes server operations, Discord
  integration, networking/performance helpers, config-sync/enforcement mods, and
  server documentation.

## Local Tweaks

`FrostValeCompat.dll` is the local compatibility plugin. The first tweak keeps
RtDOcean rice placement near shoreline water level so world/content behavior
fits the intended wetland loop.

More focused world-generation and content tweaks may be added after playtesting.
