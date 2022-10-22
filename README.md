# minecraft-bedrock-server

*USAGE

 docker run \
  -p 19132:19132/udp \
  -e EMIT_SERVER_TELEMETRY=true \
  --mount type=bind,src=/your/path/to/worlds,dst=/bedrock/worlds \
  -t takenorio/bedrock-builder
  
 *PROPERTIES
 
  Set server.properties as environment varialbes.
  
  
  | Environemnt Variables                      | Properties                                 | Default          |
| ------------------------------------------ | ------------------------------------------ | ---------------- |
| SERVER_NAME                                | server-name                                | Dedicated Server |
| GAMEMODE                                   | gamemode                                   | survival         |
| FORCE_GAMEMODE                             | force-gamemode                             | false            |
| DIFFICULTY                                 | difficulty                                 | easy             |
| ALLOW_CHEATS                               | allow-cheats                               | false            |
| MAX_PLAYERS                                | max-players                                | 10               |
| ONLINE_MODE                                | online-mode                                | true             |
| ALLOW_LIST                                 | allow-list                                 | false            |
| SERVER_PORT                                | server-port                                | 19132            |
| SERVER_PORTV6                              | server-portv6                              | 19133            |
| VIEW_DISTANCE                              | view-distance                              | 32               |
| TICK_DISTANCE                              | tick-distance                              | 4                |
| PLAYER_IDLE_TIMEOUT                        | player-idle-timeout                        | 30               |
| MAX_THREADS                                | max-threads                                | 8                |
| LEVEL_NAME                                 | level-name                                 | Bedrock level    |
| LEVEL_SEED                                 | level-seed                                 | ''               |
| DEFAULT_PLAYER_PERMISSION_LEVEL            | default-player-permission-level            | member           |
| TEXTUREPACK_REQUIRED                       | texturepack-required                       | false            |
| CONTENT_LOG_FILE_ENABLED                   | content-log-file-enabled                   | false            |
| COMPRESSION_THRESHOLD                      | compression-threshold                      | 1                |
| SERVER_AUTHORITATIVE_MOVEMENT              | server-authoritative-movement              | server-auth      |
| PLAYER_MOVEMENT_SCORE_THRESHOLD            | player-movement-score-threshold            | 20               |
| PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD | player-movement-action-direction-threshold | 0.85             |
| PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD | player-movement-distance-threshold         | 0.3              |
| PLAYER_MOVEMENT_DURATION_THRESHOLD_IN_MS   | player-movement-duration-threshold-in-ms   | 500              |
| CORRECT_PLAYER_MOVEMENT                    | correct-player-movement                    | false            |
| SERVER_AUTHORITATIVE_BLOCK_BREAKING        | server-authoritative-block-breaking        | false            |
| CHAT_RESTRICTION                           | chat-restriction                           | None             |
| DISABLE_PLAYER_INTERACTION                 | disable-player-interaction                 | false            |
| EMIT_SERVER_TELEMETRY                      | emit-server-telemetry                      | false            |
