# Nginx Ingress + Controller

![alt text](https://www.nginx.com/wp-content/uploads/2018/08/NGINX-logo-rgb-large.png)

Kubernetes orchestratate services and manages workload, uptime and failure recovery pretty seemlessly. Services running in the cluster are expose to each other for communication and data transmission. However, these services has to respond to the outside events or internet traffic which requires a gateway which exposes a common endpoint for all the services running in the cluster. Routing to different services needs service name and labels. K8s comes with default ingress for HTTP LoadBalancing, that define rule for external connectivity to kubernetes services.

The NGINX Ingress Controller for Kubernetes provides enterprise‑grade delivery services for Kubernetes applications, with benefits for users of both NGINX Open Source and NGINX Plus. With the NGINX Ingress Controller for Kubernetes, you get basic load balancing, SSL/TLS termination, support for URI rewrites, and upstream SSL/TLS encryption.

# Getting Started

In order to install Nginx ingress change directory to the folder which contains Makefile
and run the following command:

    make install CLUSTER_ADMIN=<your_email_id>

**CLUSTER_ADMIN** is a mandatory field

This will perform series of operations which include:

* Creating cluster-admin and clusterrolebinding
* Downloading and installing Nginx Ingress Controller
* Installing Nginx Ingress rules

To uninstall just run

   ``` 
   make delete
   ```
It will unstall ingress rules and controller.