FROM kong:1.2.2
ENV KONG_PLUGINS bundled, jwt-claims-headers
RUN luarocks install kong-plugin-jwt-claims-to-headers
RUN USER=root luarocks install https://github.com/binhbt/kong-plugin-jwt-claims-headers/raw/master/kong-plugin-jwt-claims-headers-1.0-2.all.rock
COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["sh", "/entrypoint.sh"]