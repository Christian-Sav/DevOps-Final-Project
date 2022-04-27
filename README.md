# DevOps-Final-Project
Repository containing all relevant files for Devops Final Project

## Contents: 
* [Project Brief](#Project-Brief)
* [Scope](#Scope)
* [Project Planning](#Project-Planning)
   * [Created With](#Created-With) 

## Project Brief
We were required to plan, design and implement a solution for automting the development workflows and deployments of the following application. We had to consider what tools worked best for us; Terraform , Kubernetes, Docker, Github, Jenkins and Jira. We had to consider how a developer can test new features on an enviroment before merging their changes to the main branch and how changes on a GitHub repository could automatically build and deploy to testing and LIVE enviroments. As well as the technical considerations we also had to consider the running costs and our monthly estimates.

https://github.com/spring-petclinic/spring-petclinic-angular <br />
https://github.com/spring-petclinic/spring-petclinic-rest <br />

Our roles for the project were the following:

Scrum master - Amit <br />
Product owner - Christian <br />
Uche - Developer <br />
William - Developer <br />
Majid - Developer <br />

## Scope
Our Team was required to work with these externally developed applictions:

* [Spring Pet Clinic Angular](https://github.com/spring-petclinic/spring-petclinic-angular) 
* [Spring Pet Clinic Rest](https://github.com/spring-petclinic/spring-petclinic-rest) 

The Spring Pet Clinic Angular contained the Front End of the application of which the user would direcly interact with whilst the Spring Pet Clinic Rest containe the Back End of the application.

As mentioned previously we were required to plan, design and implement automtomation for the deployments of the application as part of the development workflows and any further deployment of the application.

## Project Planning
During our first week we help daily project planning meetings in order to establish what technologies we are using and how we are goign to proceed as well as completing a Risk assessment and starting our Jira Board. However during our week of development our team was required and proceeded to run daily scrums with our Trainer present in order to record prgress, discuss implementations and ensure the maintrainence of the project planning board. The board was a significant piece of the project as it assisted with tracking progress and viewing what tasks were yet to be completed.

### Created With:

The technologies we used to complete our CI/CD Pipeline were:
* Git - version Control.
* Github - In order to manage our repository and to manage our workflow.
* AWS - Our Cloud Platform was Amazon Web Services as we had newly developed our talents and wanted to demonstrate how we would implement what we have learnt including the technologies relating to it such as:
   * AWS EKS - which was used in order to start, run and scale our kubernetes (k8s) functionalites.
* Terrafrom - We used Terraform in order to automate the creation of our instances on AWS.
* Docker / Docker Compose - was used in order to create our containers on Docker hub for used as Kubernetes pods.
* Kubernetes - To orchestrate and manage our containers and virtual machines.
* Jenkins - was used as our CI server to automate the building and deployment of the project with a webhook from Github.
* Nginx - To act as a reverse Proxy.


