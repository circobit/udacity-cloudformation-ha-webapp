# 🚀 High-Availability Web App Deployment with AWS CloudFormation

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazonaws&logoColor=white)
![CloudFormation](https://img.shields.io/badge/CloudFormation-%23232F3E.svg?style=for-the-badge&logo=amazonaws&logoColor=white)
![EC2](https://img.shields.io/badge/EC2-%23FF9900.svg?style=for-the-badge&logo=amazonaws&logoColor=white)
![Auto Scaling](https://img.shields.io/badge/Auto%20Scaling-%23FF9900.svg?style=for-the-badge&logo=amazonaws&logoColor=white)
![Load Balancer](https://img.shields.io/badge/Load%20Balancer-%23FF9900.svg?style=for-the-badge&logo=amazonaws&logoColor=white)

## 📖 Overview

This project demonstrates the deployment of a highly available web application using AWS CloudFormation. The infrastructure is defined as code, ensuring consistency and scalability. Key components include:

- **VPC** with public and private subnets across multiple Availability Zones
- **Internet Gateway** and **NAT Gateways** for internet access
- **Security Groups** to control inbound and outbound traffic
- **EC2 Instances** managed by an **Auto Scaling Group**
- **Application Load Balancer** for distributing incoming traffic
- **IAM Roles** for secure access to AWS services

---

## 🗂️ Project Structure

```
.
├── network
│   ├── network.yml
│   └── network-parameters.json
├── servers
│   ├── servers.yml
│   └── servers-parameters.json
├── static-content
│   └── index.html
├── helpers
│   ├── create.sh
│   └── delete.sh
└── README.md
```

- **network**: Defines the VPC, subnets, route tables, and gateways.  
- **servers**: Configures EC2 instances, security groups, and the load balancer.  
- **static-content**: Contains the HTML file to be served by the web application.  
- **helpers**: Shell scripts to automate stack creation and deletion.  

---

## 🛠️ Deployment Instructions

1. **Create the Network Stack**

   ```bash
   cd helpers
   ./create.sh udagram-network ../network/network.yml ../network/network-parameters.json
   ```

2. **Create the Servers Stack**

   ```bash
   ./create.sh udagram-servers ../servers/servers.yml ../servers/servers-parameters.json
   ```

3. **Access the Application**

   After deployment, retrieve the Load Balancer's DNS name from the CloudFormation Outputs section and navigate to it in your browser.

---

## 🧰 Technologies Used

- **AWS CloudFormation** – Infrastructure as Code  
- **Amazon EC2** – Virtual server instances  
- **Elastic Load Balancing** – Distributes incoming traffic  
- **Auto Scaling** – Ensures application availability  
- **Amazon S3** – Hosts static web content  
- **IAM** – Manages access to AWS services  

---

## 🎯 Key Learnings

- Designing a fault-tolerant and scalable infrastructure  
- Automating resource provisioning with CloudFormation  
- Implementing security best practices with IAM and Security Groups  
- Managing application deployment in a CI/CD pipeline  

---

## 📸 Architecture Diagram

![Architecture Diagram](https://github.com/circobit/udacity-cloudformation-ha-webapp/blob/main/images/2-udagram-infra-diagram.png)

---

## 🙌 Author

Made with ❤️ and 🧉 by [Cristian Cevasco](https://github.com/circobit)
