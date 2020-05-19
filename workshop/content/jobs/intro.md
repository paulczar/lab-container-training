Deployments are great for stateless web apps

(as well as workers that keep running forever)

Pods are great for one-off execution that we don't care about

(because they don't get automatically restarted if something goes wrong)

Jobs are great for "long" background work

("long" being at least minutes our hours)

CronJobs are great to schedule Jobs at regular intervals

(just like the classic UNIX cron daemon with its crontab files)
