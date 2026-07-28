# FrostVale ModPack 3

Balrond-first hard-survival Valheim modpack for solo worlds and dedicated
servers. A host and every player run the same pinned **shared** dependency set
so Jotunn does not reject a join because one side has extra or missing
networked mods. Dedicated-server-only utilities are documented separately and
must not be added to player profiles.

FrostVale is a complete playable pack, but it is also intended to be a strong
starting point for another community server. Install it as published, tune a
copy for your world, and share that exact r2modman/Thunderstore profile with
your players.

## What the public package includes

- The full pinned mod list needed by both the server and players.
- Curated, non-secret baseline configs for the FrostVale balance.
- The local `FrostValeCompat.dll` support plugin.
- No optional dedicated-server utilities such as WebMap.
- No world files, server address, password, admin lists, Discord credentials,
  webhook URLs, or other private host data.

The package does not create or advertise a server. Public and private hosts
provide their own world, connection details, secrets, backups, and operating
policy.

## What's inside

Prefer a visual overview? Download the
[FrostVale Mod Map](https://github.com/chubbs1900/FrostVale-Valheim-Modpack/blob/main/docs/FROSTVALE_MOD_MAP.html)
from GitHub and open it locally for an interactive, Valheim-flavored tree of
the whole pack. Thunderstore Details renders this README, so the same map is
also summarized below.

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

## Quick start for a player

1. Install Valheim through Steam.
2. Install r2modman or Thunderstore Mod Manager and select Valheim.
3. Create a new profile.
4. Search for `FrostVale_ModPack_3` and install the latest version.
5. Select **Start modded** in the manager.
6. For multiplayer, use the address and password supplied by that server's
   host.

Launching Valheim directly from Steam normally starts an unmodded session.
Always start the FrostVale profile through the mod manager.

## Share an exact multiplayer profile

A Thunderstore subscription installs the published FrostVale baseline. A
profile export also captures the host's selected mods and shareable configs at
that moment, which makes it the best handoff for a particular server.

### Server host

1. Create a clean Valheim profile in r2modman or Thunderstore Mod Manager.
2. Install `FrostVale_ModPack_3` and finish the server's configuration.
3. Test the profile against the server.
4. Open **Settings > Profile > Export profile as a code**. The exact labels can
   vary slightly between manager versions; exporting as a file is also a useful
   durable backup.
5. Send players the profile code or file separately from the server address and
   password.
6. Export a new profile whenever the dependency set or shared configs change.

Do not add dedicated-server-only utilities such as WebMap to the profile being
exported to players.

### Player

1. From the profile selector, choose **Import** and then **From code** (or import
   the profile file supplied by the host).
2. Select the imported profile and choose **Start modded**.
3. Do not add, remove, or independently update mods unless the host asks you to.
4. Keep the previous working profile until the replacement successfully joins.

Jotunn can reject clients with extra mods as well as missing mods. A profile
that merely looks similar is not enough; the server and players should use the
same dependency versions.

## Deploy a dedicated server

FrostVale is a modpack, not a turnkey world image. Server paths and startup
commands vary between Windows, Linux, Docker images, and hosting panels, but the
portable deployment model is the same:

1. Install or provision a Valheim dedicated server with BepInEx support.
2. In a clean desktop mod-manager profile, install FrostVale and launch it once
   so the dependency files are materialized.
3. In the manager, open **Settings > Locations > Browse profile folder**.
4. Stop the dedicated server and take a world/config backup.
5. Copy the profile's `BepInEx/plugins` and `BepInEx/config` contents into the
   server's corresponding BepInEx paths. Preserve their relative directories.
6. Start the server and inspect the BepInEx log for missing dependencies,
   duplicate plugin versions, config errors, and the normal world-ready marker.
7. Give players either the unchanged Thunderstore pack or, preferably, the
   tested profile export for this server.

Run the complete shared pack on the dedicated server, including entries that
look client-oriented. FrostVale intentionally avoids a separate lean server
pack because divergent networked modsets previously caused join failures.
Server-only utilities are narrow, documented overlays and are never substitutes
for the shared pack.

Keep passwords, tokens, webhook URLs, admin lists, world files, and backups out
of exported profiles. ServerSync-capable mods push authoritative host settings
when a player joins; other client settings travel only when the host includes
them in the shared profile.

## Optional WebMap server add-on

WebMap is not included in FrostVale's Thunderstore dependencies. It is designed
for a dedicated server and can stop the Valheim join flow when mistakenly
installed on a client.

When updating an existing FrostVale 3.1.6-or-earlier profile, check the
manager's **Installed** list after the update. If WebMap remains, disable or
uninstall it before launching Valheim. Creating a clean profile from FrostVale
3.1.7 or newer is the most reliable migration.

An administrator who wants a browser-based live map can install WebMap directly
on the dedicated server after deploying FrostVale. Clients must not install it,
and it must not be included in a player profile export. See
[WebMap dedicated-server setup](https://github.com/chubbs1900/FrostVale-Valheim-Modpack/blob/main/docs/WEBMAP_SERVER_SETUP.md)
for generic Windows, Linux, Docker, firewall, configuration, verification, and
upgrade instructions.

## Use FrostVale as a starting point

Server operators are welcome to fork the profile:

- Give the customized profile a distinct name.
- Change one gameplay layer at a time and test it before promotion.
- Keep the server and all clients on the same dependency set.
- Re-export the profile after every approved mod or shared-config change.
- Maintain a rollback profile and a world backup before large content changes.

Removing mods that add items, creatures, locations, or world objects can leave
references in an existing world. Test substantial ecosystem changes in a
separate world first.

## Updating an existing deployment

1. Back up the world and current working profile.
2. Update the FrostVale package in a test profile.
3. Update the dedicated server to the same pinned dependency versions.
4. Start the server and verify the world loads before inviting players.
5. Export and distribute the updated profile code or file.
6. Retire the old profile only after clients can join successfully.

If a player gets a Jotunn incompatibility message, compare the server and client
dependency sets before changing configs or the world.

## Local patch

`plugins/FrostValeCompat/FrostValeCompat.dll` keeps RtDOcean rice at shoreline
water level, supports Discord-visible player-name cleanup on the server, and
owns FrostVale's star-scaled Jewelcrafting creature gem drops.

## Maintainers

The canonical shared mod list lives in `dependencies/frostvale.txt` (generated
from the server's `mods/dependencies.txt`). Optional server utilities are
tracked outside the public manifest. Build a release zip with
`scripts/Build-Packages.ps1`. Thunderstore versions are immutable; an accepted
namespace/name/version cannot be uploaded again, even for a documentation-only
change. See `docs/PACK_ARCHITECTURE.md`.
