FROM library/node:16-alpine
RUN apk update && apk upgrade && apk add --no-cache git
RUN apk update && apk upgrade && apk add --no-cache build-base && apk add --no-cache python3
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ENV NODE_ENV production
ENV PORT 80
EXPOSE 80
