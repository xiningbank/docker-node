FROM node:14.17.0

MAINTAINER zhoukan "xiningbank@gmail.com"

#ENV LANG C.UTF-8
RUN npm install -g cnpm --registry=http://registry.npm.taobao.org
RUN npm install -g npm@7.13.0
RUN cnpm install webpack -g
RUN cnpm install webpack@^4.0.0 --save-dev
RUN cnpm install -g @vue/cli
RUN cnpm rebuild node-sass
RUN cnpm install --save-dev cache-loader

RUN echo "alias ll='ls -lh --color=auto'" >> ~/.bashrc
