
1. We don't see which pod sent which log line

2. If pods are restarted / replaced, the log stream stops

3. If new pods are added, we don't see their logs

4. To stream the logs of multiple pods, we need to write a selector

5. There are [external tools]((https://github.com/wercker/stern)) to address these shortcomings