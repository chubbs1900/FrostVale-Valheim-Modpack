# FrostVale ServerPack 3 Changelog

## 1.0.0

- Created the dedicated server package separate from the player/client package.
- Added Thunderstore-facing package copy for hosts looking for a
  quality-of-life, conversion-lite Valheim server experience.
- Documented the Balrond-first identity with RtDOcean as a narrow ocean-life
  layer.
- Added bundled Discord setup notes for `FiresDiscordIntegration`.
- Preserved the full server dependency list from `mods/dependencies.txt`.
- Included server-only Discord operations dependencies that are omitted from
  `FrostVale_ClientPack_3`.
- Preserved `Balrond-balrond_amazing_nature-1.2.4` and
  `Soloredis-RtDOcean-2.2.21`.
- Removed `Azumatt-AzuHoverStats-1.1.9` from the server package because it is
  documented as client-only and not needed on a server.
- Bundles `plugins/FrostValeCompat/FrostValeCompat.dll`.
