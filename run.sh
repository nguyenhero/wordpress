# # docker build -t loki_wp . && \
# docker run \
# -e WORDPRESS_DB_HOST=containers-us-west-26.railway.app:3306 \
# -e WORDPRESS_DB_USER=root \
# -e WORDPRESS_DB_PASSWORD=jDB8BK8keOi7vvtZgPxF \
# -e WORDPRESS_DB_NAME=railway \
# -p 80:80  \
# wordpress 
#  docker run --name local-wordpress -p 8080:80 -d wordpress