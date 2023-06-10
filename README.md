# Instabug-Infrastructure-Internship-Challenge 2023

## What i have done so far
1. Dockerizing the api GoLang app
    1. Multi-step build process to minimize the final image output to (14.6MB).
    3. Writing docker-compose file with MYSQL database that is working as required.

2. Writing CI/CD pipeline with Jenkins 
    1. Build the image succesfuly with commit number & latest tag.
    2. Push the image to my docker hub regestry.
    3. Provide an email notification service that is configured to send notifications when a build fails.

3. Creating Helm manifests for kubernetes
    1. Creaeted 9 resources to securly deploy the application.
    2. Configure the resourses to ensure high availabilty..ect.
    3. Making a kustomization file to organaize the reasorces.


## Bunes tasks that i have implemented .
    1. Adding an autoscaling manifest for number of replicas.
    2. Adding an argocd app that points to helm manifests to apply gitops concept.
    3. Using non root user to add security to the contianier.
    4. Fixing a bug in the main.go => "GET" request.































