FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    apt-get install -y nodejs && \
    apt-get install -y git && \
    apt-get install -y npm && \
    apt-get install -y vim && \
    service nginx start

RUN npm i -g npx
# set working directory
WORKDIR /tmp/
RUN npx create-react-app janet-app

WORKDIR /tmp/janet-app/

COPY package.json /tmp/janet-app/package.json
COPY README.md /tmp/janet-app/README.md
COPY src/ /tmp/janet-app/src/
COPY public/ /tmp/janet-app/public/
COPY nginx.conf /etc/nginx/sites-available/default

RUN npm run build

RUN service nginx restart

STOPSIGNAL SIGTERM

CMD ["npm", "start"]
