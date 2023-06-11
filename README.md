# Instabug-Infrastructure-Internship-Challenge 2023

## What I have done so far
1. Dockerizing the API GoLang app
    1. Multi-step build process to minimize the final image output to (14.6MB).
    3. Writing docker-compose file with MYSQL database that is working as required.

2. Writing CI/CD pipeline with Jenkins 
    1. Build the image successfully with the commit number & latest tag.
    2. Push the image to my docker hub registry.
    3. Provide an email notification service that is configured to send notifications when a build fails.

3. Creating Helm manifests for Kubernetes
    1. Created 9 resources to securely deploy the application.
    2. Configure the resources to ensure high availability.. etc.
    3. Making a kustomization file to organize the resources.


## Bunes tasks that i have implemented.
    1. Adding an autoscaling manifest for the number of replicas.
    2. Adding an ArgoCD app that points to helm manifests to apply GitOps concept.
    3. Using non-root user to add security to the container.
    4. Fixing a bug in the main.go => "GET" request.


## Screenshots of the running app on local and Production
1. Photo of the docker image after compression to (14.7mg)

![](assets/images/00-image-size.png)

2. Docker-compose working fine.

![](assets/images/01-Docker-compose-working.png)

3. Deploying the App in K8s successfully.

![](assets/images/02-Deploying-the-app-in-k8s.png)

4. Testing the "POST" request.

![](assets/images/03-testing-the-post-api.png)

5. Testing the "GET" request after fixing it 

![](assets/images/04-GET-after-fixing.png)

6. A sample to test the PATCH request(Before).

![](assets/images/06-before-PATCH.png)

7. Testing The-PATCH-request

![](assets/images/05-PATCH.png)

8. After the PATCH request

![](assets/images/07-After-PATCH.png)



##ArgoCD with helmcharts 

1. ArgoCD is working well in kubernates 

![](assets/images/08-argocd-is-runnung.png)


2. ArgoCD working deployment after updating helmcharts


![](assets/images/09-argocd-afterupdating-number-of-replicas.png)


3. Ensuring that the application working as expected


![](assets/images/10-ensuring-that-the-svc-working.png)


4. The End ,I hope :D
















