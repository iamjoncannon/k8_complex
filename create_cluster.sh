# create namespace
kubectl create ns complex

# create secrets
kubectl create secret generic pgpassword --from-literal PGPASSWORD=my_password -n complex

# create cluster from resource configs
kubectl create -f k8
