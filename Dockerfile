FROM nginx:1.29.0

# 删除原有的默认配置（可选）
RUN rm /etc/nginx/conf.d/default.conf

# 复制你自己的配置
COPY default.conf /etc/nginx/conf.d/default.conf

# 暴露 HTTP 端口
EXPOSE 80

# 启动 Nginx（官方镜像默认 ENTRYPOINT 已经设置好）
