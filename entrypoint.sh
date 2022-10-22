#!/busybox/sh

set -o errexit
set -o nounset

cat << EOM > ./server.properties
server-name=${SERVER_NAME:-Dedicated Server}
gamemode=${GAMEMODE:-survival}
force-gamemode=${FORCE_GAMEMODE:-false}
difficulty=${DIFFICULTY:-easy}
allow-cheats=${ALLOW_CHEATS:-false}
max-players=${MAX_PLAYERS:-10}
online-mode=${ONLINE_MODE:-true}
allow-list=${ALLOW_LIST:-false}
server-port=${SERVER_PORT:-19132}
server-portv6=${SERVER_PORTV6:-19133}
view-distance=${VIEW_DISTANCE:-32}
tick-distance=${TICK_DISTANCE:-4}
player-idle-timeout=${PLAYER_IDLE_TIMEOUT:-30}
max-threads=${MAX_THREADS:-8}
level-name=${LEVEL_NAME:-Bedrock level}
level-seed=${LEVEL_SEED:-}
default-player-permission-level=${DEFAULT_PLAYER_PERMISSION_LEVEL:-member}
texturepack-required=${TEXTUREPACK_REQUIRED:-false}
content-log-file-enabled=${CONTENT_LOG_FILE_ENABLED:-false}
compression-threshold=${COMPRESSION_THRESHOLD:-1}
server-authoritative-movement=${SERVER_AUTHORITATIVE_MOVEMENT:-server-auth}
player-movement-score-threshold=${PLAYER_MOVEMENT_SCORE_THRESHOLD:-20}
player-movement-action-direction-threshold=${PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD:-0.85}
player-movement-distance-threshold=${PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD:-0.3}
player-movement-duration-threshold-in-ms=${PLAYER_MOVEMENT_DURATION_THRESHOLD_IN_MS:-500}
correct-player-movement=${CORRECT_PLAYER_MOVEMENT:-false}
server-authoritative-block-breaking=${SERVER_AUTHORITATIVE_BLOCK_BREAKING:-false}
chat-restriction=${CHAT_RESTRICTION:-None}
disable-player-interaction=${DISABLE_PLAYER_INTERACTION:-false}
emit-server-telemetry=${EMIT_SERVER_TELEMETRY:-false}
EOM

./bedrock_server
