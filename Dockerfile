FROM nginx:latest
arg appenv
env appenv=${appenv}
ADD ./index.html /usr/share/nginx/html/
