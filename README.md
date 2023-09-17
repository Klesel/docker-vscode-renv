# Overview

# Build docker

```bash
docker build -t vscode-renv .

docker run -it -v ${PWD}/code:/code vscode-renv
```