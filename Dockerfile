FROM quay.io/chrisshort/hugo:latest

LABEL "com.github.actions.name"="Trusted Hugo"
LABEL "com.github.actions.description"="Provides an update to date container running latest version of hugo"
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="https://github.com/chris-short/github-action-hugo"
LABEL "homepage"="https://github.com/chris-short"
LABEL "maintainer"="Chris Short <chris@chrisshort.net>"

RUN set -x \
      && rm -rf public || exit 0 \
      && git submodule sync --recursive \
      && git submodule update --init --recursive

ENTRYPOINT [ "hugo" ]
CMD [ "--help" ]
