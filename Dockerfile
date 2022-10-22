FROM debian:bullseye-slim AS builder

ARG USER_AGENT='Mozilla/5.0 (Macintosh; Ikageso)'
ARG DOWNLOAD_URL='https://www.minecraft.net/en-us/download/server/bedrock'

bazel build ...
bazel build ...
bazel build ...

WORKDIR /bedrock

COPY /usr/local/lib/x86_64-linux-gnu/ /usr/local/lib/x86_64-linux-gnu/ # buildkit
COPY entrypoint.sh ./ # buildkit
COPY /bedrock/ ./ # buildkit

ENV LD_LIBRARY_PATH=/usr/local/lib/x86_64-linux-gnu
EXPOSE map[19132/udp:{}]
EXPOSE map[19133/udp:{}]

ENTRYPOINT ["./entrypoint.sh"]
