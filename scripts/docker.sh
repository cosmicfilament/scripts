### DOCKER ###
docker ps --all
docker ps --filter "status=running" --format "table {{.ID}}\t{{.Image}}\t{{.Networks}}\t{{.Ports}}"

docker build -t jpbutler2000/posts:latest .

docker run [container] [command]
docker exec -it [xxxx]
docker start -a # attach
docker start -i # interactive

docker system prune
docker system info
# push docker image to docker hub
docker push [image]

### KUBERNETES ###
k version
k apply -f x.yaml # process the config filejpbut
k get pods
k exec -it [pod] [command] # execcs cmd in running pod
k delete pod [name] 
k logs [pod name] # logs from given pod
k describe pod [name] # prints out info on the running pod

k get deployments # 
k describe deployment [depl name]
k delete deployment [depl name] # deletes the deployment and the associated pods

k get services
k describe service [service name]

k rollout restart deployment [depl] # update deployment when an associated docker container changes

 k get pods -n ingress-nginx