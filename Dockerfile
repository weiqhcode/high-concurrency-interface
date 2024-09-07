FROM openresty/openresty:alpine

# 将 Lua 脚本复制到容器中的指定位置
COPY random_json.lua /usr/local/openresty/nginx/lua/random_json.lua

# 自定义 Nginx 配置文件
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

EXPOSE 80

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
