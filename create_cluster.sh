# build local docker images
eval $(minikube docker-env)
docker build -t stephengrider/multi-server ./server
docker build -t stephengrider/multi-client ./client
docker build -t stephengrider/multi-worker ./worker

# create namespace
kubectl create ns complex

# create secrets
kubectl create secret generic pgpassword --from-literal POSTGRES_PASSWORD=postgres -n complex

# create cluster from resource configs
kubectl apply -f k8