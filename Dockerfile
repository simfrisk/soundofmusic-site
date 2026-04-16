FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY work.html /usr/share/nginx/html/work.html
COPY analog-prophet.html /usr/share/nginx/html/analog-prophet.html
COPY style.css /usr/share/nginx/html/style.css
COPY nav.js /usr/share/nginx/html/nav.js
COPY hero.jpg /usr/share/nginx/html/hero.jpg
COPY hero.webp /usr/share/nginx/html/hero.webp
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
