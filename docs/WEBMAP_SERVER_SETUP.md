# Optional WebMap Dedicated-Server Setup

WebMap is an optional browser-based live map for Valheim dedicated servers. It
is not part of FrostVale's shared Thunderstore dependency set.

> **Do not install WebMap in a player profile.** WebMap 2.7.1 assumes
> dedicated-server state. On a client, its `ZNet.SetServer` patch can throw a
> `NullReferenceException` when the player selects **Connect**, preventing the
> connection from starting.

FrostVale clients do not need WebMap. The
[WebMap project](https://github.com/h0tw1r3/valheim-webmap) also describes the
mod as dedicated-server-only and states that clients do not need it.

## Before you begin

You need:

- A working Valheim dedicated server with BepInEx.
- File access to the server's `BepInEx/plugins` and `BepInEx/config` folders.
- A free TCP port for the website. WebMap defaults to TCP `3000`.
- A backup of the server's config and world data.

Stop the dedicated server before changing plugins or configuration.

## Install WebMap

1. Download the current
   [`Zevaryx-WebMap` package](https://thunderstore.io/c/valheim/p/Zevaryx/WebMap/)
   from Thunderstore.
2. Extract the package.
3. Copy the WebMap plugin directory, including `WebMap.dll`,
   `websocket-sharp.dll`, and the `web` folder, into:

   ```text
   BepInEx/plugins/WebMap/
   ```

4. Start the dedicated server once to generate:

   ```text
   BepInEx/config/com.github.h0tw1r3.valheim.webmap.cfg
   ```

5. Stop the server again before editing the generated config.

Do not copy WebMap into a desktop r2modman profile that will be launched by a
player or exported as a player profile code.

## Configure the web service

The essential settings are under `[Server]`:

```ini
[Server]
server_port = 3000
cache_server_files = true
debug = false
test = false
discord_webhook =
discord_invite_url =
webmap_url =
```

- `server_port` is the TCP port on which WebMap listens.
- `webmap_url` is the public URL shown by integrations. Leave it blank unless
  you have a stable URL.
- Keep webhook values private and out of modpacks, screenshots, profile
  exports, and source control.
- Leave `debug` and `test` disabled unless troubleshooting.

## Docker or container hosting

Publish the configured TCP port in addition to Valheim's UDP game ports. A
generic Compose port block looks like:

```yaml
ports:
  - "2456-2458:2456-2458/udp"
  - "3000:3000/tcp"
```

The container's BepInEx plugin and config paths must be backed by persistent
storage. Exact mount paths vary by image, so use the paths documented by your
Valheim container image or hosting panel.

## Firewall, NAT, and reverse proxy

For direct access, allow and forward the selected **TCP** port to the dedicated
server. Valheim's normal game ports are UDP; opening only those UDP ports does
not expose WebMap.

WebMap presents world and player information in a browser. Treat the site as
private unless you intentionally want it public. If you expose it to the
internet, prefer a trusted reverse proxy or private network and add access
controls there. Do not assume the WebMap application itself provides
authentication.

## Start and verify

1. Start the dedicated server.
2. Confirm the BepInEx log loads `WebMap` once without an exception.
3. Confirm the configured TCP port is listening.
4. From an allowed device, open:

   ```text
   http://SERVER_ADDRESS:3000/
   ```

5. Join with a normal FrostVale client that does **not** have WebMap installed.
6. Verify the player can connect and the browser map updates as expected.

If Valheim's **Connect** button appears unresponsive and the client log mentions
`WebMap+ZNetPatchSetServer.Postfix`, remove or disable WebMap in that client
profile and restart modded Valheim.

## Updating or removing WebMap

To update:

1. Stop the server.
2. Back up the existing WebMap config and plugin directory.
3. Replace the complete WebMap plugin directory with one version of the new
   package; do not leave old DLLs beside it.
4. Start the server and repeat the verification steps.
5. If the browser displays stale assets, clear its cache or perform a hard
   refresh.

To remove WebMap, stop the server, remove only its plugin directory, and remove
the TCP port publication or firewall rule if nothing else uses that port. The
WebMap config may be retained as a rollback backup.
