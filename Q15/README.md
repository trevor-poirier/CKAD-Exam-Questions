
Question #15 (of 16)
[Cluster Architecture, Installation, and Configuration | 25% Weight | 7.8 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Apply a label app_type=beta to node controlplane. Create a new Deployment 
called beta-apps using nginx image, and 3 replicas. Set Node Affinity for the
Deployment to place its PODs on controlplane node only.

Set NodeAffinity to requiredDuringSchedulingIgnoredDuringExecution

Remove the NoSchedule taint on the controlplane node

Create the Deployment and verify that the Pods are all on the controlplane node.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
