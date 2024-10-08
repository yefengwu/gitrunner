#
# IMAGE TARGETS
# -------------

FROM alpine as basic

FROM alpine as noderunner
RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.tuna.tsinghua.edu.cn/alpine#g' /etc/apk/repositories && \
    apk update && apk upgrade && apk add git nodejs npm
RUN npm config set registry https://registry.npmmirror.com && \
    npm install -g pnpm

