# cluster-configuration

under directory applications, you can find a directory for each components of deployments used on OCP (using kustomize) : 
   - lso : install Local Storage Operator (needed for ODF)
   - odf : install Open Data Foundation operator
   - lso-instance : instanciate LSO storage class for /dev/sdb available block device
   - odf-instance : use LSO instance to instanciate an ODF cluster
   - lso-gitops: gives rigths to gitops SA to create LSO instance on local cluster
   - odf-gitops : gives rigths to gitops SA to create ODF instance on local cluster
   - acm : install Advanced Cluster Management operator
   - acm-instance: instanciate ACM
   - acm-gitops: adds applicationset, clusterset, rbac to allow argoCD to use ACM
   - post-installs: directory used by an ArgoCD ApplicationSet (and linked to an ACM ClusterSet), see acm-gitops
