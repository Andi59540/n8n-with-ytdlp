FROM n8nio/n8n:latest

# Root-Rechte, um Pakete zu installieren
USER root

# curl + ffmpeg installieren und yt-dlp-Binary sauber ablegen
RUN apk add --no-cache curl ffmpeg \
  && curl -L "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp" \
       -o /usr/local/bin/yt-dlp \
  && chmod a+rx /usr/local/bin/yt-dlp

# Zurück zum normalen n8n-User
USER node
