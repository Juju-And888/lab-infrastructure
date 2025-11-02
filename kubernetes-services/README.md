# Services deployed on the cluster

In this folder, you can find the manifests and scripts that I used to deploy services on the kubernetes cluster I host.

As a simplification/short-cut, I also use the cluster to cover the reverse proxy function for services not hosted on the cluster. 
In that case, I'm using endpoints to connect to the said service. 

## Deployed on cluster

1. n8n
2. django web app
3. nautobot (via standard helm chart)

## Deployed outside the cluster
1. PostgreSQL DB
2. Gitea (DB is the above)
3. Harbor (DB is the above)
