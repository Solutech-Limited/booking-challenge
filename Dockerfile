FROM solutechlimited/octane-road-runner-server:latest

ENV USER=octane

USER ${USER}

COPY --link --chown=${USER}:${USER} . .

# create /var/www/bootstrap/cache directory
# RUN mkdir -p /var/www/html/bootstrap/cache
# RUN chmod -R 777 /var/www/html/storage/logs

COPY --link --chown=${USER}:${USER} composer.json ./

RUN composer install \
    --no-dev \
    --no-interaction \
    --no-autoloader \
    --no-ansi \
    --no-scripts
    # --audit

RUN composer install \
    --classmap-authoritative \
    --no-interaction \
    --no-ansi \
    --no-dev \
    && composer clear-cache

ENV LOAD_ENV=0
ENV RUNNING_MIGRATIONS=false
ENV TEST_REDIS_COMMAND=false

RUN chmod +x rr
