# FrostVale ClientPack 3 Changelog

## 3.0.6

- Created the separate `FrostVale_ClientPack_3` package identity for players.
- Preserved `Balrond-balrond_amazing_nature-1.2.4`.
- Preserved `Soloredis-RtDOcean-2.2.21`.
- Removed server-only Discord operations dependencies from the client pack:
  `ValheimModding-JsonDotNET-13.0.4` and
  `VerdantsAscent-FiresDiscordIntegration-1.0.1`.
- Kept gameplay, UI, VOIP, and networking helper dependencies required for
  normal client play.

## 3.0.5

- Added `Smoothbrain-CreatureLevelAndLootControl-4.6.4` for the first capped global hard-mode trial.
- Added bundled `plugins/FrostValeCompat/FrostValeCompat.dll` to enforce RtDOcean rice planting near water level.
- Server trial config uses boss-kill progression, normal-creature stars capped at 3, modest creature effects/infusions, and low loot inflation.
- Added admin/QoL verification coverage for extra inventory row, workbench auto-repair, 30m craft-from-container range, protected-location building, and tight placement.
- Expanded the README with the FrostVale pack identity, core mod roles, hard-survival focus, and ongoing tuning philosophy.

## 3.0.4

- Replaced `blacks7ar-WieldEquipmentWhileSwimming-1.1.3` with `sighsorry-Dive_In-1.0.5` for Trial A water/naval movement testing.
- Replaced `Marlthon-SeaAnimals-0.3.6` with `Soloredis-RtDOcean-2.2.21` so Trial A tests Dive In against RtD ocean creatures/config behavior.
- Keeps TheFisher, Spearfishing, Sailing, Balrond Shipyard, and ValheimRAFT in the sea loop for comparison.

## 3.0.3

- Added `zolantris-ValheimRAFTBETA-4.3.0` for beta ValheimRAFT vehicle/raft building.
- Added `blacks7ar-WieldEquipmentWhileSwimming-1.1.3` for swimming and diving equipment QoL.

## 3.0.2

- Removed `Balrond-balrond_amazing_nature_resource`; the full Amazing Nature package remains installed and provides the active gameplay content.
- Avoids duplicate Balrond Amazing Nature resource AssetBundle startup errors in client logs.

## 3.0.1

- Added `ValheimModding-JsonDotNET-13.0.4` for FiresDiscordIntegration runtime support.

## 3.0.0

- Created the new `FrostVale_ModPack_3` package identity.
- Rebuilt the client dependency list from the current FrostVale dedicated server profile.
- Pinned all dependencies to the tested versions.
- Added `ValheimModding-JsonDotNET` for Discord integration runtime support.
- Added the new FrostVale ModPack 3 package artwork.
- Kept server secrets, Discord webhooks, and bot tokens out of the client package.
