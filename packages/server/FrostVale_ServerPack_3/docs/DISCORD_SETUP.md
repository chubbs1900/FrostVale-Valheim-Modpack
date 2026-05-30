# FrostVale Discord Setup

FrostVale ServerPack 3 includes `FiresDiscordIntegration`, but the host must
configure Discord after installing the pack.

Do not put bot tokens, webhook URLs, or private server values into a published
modpack.

## What You Need

- A Discord server where you have admin permissions.
- A Discord bot token.
- One or more Discord webhook URLs.
- The Discord server ID.
- The channel IDs that should receive chat, status, client logs, and admin
  messages.
- Admin Discord user IDs if you want reaction-based admin controls.

## Suggested Channel Layout

- `frostvale-events`: joins, leaves, deaths, server start/stop, summaries.
- `frostvale-chat`: in-game chat relay.
- `frostvale-admin`: client log snapshots, anti-cheat, and server manager
  controls.

You can reuse one webhook at first. Separate channels are cleaner once the
server is busy.

## Bot Permissions

Give the bot access only to the channels it needs.

Recommended permissions:

- View Channels
- Send Messages
- Read Message History
- Add Reactions
- Manage Messages

Enable Message Content Intent for the bot if you want Discord-to-Valheim chat
relay.

## Local Config Values

After installing the server pack, configure
`BepInEx/config/com.Fire.FiresDiscordIntegration.cfg` on the server.

The bot token should live outside the published package, in the token file used
by FiresDiscordIntegration on your server. Do not place it in this modpack zip.

Important values to set:

- General webhook URL
- Chat webhook URL
- Anti-cheat webhook URL
- Client-log webhook URL
- Server-manager webhook URL
- Discord guild/server ID
- Chat channel ID
- Status channel ID
- Server-manager channel ID
- Bot admin Discord user IDs

## First Boot Check

After configuration, restart the server and watch the BepInEx/server log.

Confirm:

- `FiresDiscordIntegration` loads.
- No bot authentication errors appear.
- Server status posts to Discord.
- Chat relay works if enabled.
- Client log snapshots post only where you expect them.

If Discord gets noisy, disable hourly summaries, daily summaries, player-say
notifications, or client-login artifacts first.
