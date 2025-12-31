FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY /assets/images/image-avatar.webp /usr/share/nginx/html/BlogPreviewCard/assets/images/
COPY /assets/images/illustration-article.svg /usr/share/nginx/html/BlogPreviewCard/assets/images/
COPY /assets/images/favicon-32x32.png /usr/share/nginx/html/BlogPreviewCard/assets/images/
COPY index.html /usr/share/nginx/html/BlogPreviewCard/
COPY styles.css /usr/share/nginx/html/BlogPreviewCard/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
