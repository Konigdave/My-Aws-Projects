# 🚀 AWS Auto Scaling & Load Balancer Deployment for Employee Directory App  

## 🌍 Overview  
This project demonstrates how to scale an **EC2-hosted Employee Directory web application** using:  
✅ **Amazon EC2 Auto Scaling** for dynamic instance management  
✅ **Application Load Balancer (ALB)** for traffic distribution  
✅ **Launch Templates** for consistent instance configuration  
✅ **Amazon S3 & DynamoDB Integration** for storing employee data  
✅ **Amazon SNS Notifications** for scaling events  

At the end of this project, I successfully deployed a **highly available, scalable web application** with automatic instance scaling. 🎉  

---

## **📸 Screenshots**  
| Load Balancer | Auto Scaling Group | Web Application | SNS Enabled |
|--------------|--------------------|----------------|----------------| 
| ![web app ALB created](https://github.com/user-attachments/assets/81b80d65-7225-4e65-8e49-1a27ec875607) | ![asg group 5](https://github.com/user-attachments/assets/77f6decd-4c5b-4b39-aaa4-066146446454) | ![ALB,SC set up 3](https://github.com/user-attachments/assets/00a99a50-2fea-41c5-aaa0-01c79fbf73de) | | ![SNS subscription service](https://github.com/user-attachments/assets/7ec113fa-3296-47a2-9a54-105b2995444f) |

---

## 🚀 **Step-by-Step Implementation**  

### **1️⃣ Review the Existing EC2 Instance & Web Application**  
📌 **What I Did:**  
- Verified that the **Employee Directory application** was running on a single EC2 instance  
- Checked instance details: **availability zone, security groups, and network settings**  

📌 **Why?**  
- Ensures the **base application is functioning properly** before adding scalability.  

---

### **2️⃣ Create an Application Load Balancer (ALB)**  
📌 **What I Did:**  
- Created an **Application Load Balancer (ALB)**  
- Configured **two Availability Zones (AZs)** for redundancy  
- Created a **Target Group** to manage web traffic  
- Set up a **Load Balancer Security Group** allowing HTTP traffic  

📌 **Why?**  
- The ALB **distributes incoming traffic across multiple instances** for better performance and fault tolerance.  

---

### **3️⃣ Create a Launch Template for Auto Scaling**  
📌 **What I Did:**  
- Created a **Launch Template** to standardize new EC2 instances  
- Configured it with:  
  - **Amazon Linux 2023 AMI**  
  - **Instance Type:** `t3.micro`  
  - **Security Group:** Web Security Group  
  - **IAM Role:** `EmployeeDirectoryAppRole`  
  - **User Data Script** to install dependencies and start the application  

```bash
#!/bin/bash -ex

# Update system
yum -y update

# Install Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 20

# Install Stress Tool for Load Testing
yum -y install stress

# Download and Deploy Web Application
mkdir -p /var/app
wget https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/ILT-TF-100-TECESS-5/app/app.zip
unzip app.zip -d /var/app/
cd /var/app/
npm install
npm start
```
## 📌 Why?  
Automates the web server setup and ensures every new EC2 instance is configured the same way.  

---

## 4️⃣ Create an Auto Scaling Group (ASG)  
### 📌 What I Did:  
- Created an **Auto Scaling Group (ASG)**  
- Configured **minimum 2, maximum 4 instances**  
- Attached the **Load Balancer Target Group**  
- Enabled **Elastic Load Balancer health checks**  
- Set up a **Scaling Policy:**  
  - Scale up when **CPU > 30%**  
  - Instance warm-up time: **300 seconds**  

### 📌 Why?  
ASG automatically adjusts capacity based on traffic & performance, improving reliability.  

---

## 5️⃣ Implement Amazon SNS for Scaling Notifications  
### 📌 What I Did:  
- Created an **SNS Topic (`lab-app-sns-topic`)**  
- Configured **email alerts** for scaling events  
- Confirmed the **subscription via email**  

### 📌 Why?  
Allows **real-time monitoring of scaling activities** without manually checking AWS Console.  

---

## 6️⃣ Test the Load Balancer & Auto Scaling Group  
### 📌 What I Did:  
- Terminated the **original EC2 instance**  
- Verified that the **ALB DNS Name correctly routes traffic**  
- Checked **Auto Scaling Group instances launching**  
- Refreshed the **web app** to confirm high availability  

### 📌 Why?  
Ensures the **system dynamically scales while maintaining uptime**.  

---

## 💡 Key Takeaways  
✔️ **Application Load Balancers** distribute traffic across multiple instances  
✔️ **Auto Scaling Groups** maintain performance & availability dynamically  
✔️ **Launch Templates** ensure consistent EC2 configuration  
✔️ **SNS** enables real-time monitoring of scaling events  

---

## 📌 Next Steps  
🔹 Automate deployment with **AWS CloudFormation**  
🔹 Implement a **CI/CD pipeline** using **AWS CodePipeline**  
🔹 Enable **HTTPS** on the ALB with **AWS Certificate Manager**  

---

## 🔗 Resources  
📖 [AWS ALB Documentation](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html)  
📖 [AWS Auto Scaling Documentation](https://docs.aws.amazon.com/autoscaling/)  

