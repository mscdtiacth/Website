# Sử dụng ảnh cơ sở (base image) mà bạn cần
FROM node:14

# Sao chép các tệp ứng dụng vào hệ thống tệp của Docker
WORKDIR /app
COPY . .

# Cài đặt các phụ thuộc và lệnh khởi động ứng dụng
RUN npm install
CMD ["npm", "start"]

# Đảm bảo ứng dụng của bạn lắng nghe trên cổng 8080
EXPOSE 8080
