# Q1
printf '\nQ1\n'

# Q2
printf '\nQ2\n'
kubectl create ns quetzal
kubectl apply -f ./CKAD-Exam-Questions/hotfix-deployment.yaml

# Q3
printf '\nQ3\n'

# Q4
printf '\nQ4\n'
kubectl create namespace ns-quota1
kubectl -n ns-quota1 create deployment resource-deploy --image=nginx --replicas=1
kubectl -n ns-quota1 set resources deployment/resource-deploy --requests=cpu=100m --limits=memory=650Mi,cpu=200m
kubectl apply -f ./CKAD-Exam-Questions/Q4/resource-quota.yaml

# Q5
printf '\nQ5\n'
kubectl create namespace kdpd0023
kubectl -n kdpd0023 create deployment web --image=nginx:1.24.0 --replicas=1

# Q6
printf '\nQ6\n'

# Q7
printf '\nQ7\n'
kubectl create ns qa 
kubectl create ns lab
kubectl create ns prod
kubectl create ns dev

NS=$(shuf -i 1-4 -n 1)
if [ $NS -eq 1 ]; then
  kubectl apply -f ./CKAD-Exam-Questions/Q7/pod.yaml -n qa
  kubectl run liveness-pod --image=busybox -n lab --restart=OnFailure -- sleep 6
  kubectl create deploy liveness -n prod --image=nginx --replicas=0
  kubectl run failed-liveness -n dev --image=busybox -- sleep 6000
elif [ $NS -eq 2 ]; then
  kubectl apply -f ./CKAD-Exam-Questions/Q7/pod.yaml -n lab
  kubectl run liveness-pod --image=busybox -n qa --restart=OnFailure -- sleep 6
  kubectl create deploy liveness -n prod --image=nginx --replicas=0
  kubectl run failed-liveness -n dev --image=busybox --restart=Never -- sleep 1
elif [ $NS -eq 3 ]; then
  kubectl apply -f ./CKAD-Exam-Questions/Q7/pod.yaml -n prod
  kubectl run liveness-pod --image=busybox -n dev --restart=OnFailure -- sleep 6
  kubectl create deploy liveness -n lab --image=nginx --replicas=0
  kubectl run failed-liveness -n qa --image=busybox -- sleep 6000
else
  kubectl apply -f ./CKAD-Exam-Questions/Q7/pod.yaml -n dev
  kubectl run liveness-pod --image=busybox -n prod --restart=Never -- sleep 6
  kubectl create deploy liveness -n qa --image=nginx --replicas=0
  kubectl run failed-liveness -n lab --image=busybox --restart=OnFailure -- echo ""
fi

# Q8
printf '\nQ8\n'
kubectl create ns meta
kubectl apply -f ./CKAD-Exam-Questions/Q8/deploy.yaml

# Q9
printf '\nQ9\n'

# Q10
printf '\nQ10\n'

# Q11
printf '\nQ11\n'
kubectl create ns project-production
kubectl create deployment web-app --image=nginx  -n project-production
kubectl create sa app -n project-production
kubectl run app-sec-kff3345 -n project-production --image=ubuntu --command sleep 4800

# Q12
printf '\nQ12\n'

cat <<EOF>> default.conf 
server {
    listen       8080;      #  The probes should use port 8080
    listen  [::]:80;
    server_name  localhost;
    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}

server { 
       location /healthz {
        access_log off;
        return 200;
		}
	}
server { 
       location /started {
        access_log off;
        return 200;
		}
	}
EOF

cat <<EOF>> healthz 
healthz endpoint is up and running fine.
EOF

cat <<EOF>> started 
started endpoint is up and running fine.
EOF

kubectl create configmap healthz --from-file=healthz
kubectl create configmap started --from-file=started
kubectl create configmap nginx-conf --from-file=default.conf
kubectl apply -f ./CKAD-Exam-Questions/Q12/pod.yaml
kubectl expose pod liveness-http --name=liveness-http --port=8080 --type=ClusterIP

# Q13
printf '\nQ13\n'
kubectl create ns cpu-stress
kubectl apply -f ./CKAD-Exam-Questions/Q13/pod.yaml
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl patch deployment metrics-server -n kube-system --type=json -p='[{"op": "add", "path": "/spec/template/spec/containers/0/args/-", "value": "--kubelet-insecure-tls"}]'
systemctl restart kubelet

# Q14
printf '\nQ14\n'
kubectl create ns tiger

# Q15
printf '\nQ15\n'

# Q16
printf '\nQ16\n'
kubectl create ns ckad0021 
kubectl -n ckad0021 run www --image=nginx --labels=app=secure-app
kubectl -n ckad0021 run storage --image=nginx  --labels=app=secure-app
kubectl -n ckad0021 run ckad0021-newpod --image=nginx
kubectl apply -f ./CKAD-Exam-Questions/Q16/np1.yaml
kubectl apply -f ./CKAD-Exam-Questions/Q16/np2.yaml

printf '\n'

# Create empty dirs to be used during exam
mkdir CKAD-Exam-Questions/tmp
mkdir CKAD-Exam-Questions/data1
mkdir /var/data

# Sleep for troubleshooting resource creation, then clear before showing all questions again
sleep 5
clear
printf '\n\nNow you can begin. Attempt to solve using only the official kubernetes.io documentation.'
printf '\nIt will be easiest to open up a second terminal tab to solve the questions, keeping this first tab with the displayed questions to refer to.\n'
# printf '\nTroubleshooting & Cluster Setup/Configuration/Installation questions = highest priority based on weight. Storage questions = lowest priority.\n'
printf '\nAllow 3 minutes per question, leaving 12 review minutes at the end to check your work.\n\n'
cat ./CKAD-Exam-Questions/Q1/README.md
cat ./CKAD-Exam-Questions/Q2/README.md
cat ./CKAD-Exam-Questions/Q3/README.md
cat ./CKAD-Exam-Questions/Q4/README.md
cat ./CKAD-Exam-Questions/Q5/README.md
cat ./CKAD-Exam-Questions/Q6/README.md
cat ./CKAD-Exam-Questions/Q7/README.md
cat ./CKAD-Exam-Questions/Q8/README.md
cat ./CKAD-Exam-Questions/Q9/README.md
cat ./CKAD-Exam-Questions/Q10/README.md
cat ./CKAD-Exam-Questions/Q11/README.md
cat ./CKAD-Exam-Questions/Q12/README.md
cat ./CKAD-Exam-Questions/Q13/README.md
cat ./CKAD-Exam-Questions/Q14/README.md
cat ./CKAD-Exam-Questions/Q15/README.md
cat ./CKAD-Exam-Questions/Q16/README.md

# Command to copy to re-print a question
printf '\nTo review a specific question later on, run this command below.\nWhere "Q#" is the letter Q followed by the question number (i.e. Q12):\n\ncat ./CKAD-Exam-Questions/Q#/README.md\n'
printf '\nTo list all questions again, run sh CKAD-Exam-Questions/QUESTIONS.sh\n\n'