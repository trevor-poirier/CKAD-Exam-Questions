
Question #1 (of 16) 
[Troubleshooting | 30% Weight | 9.4 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Create a Secret named db-credentials in the default namespace with the following
key-value pairs: username: admin, password: P@ssw0rd123

Create a Pod named env-secret-pod that runs a single container using the 
image busybox, and keeps running via the command sleep 3600.

The container should expose the Secret values as environment variables:
Environment variable DB_USER should use the value from username
Environment variable DB_PASS should use the value from password

Verify the environment variables are correctly set inside the pod.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
