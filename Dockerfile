#Use the `--build-arg` flag when building the image, like this:
#
#`docker build --build-arg API_KEY=$API_KEY -t myimage .`

FROM alpine:latest

WORKDIR /root

RUN apk add --no-cache neovim git ripgrep fzf curl unzip tar gzip bash \
    && mkdir -p /root/.config/nvim

RUN git clone --depth 1 --single-branch https://github.com/jgluiggi/nvim.git /root/.config/nvim

ARG GROQ_API_KEY
ENV GROQ_API_KEY=$GROQ_API_KEY
