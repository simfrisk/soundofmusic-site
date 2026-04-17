FROM nginxinc/nginx-unprivileged:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY work.html /usr/share/nginx/html/work.html
COPY analog-prophet.html /usr/share/nginx/html/analog-prophet.html
COPY 404.html /usr/share/nginx/html/404.html
COPY style.css /usr/share/nginx/html/style.css
COPY nav.js /usr/share/nginx/html/nav.js
COPY hero.jpg /usr/share/nginx/html/hero.jpg
COPY hero.webp /usr/share/nginx/html/hero.webp
COPY studio-bg.jpg /usr/share/nginx/html/studio-bg.jpg
COPY studio-bg.webp /usr/share/nginx/html/studio-bg.webp
COPY work-bg.jpg /usr/share/nginx/html/work-bg.jpg
COPY work-bg.webp /usr/share/nginx/html/work-bg.webp
COPY services-bg.avif /usr/share/nginx/html/services-bg.avif
COPY about-toby.webp /usr/share/nginx/html/about-toby.webp
COPY studio-session.webp /usr/share/nginx/html/studio-session.webp
COPY award-media.webp /usr/share/nginx/html/award-media.webp
COPY logos/ /usr/share/nginx/html/logos/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
