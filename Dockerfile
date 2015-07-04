
FROM rocker/ropensci
MAINTAINER Alan Arnholt arnholtat@appstate.edu


RUN install2.r --error \
  PASWR2 \
  tikzDevice \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds