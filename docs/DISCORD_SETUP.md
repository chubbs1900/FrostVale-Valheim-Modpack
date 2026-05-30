# FrostVale Discord Setup

`FrostVale_ServerPack_3` includes `FiresDiscordIntegration`, but Discord is not
plug and play. Hosts must configure their own Discord bot, webhook URLs, channel
IDs, and permissions after installing the server package.

Do not commit, publish, or share bot tokens, webhook URLs, server passwords, or
generated live configs.

## What You Need

- A Discord server where you have admin permissions.
- A Discord bot token.
- One or more Discord webhook URLs.
- The Discord server ID.
- Channel IDs for chat, status, client logs, and admin messages.
- Admin Discord user IDs if you want reaction-based admin controls.

## Suggested Channel Layout

- `frostvale-events`: joins, leaves, deaths, server start/stop, summaries.
- `frostvale-chat`: in-game chat relay.
- `frostvale-admin`: client log snapshots, anti-cheat, and server manager
  controls.

## Bot Permissions

Recommended permissions:

- View Channels
- Send Messages
- Read Message History
- Add Reactions
- Manage Messages

Enable Message Content Intent if you want Discord-to-Valheim chat relay.

## First Boot Check

After configuration, restart the server and watch the BepInEx/server log.

Confirm:

- `FiresDiscordIntegration` loads.
- No bot authentication errors appear.
- Server status posts to Discord.
- Chat relay works if enabled.
- Client log snapshots post only where expected.
