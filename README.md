# FrostVale ModPack 3

Balrond-first hard-survival Valheim modpack. **One pack for everything** — solo
play, and joining the Eldradia dedicated server. Server and clients run the same
pack, so Jotunn mod-compatibility never blocks a join.

## What's inside

Prefer a visual overview? Open the
[FrostVale Mod Map](docs/FROSTVALE_MOD_MAP.html) for an interactive,
Valheim-flavored tree of the whole pack. Thunderstore Details renders this
README, so the same map is also summarized below.

- **Balrond** backbone: progression, crafting, food, building, ships, monsters,
  and gear identity.
- **RtDOcean** for ocean danger and the shoreline rice loop (kept in a narrow
  role by the bundled `FrostValeCompat.dll`).
- **TheFisher**, **Spearfishing**, and **Dive In** for fishing and water travel.
- **Smoothbrain** skills (Jewelcrafting, Farming, Foraging, Building, Sailing,
  Ranching, Exploration, Backpacks, CLLC, Darwin Awards).
- **SpeedyPaths** with modest server-synced road and structure bonuses.
- **ValheimRAFT** for large naval builds, **OdinPlus** potions/food.
- QoL: **SearsCatalog**, **Azumatt** suite, **MSchmoecker** chests/hoppers,
  **BetterUI**, **CookieMilk** books/mail.
- **FiresDiscordIntegration** ships in the pack so the host can run Discord ops;
  it sits idle for solo players (no bot token = nothing happens).

## FrostVale Mod Map

### Core libraries

The loader and shared foundations every other branch stands on.

- **BepInExPack Valheim** - plugin loader for Valheim.
- **JsonDotNET** - shared JSON library.
- **Jotunn** - Valheim modding library and networked content gatekeeper.

### Balrond backbone

The main FrostVale identity: progression, world content, construction, ships,
monsters, gear, and survival pressure.

- **Balrond Runerails** - rune-themed rails and infrastructure pieces.
- **Balrond Constructions** - primary building and construction expansion.
- **Balrond Furniture Reborn** - home, hall, and settlement furnishing pieces.
- **Balrond Amazing Nature** - world nature and environmental identity.
- **Balrond Painting Frame** - decorative painting and frame content.
- **Balrond Wind Chasers** - wind, exploration, and travel-flavored content.
- **Balrond Shipyard** - primary crafted ship progression.
- **Balrond Humanoid Randomizer** - variety and pressure for humanoid encounters.
- **Balrond Monster Mayhem** - core monster expansion for hard survival.
- **Balrond Arsenal Reborn** - main weapons and gear branch.
- **Balrond Second Chance** - survival recovery and comeback mechanics.
- **Balrond Hearth Marks** - settlement and hearth-themed utility.

### Smoothbrain skills / light progression

Player growth, combat rarity, professions, and travel practice without replacing
Balrond.

- **Jewelcrafting** - socketed progression and gem reward economy.
- **Creature Level and Loot Control** - creature stars and encounter pressure.
- **Farming** - skill progression for cultivation.
- **Exploration** - skill reward for scouting and range.
- **Sailing** - skill support for FrostVale's ocean travel loop.
- **Foraging** - skill progression for gathering wild resources.
- **Building** - skill progression for construction work.
- **Darwin Awards** - risk and consequence flavor for dangerous play.
- **Backpacks** - carry support for expedition logistics.
- **Ranching** - skill layer for animals and homestead labor.

### Ocean / fishing / water travel

Sea danger, fishing depth, spearfishing, and diving for expedition routes.

- **TheFisher** - fishing content, ocean interest, and aquatic discoveries.
- **RtDOcean** - ocean creature danger and shoreline rice support.
- **Spearfishing** - hands-on fish hunting and water interaction.
- **Dive In** - diving and swimming behavior owner.

### Potions / food / consumables

Preparation tools for longer trips, harder fights, and stocked halls.

- **PotionPlus** - expanded potions and consumable planning.
- **Odins Food Barrels** - food storage and settlement utility.

### Ships / vehicles

Large-scale naval building as a special FrostVale feature beside Balrond
Shipyard.

- **ValheimRAFTBETA** - large custom raft and shipbuilding fantasy.

### Build menu / crafting / storage QoL

The workshop layer: menus, storage reach, repair, inventory, config access, and
repeated camp chores.

- **SearsCatalog** - build menu support for large content packs.
- **AzuMiscPatches** - assorted QoL and behavior polish.
- **AzuAreaRepair** - area repair for settlement upkeep.
- **AzuWorkbenchTweaks** - workstation and repair tuning.
- **AzuCraftyBoxes** - craft and build from nearby containers.
- **AzuExtendedPlayerInventory** - inventory expansion for expedition loadouts.
- **AzuAutoStore** - automatic sorting into nearby storage.
- **AzuHoverStats** - useful stats in hover text.
- **Build Camera Custom Hammers Edition** - better building placement camera.
- **AAA Crafting** - crafting interface and utility improvements.
- **Azus UnOfficial ConfigManager** - in-game configuration access.
- **SaveCrossbowState** - keeps crossbow state through normal play flow.
- **MultiUserChest** - shared chest access for multiplayer bases.
- **ItemHopper** - storage automation and item movement.

### In-game books / mail

Lore, messages, and server storytelling tools inside the world.

- **ReadMe** - books and readable player-facing notes.
- **YouGotMail** - mail and message delivery.

### UI

Readable interfaces and movement feedback that support everyday play.

- **BetterUI ForeverMaintained** - client-facing UI clarity and presentation.
- **SpeedyPaths** - server-synced road, structure, and stamina bonuses.

### Server operations

Host-side operations support that ships idle for solo players.

- **FiresDiscordIntegration** - Discord operations on the host when configured.

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
water level, supports Discord-visible player-name cleanup on the server, and
owns FrostVale's star-scaled Jewelcrafting creature gem drops.

## Maintainers

The canonical mod list lives in `dependencies/frostvale.txt` (generated from the
server's `mods/dependencies.txt`). Build a release zip with
`scripts/Build-Packages.ps1`. See `docs/PACK_ARCHITECTURE.md`.
