export KUBERNETES_PROVIDER=libvirt-coreos
export CONTAINER_RUNTIME=rkt
export RKT_PATH=/opt/kubernetes/rkt/rkt
export RKT_STAGE1_IMAGE=/opt/kubernetes/rkt/stage1-lkvm.aci
export RKT_LOCAL_PATH=/home/ppalucki/work/go/src/github.com/coreos/rkt/bin
./cluster/kube-up.sh
./cluster/kube-down.sh

# cluster dziala
./cluster/kubectl.sh get nodes

cat >redis.yaml <<EOF
apiVersion: v1
kind: ReplicationController
metadata:
  name: redis-master
  labels:
    name: redis-master
spec:
  replicas: 3
  selector:
    name: redis-master
  template:
    metadata:
      labels:
        name: redis-master
    spec:
      volumes:
      - name: data
        emptyDir: {}
      containers:
      - name: master
        volumeMounts:
        - name: data
          mountPath: /data
        image: redis
EOF

./cluster/kubectl.sh create -f redis.yaml

socat - tcp4:172.16.28.3:6379

ssh core@192.168.10.1
ssh core@192.168.10.2
ssh core@192.168.10.3
ssh core@192.168.10.4


export http_proxy=http://proxy-mu.intel.com:911
export http_proxys=http://proxy-mu.intel.com:911
sudo -E /opt/kubernetes/rkt/rkt --insecure-skip-verify fetch docker://redis
c-c


c-l
toolbox


#
virsh list | awk 'NR>2 && !/^$/ && $2 ~ /^kubernetes/ {print $2}' | \
  while read dom; do
    virsh destroy $dom
  done
