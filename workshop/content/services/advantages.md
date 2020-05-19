We don't need to look up the IP address of the pod(s)

(we resolve the IP address of the service using DNS)

There are multiple service types; some of them allow external traffic

(e.g. LoadBalancer and NodePort)

Services provide load balancing

(for both internal and external traffic)

Service addresses are independent from pods' addresses

(when a pod fails, the service seamlessly sends traffic to its replacement)
