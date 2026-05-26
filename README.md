# FrostVale ModPack 3

FrostVale ModPack 3 is the new client dependency pack for the FrostVale dedicated Valheim server.

Install this package when joining the current FrostVale server. It mirrors the server's tested r2modman profile with exact pinned dependency versions.

## Server Rules

- Portals are disabled on the server.
- Maps are enabled.
- The server owns gameplay and ServerSync-capable mod configs.
- Clients should install the modpack dependencies; server secrets and server-only config are not distributed here.

## Installation

1. Install Valheim.
2. Install r2modman.
3. Search for `FrostVale_ModPack_3`.
4. Install version `3.0.0` or newer.
5. Launch Valheim through r2modman, not directly through Steam.
6. Use Direct Connect for the FrostVale server details provided by the host.

## Version 3.0.0

- Rebuilt against the current FrostVale dedicated server profile.
- Updated the dependency list to the 51 pinned packages used by the server.
- Moved config ownership to the server for ServerSync-capable mods.
- Includes Discord integration dependencies, but Discord webhooks and bot tokens are server-side only.
- Publishes under a new package identity because the original Thunderstore package can no longer be maintained by the current host.

## Notes

Mods can break after Valheim updates. Back up worlds and profiles before changing modpack versions.

The FrostVale dedicated server is not configured as a public server-browser listing. Ask the host for the current address and password.
