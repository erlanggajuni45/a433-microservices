# membuat docker image dari Dockerfile di folder yang sama dengan file sh ini
docker build -t item-app:v1 .

# menampilkan daftar image yang sudah dibuat
docker images

# mengubah nama image sesuai dengan nama repository di Github Container Registry
docker tag item-app:v1 ghcr.io/erlanggajuni45/item-app:v1

# Login ke Github Container Registry
echo $GITHUB_CONTAINER_REGISTRY_TOKEN | docker login ghcr.io -u erlanggajuni45 --password-stdin

# mengunggah / push image ke Github Container Registry
docker push ghcr.io/erlanggajuni45/item-app:v1