# Changelog

## 3.1.7 - Client join fix and server-only WebMap guide

- Removed `Zevaryx-WebMap-2.7.1` from the shared Thunderstore dependency set,
  reducing the public pack from 52 to 51 dependencies.
- Fixed a client join blocker in which WebMap's dedicated-server
  `ZNet.SetServer` patch threw a `NullReferenceException` from the server
  browser.
- Kept all gameplay and networked mod versions unchanged from 3.1.6.
- Added a generic WebMap deployment guide for administrators who choose to run
  it as an optional dedicated-server-only utility.
- Excluded WebMap's server URL and config from client packages and profile
  exports.
- Existing profiles should disable or uninstall an orphaned WebMap entry after
  updating; a clean 3.1.7 profile is the safest migration.

## 3.1.6 - Public deployment guide

- Repackaged the same tested 52-mod dependency set as 3.1.5; no mod versions or
  gameplay settings changed.
- Expanded the public deployment guide for solo players, dedicated-server
  hosts, profile-code sharing, updates, forks, and rollback.
- Refreshed the mod map and ecosystem notes to match the current mainline.
- Documented Thunderstore's immutable package-version rule and the required
  patch-version bump after a version has already been uploaded.

## 3.1.5 - Balrond ocean maintenance

- Updated Jotunn from 2.29.1 to 2.29.2.
- Updated Balrond Amazing Nature from 1.3.6 to 1.3.8 and Monster Mayhem from
  0.3.4 to 0.3.7.
- Updated RtDOcean from 2.2.35 to 2.2.38 and Dive In from 1.1.4 to 1.1.9.
- Rebuilt the single shared server/client pack so the server and players stay
  on one identical FrostVale modset.

## 3.1.4 - Balrond ocean polish

- Updated Balrond Amazing Nature from 1.3.1 to 1.3.6, Shipyard from 1.6.5
  to 1.6.6, and Monster Mayhem from 0.3.2 to 0.3.4.
- Updated RtDOcean from 2.2.27 to 2.2.35 and Dive In from 1.1.1 to 1.1.4.
- Rebuilt the single shared server/client pack so the server and players stay
  on one identical FrostVale modset.

## 3.1.3 - Balrond and ocean updates

- Updated Jotunn from 2.29.0 to 2.29.1.
- Updated Balrond Runerails from 1.0.6 to 1.0.8, Constructions from 1.4.0
  to 1.4.1, Furniture Reborn from 1.2.5 to 1.2.6, Amazing Nature from
  1.2.7 to 1.3.1, and Monster Mayhem from 0.2.4 to 0.3.2.
- Updated RtDOcean from 2.2.23 to 2.2.27 and Dive In from 1.0.6 to 1.1.1.
- Rebuilt the single shared server/client pack so FrostVale joins continue to
  use one identical modset.

## 3.1.2 - Manual release workflow

- Rebuilt the pack against the current latest Thunderstore dependency set; no
  dependency versions changed from 3.1.1.
- Release builds now stay pinned by default. Maintainers audit updates first and
  use the authoritative server builder's explicit update mode only for approved
  dependency bumps.

## 3.1.1 - Gem economy and road tuning

- Disabled Jewelcrafting world gemstone formations and built-in creature gem
  drops; FrostValeCompat now owns star-scaled Jewelcrafting creature gem drops.
- CLLC remains capped at five stars, with creature effects, elemental
  infusions, and boss special effects disabled.
- Added `Nextek-SpeedyPaths` with modest server-authoritative path, structure,
  and stamina bonuses.
- Bundled the tuned non-secret server configs into the pack so solo/client
  installs start from the same Jewelcrafting, CLLC, SpeedyPaths, and
  FrostValeCompat settings.
- Auto-repinned non-core dependencies during build:
  `Balrond-balrond_amazing_nature` 1.2.7, `Soloredis-RtDOcean` 2.2.23, and
  `sighsorry-Dive_In` 1.0.6.

## 3.1.0 - Reunified into a single pack

- **Fixed joins:** players were running the old 48-mod solo pack against the
  lean 21-mod server. Jotunn rejected them ("Client loaded additional mod:
  ValheimRAFT / MultiUserChest / ItemHopper ... Disconnecting modded client with
  incompatible version"). Root cause was modset drift between the split packs.
- **Retired the client/server/solo split.** There is now ONE pack,
  `FrostVale_ModPack_3`, that the server and every client install. Identical
  modsets mean Jotunn mod-compatibility can no longer block a join.
- Canonical set = the full FrostVale content list, plus:
  - added `ValheimModding-JsonDotNET` (shared library the server had but the
    client pack was missing), and
  - included `VerdantsAscent-FiresDiscordIntegration` in the one pack (idle on
    clients; only the host configures a bot token).
- Build tooling now keeps release builds pinned by default; maintainers audit
  updates first and use the authoritative server builder's explicit update mode
  only for approved dependency bumps.
- Bundles `FrostValeCompat.dll` for RtDOcean rice water-level enforcement and
  Discord-visible player-name cleanup.

## 3.0.7

- (Retired split) Client pack trimmed for the Eldradia playthrough.

## 3.0.6

- (Retired split) Last build of the separate solo/client/server packs.
