# membuat docker image untuk karsajobs dari Dockerfile yang ada di folder karsajobs
docker build -t ghcr.io/erlanggajuni45/karsajobs-ui:latest .

# login ke Github Container Registry
echo $GITHUB_TOKEN | docker login ghcr.io -u erlanggajuni45 --password-stdin

# push image ke Github Container Registry
docker push ghcr.io/erlanggajuni45/karsajobs-ui:latest