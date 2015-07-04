
FROM rocker/ropensci
MAINTAINER Alan Arnholt arnholtat@appstate.edu


RUN install2.r --error \
  binom \
  car \
  combinat \
  cubature \
  descr \
  extrafont \
  extrafontdb \
  fontcm \
  ggvis \
  ISLR \
  leaps \
  moonBook \
  multcompView \
  nortest \
  PASWR2 \
  repmis \
  reports \
  shinyAce \
  tables \
  tikzDevice \
  vcd \
  vcdExtra \
  WDI \
  xlsx \
  xlsxjars \
  xtable \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# Install PDS
RUN Rscript -e 'devtools::install_github("alanarnholt/PDS")'