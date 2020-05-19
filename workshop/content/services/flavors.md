There are different types of services: **ClusterIP**, **NodePort**, **LoadBalancer**, ExternalName, and Headless.

There is also *Ingress* which is an enhanced resource for routing complex http requests.

**ClusterIP**

The default service type.

A DNS entry is created and a virtual IP is allocated and is reachable only from within the cluster.

Perfect for internal communication.

**NodePort**

Chooses a free port from the *ephemeral port range*.

This port is made available on all of our worker nodes and is accessible from outside the cluster.

Traffic to this port is forwarded to the **ClusterIP***.

**LoadBalancer**

An external load balancer is allocated for the service (typically ELB, GLB, etc)

Your infrastructure provider must support these requests.

Generally the traffic will flow through a **NodePort** and then through your **ClusterIP** and finally into your **Pods**.
