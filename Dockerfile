# menggunakan image node versi 14 alpine sebagai base image
FROM node:14-alpine

# set working directory ke folder app
WORKDIR /app

# menyalin seluruh file dan folder dari direktori saat ini ke dalam container di folder working directory alias /app
COPY . .

# set environment variable untuk node environment dan database host
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan perintah npm install untuk menginstall dependencies yang diperlukan untuk aplikasi
# --production untuk hanya menginstal dependencies yangg diperlukan untuk produksi
# --unsafe-perm untuk mengizinkan npm menjalankan skrip dengan hak akses root
# terakhir menjalankan perintah npm run build untuk membangun aplikasi sebelum dijalankan
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080 untuk aplikasi agar dapat diakses dari luar container
EXPOSE 8080

# menjalankan perintah npm start untuk memulai aplikasi ketika container dijalankan
CMD ["npm", "start"]