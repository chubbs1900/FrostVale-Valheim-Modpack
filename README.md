# FrostVale ModPack 3

Balrond-first hard-survival Valheim modpack. **One pack for everything** — solo
play, and joining the Eldradia dedicated server. Server and clients run the same
pack, so Jotunn mod-compatibility never blocks a join.

## What's inside

- **Balrond** backbone: progression, crafting, food, building, ships, monsters,
  and gear identity.
- **RtDOcean** for ocean danger and the shoreline rice loop (kept in a narrow
  role by the bundled `FrostValeCompat.dll`).
- **TheFisher**, **Spearfishing**, and **Dive In** for fishing and water travel.
- **Smoothbrain** skills (Jewelcrafting, Farming, Foraging, Building, Sailing,
  Ranching, Exploration, Backpacks, CLLC, Darwin Awards).
- **ValheimRAFT** for large naval builds, **OdinPlus** potions/food.
- QoL: **SearsCatalog**, **Azumatt** suite, **MSchmoecker** chests/hoppers,
  **BetterUI**, **CookieMilk** books/mail.
- **FiresDiscordIntegration** ships in the pack so the host can run Discord ops;
  it sits idle for solo players (no bot token = nothing happens).

## Install (solo or to join Eldradia)

1. Install Valheim through Steam.
2. Install r2modman (or Thunderstore Mod Manager) and select Valheim.
3. Search for `FrostVale_ModPack_3` and install the latest version.
4. Launch Valheim **from r2modman**, not directly from Steam.

### Joining Eldradia

The server is not public-listed — use **Direct Connect**:

- Server name: `Eldradia`
- Address: `<host address>:2456`
- Crossplay: off
- Portals are disabled; maps are enabled.

The host owns gameplay/config for ServerSync-capable mods; those settings push to
your client automatically on join.

## Local patch

`plugins/FrostValeCompat/FrostValeCompat.dll` keeps RtDOcean rice at shoreline
water level and supports Discord-visible player-name cleanup on the server.

## Maintainers

The canonical mod list lives in `dependencies/frostvale.txt` (generated from the
server's `mods/dependencies.txt`). Build a release zip with
`scripts/Build-Packages.ps1`. See `docs/PACK_ARCHITECTURE.md`.
