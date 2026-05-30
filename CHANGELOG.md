# Changelog

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
- Build now auto-pulls the latest Thunderstore version of each mod on rebuild
  (BepInEx and Jotunn stay pinned for stability unless `-NoPin` is passed).
- Bundles `FrostValeCompat.dll` for RtDOcean rice water-level enforcement and
  Discord-visible player-name cleanup.

## 3.0.7

- (Retired split) Client pack trimmed for the Eldradia playthrough.

## 3.0.6

- (Retired split) Last build of the separate solo/client/server packs.
