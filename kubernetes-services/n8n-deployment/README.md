# n8n kubernetes hosting on private cloud

Manifests to setup n8n on a self hosted kubernetes cluster with an external Postgresql DB.
The secret-template.yaml files gives the minimum parameters to provide to get a functionning setup. 
Those secrets are used by the deployment file.

Once you have fullfilled and updated all the files to match your setup. 

You can run "./deploy-n8n.sh" and it will deploy to your cluster. 
