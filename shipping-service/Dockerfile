# Gunakan image Node.js versi 16 berbasis Alpine Linux untuk membuat image yang ringan
FROM node:16-alpine 
# Set working directory di dalam container menjadi /app
WORKDIR /app 
# Salin file package.json dan package-lock.json ke dalam container
COPY package*.json ./
# SET environment variable NODE_ENV menjadi production untuk mengoptimalkan instalasi dependensi
ENV NODE_ENV=production
# Jalankan perintah npm ci untuk menginstal dependensi yang diperlukan 
RUN npm ci --only=production
# Salin semua file dari direktori saat ini ke dalam container 
COPY . . 

# Expose port 3001 untuk aplikasi agar dapat diakses dari luar container
EXPOSE 3001

# Jalankan perintah npm start untuk memulai aplikasi ketika container dijalankan
CMD ["npm", "start"]