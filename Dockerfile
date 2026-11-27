FROM ghcr.io/m1k1o/neko/chromium:latest

RUN mkdir -p /home/neko/mi-extension
COPY manifest.json /home/neko/mi-extension/manifest.json
COPY content.js /home/neko/mi-extension/content.js

RUN sed -i 's|--no-sandbox|--no-sandbox --load-extension=/home/neko/mi-extension|g' /etc/neko/supervisord/chromium.conf

ENV NEKO_MEMBER_MULTIUSER_USER_PASSWORD=tu_clave_usuario
ENV NEKO_MEMBER_MULTIUSER_ADMIN_PASSWORD=tu_clave_admin
ENV NEKO_WEBRTC_EPR=59000-59100
