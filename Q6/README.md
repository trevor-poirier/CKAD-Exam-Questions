
Question #6 (of 16)
[Servicing and Networking | 20% Weight | 6.3 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Developers occasionally need to submit pods that run periodically.

1) Create a CronJob manifest file at ~/CKAD-Exam-Questions/tmp/cronjob.yaml

2) The CronJob must run the shell command uname in a single container using 
   busybox image. The command should run every minute and must complete within 
   28 seconds, or be terminated by Kubernetes. It must also have 2 completions, 
   and 3 retries on failure

3) The CronJob name and container names should both be hellocron. Create the 
   CronJob from the above manifest file. Then create a manual (normal) Job with 
   the same configurations. Store the manifest file at:
   ~/CKAD-Exam-Questions/tmp/job.yaml

Verify the execution of both the CronJob and Job.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
