
Question #14 (of 16)
[Servicing and Networking | 20% Weight | 6.3 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**Before beginning this question, untaint the node node01 from previous question**
Task 1:
- Create a Deployment called blue with 6 replicas, using the nginx image 1.26.3
  inside the tiger Namespace
- Add the func=webFrontEnd key/value label to the pod template metadata to identify
  the Pods for the Service definition later on
- Expose port 8080 for the nginx containers

Task 2:
- Create a Service of type NodePort called web-srv to route traffic to blue app
  using TCP port 8080

Task 3:
- Create an identical Deployment named canary-green-deployment, in the same Namespace
- Modify the Deployment so that:
  A maximum number of 10 Pods run in the tiger Namespace
  40% of the web-srv Service's traffic goes to the canary-green-deployment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
