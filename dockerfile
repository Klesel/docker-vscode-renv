FROM rocker/tidyverse:4.2.3

USER root

RUN mkdir /code
WORKDIR /code

# R set Posit Manager to fasten things up
# https://www.r-bloggers.com/2023/07/posit-package-manager-for-linux-r-binaries/
RUN echo "options(repos = c(CRAN = 'https://packagemanager.posit.co/cran/__linux__/jammy/latest'))" >> /etc/R/Rprofile.site
RUN echo 'options(HTTPUserAgent = sprintf("R/%s R (%s)", getRversion(), paste(getRversion(), R.version["platform"], R.version["arch"], R.version["os"])))'  >> /etc/R/Rprofile.site
# Install R dependencies
ENV RENV_VERSION 1.0.2
RUN R -e "install.packages(c('languageserver', 'jsonlite', 'devtools', 'httpgd', 'renv'))"

CMD ["/bin/bash"]