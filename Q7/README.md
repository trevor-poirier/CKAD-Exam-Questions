
Question #7 (of 16)
[Cluster Architecture, Installation, and Configuration | 25% Weight | 7.8 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
An application is failing due to a livenessProbe. It is currently running on one 
of the below namespaces:
- qa
- lab
- prod
- dev

Tasks needing to be performed:
1) Identify the broken pod. Write its name and namespace to /var/data/broken.txt 
   in the format "namespace"/"pod".

2) Copy the application events into the file /var/data/error.txt using "-o wide" 
   output specifier with your command.

3) Fix the issue and ensure the application is running successfully.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
