FROM rocker/tidyverse:4.2.3

RUN mkdir /code
WORKDIR /code

CMD [ "/bin/bash" ]