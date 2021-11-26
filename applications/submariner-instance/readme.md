add to gateway node a good public IP :     annotation: gateway.submariner.io/public-ip: 'ipv4:10.6.82.97'
add a label to select a node for gateway : label: submariner.io/gateway: 'true'


via ACM, instance created : 

apiVersion: submariner.io/v1alpha1
kind: Submariner
metadata:
  name: submariner
  namespace: submariner-operator
spec:
  natEnabled: true
  ceIPSecPSK: ...
  colorCodes: blue
  cableDriver: libreswan
  serviceDiscoveryEnabled: true
  brokerK8sRemoteNamespace: bm-dev-clusters-broker
  brokerK8sApiServerToken: ...
  serviceCIDR: ''
  repository: registry.redhat.io/rhacm2-tech-preview
  ceIPSecDebug: false
  brokerK8sCA: ...
  clusterCIDR: ''
  brokerK8sApiServer: 'api.ocp1.redhat.hpecic.net:6443'
  debug: false
  clusterID: bm2
  version: v0.9
  broker: k8s
  namespace: submariner-operator
  ceIPSecNATTPort: 4500
  ceIPSecIKEPort: 500
