#
# IMAGE TARGETS
# -------------

FROM alpine AS alpine

FROM alpine AS noderunner
RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.ustc.edu.cn/alpine#g' /etc/apk/repositories 
RUN apk update && apk upgrade && apk add git nodejs npm
RUN npm config set registry https://registry.npmmirror.com && npm install -g pnpm

FROM ubuntu AS ubuntu
