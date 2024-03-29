FROM nginx:1.9
# ADD nginx.conf /etc/nginx/
ADD default.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html
# RUN rm -rf *
# RUN mkdir gray
# COPY dist gray
COPY index.html ./
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] 