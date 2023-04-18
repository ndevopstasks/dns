- This is DNS blacklist server based on rbldnsd deamon
- As an origin, used from https://github.com/Neomediatech/rbldns.git 
- For this project, as platform is used AWS
- On the 1-st stack, you would need prepare a small k8s cluster (master with one worker node), S3 bucket, DNS name and run the prepared manifest files (deployment, namespace)
- On the 2-nd stack, you can use instances.tf file to run required instances on AWS.
- Install and configure swarm with cluster, docker, docker compose. 
- Run docker-compose file to launch lbdns containers
- Docker image can be found here https://hub.docker.com/repository/docker/mrdockernnm/dns/general 

