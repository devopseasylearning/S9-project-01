#! /bin/bash 

echo " deploying the backend"

kubens bookstack-s9
kubectl apply  -f  bookstack_db_secret.yml
kubectl apply  -f  bookstack_db_cm.yml
kubectl apply  -f  bookstack_db_pvc-01.yml 
kubectl apply  -f  bookstack_db_pvc-02.yml

kubectl apply  -f  bookstack_db_svc.yml
kubectl apply  -f  bookstack_db.yml


kubectl apply  -f bookstack_frontend_cm.yml
kubectl apply  -f bookstack_frontend_secret.yml
kubectl apply  -f bookstack_frontend_pvc.yml
kubectl apply  -f bookstack_frontend_svc.yml
kubectl apply  -f bookstack_frontend.yml