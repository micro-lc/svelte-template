FROM nginx:1.21.0-alpine as build

LABEL name="microlc-svelte-template" \
  description="This template showcases how to start setting up a micro-lc plugin project with navigation and Svelte" \
  eu.mia-platform.url="https://www.mia-platform.eu" \
  eu.mia-platform.version="0.1.0"

COPY nginx /etc/nginx

RUN touch ./off \
  && chmod o+rw ./off \
  && echo "microlc-svelte-template: $COMMIT_SHA" >> /etc/nginx/commit.sha

WORKDIR /usr/static

COPY ./public .

USER nginx
