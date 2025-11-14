
Question #12 (of 16)
[Servicing and Networking | 20% Weight | 6.3 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A Pod is running in the cluster, but it is not responding.

It is expected for Kubernetes to restart the Pod when an endpoint returns an HTTP 500
on the /healthz endpoint. The Service liveness-http should never send traffic to the 
Pod when it is failing.

Please complete the following:

1) The application has an endpoint. /started will indicate if it can accept 
   traffic by returning HTTP 200. If the endpoint returns an HTTP 500, the application
   has not yet finished initialization.

2) The application has another endpoint. /healthz will indicate if the application
   is still working as expected by returning an HTTP 200 if the endpoint returns an 
   HTTP 500 the application is no longer responsive.

Configure the liveness-http Pod to use these endpoints - using port 8080 for each.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
