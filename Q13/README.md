
Question #13 (of 16)
[Workloads and Scheduling | 15% Weight | 4.7 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Add a taint to the node node01 of the cluster. Use the specification below:

key: app_type, value: alpha and effect: NoSchedule

Create a pod called alpha using the image redis, with a toleration to node01
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
