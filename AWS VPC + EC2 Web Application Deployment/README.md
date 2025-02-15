# 🚀 AWS VPC + EC2 Web Application Deployment  

## 🌍 Overview  
This project demonstrates how to set up a **scalable AWS networking environment** and deploy a **Node.js web application** using:  
✅ **Amazon VPC with two public subnets**  
✅ **Internet Gateway & Route Table for external access**  
✅ **Security Groups to control inbound and outbound traffic**  
✅ **Amazon EC2 Instance for hosting a web application**  
✅ **User Data Script to install Node.js and deploy an app from S3**  

At the end of this project, we successfully launched a **web application on AWS** that is accessible over HTTP. 🎉  

---

## **📸 Screenshots**  
| VPC Setup | Security Groups | Launched Instance success | Web Application Running | 
|------------|----------------|---------------|  ---------------|
| ![create vpc1](https://github.com/user-attachments/assets/bcbf19cd-4a61-4653-9f85-3c92a9ad297a) | ![create security group 4](https://github.com/user-attachments/assets/48b17eac-aa1c-4860-ab55-381dad55cedd) | ![Launch an instance success 2 checks passed7](https://github.com/user-attachments/assets/3514760d-5f3c-4ca5-a3d9-4528fc136a75) |![employee webpage final 8](https://github.com/user-attachments/assets/df3ed272-60c7-4ffa-a1ff-e68b10429c67)  

---

## 🚀 **Step-by-Step Implementation**  

### **1️⃣ Create a VPC with Two Public Subnets**  
📌 **What I Did:**  
- Created **VPC (`10.0.0.0/16`)**  
- Configured **Subnet 1 (`10.0.0.0/24`)** & **Subnet 2 (`10.0.1.0/24`)**  
- Enabled **DNS resolution & DNS hostnames**  

📌 **Why?**  
- The VPC provides **full network control** over AWS resources.  
- The two subnets allow **high availability** across different availability zones.  

---

### **2️⃣ Set Up an Internet Gateway & Route Table**  
📌 **What I Did:**  
- Created an **Internet Gateway (IGW)** and attached it to the VPC.  
- Configured a **Route Table** and added a route:
- Destination: 0.0.0.0/0 Target: Internet Gateway
- Associated this route table with both public subnets.  

📌 **Why?**  
- The Internet Gateway allows **public instances to communicate with the internet**.  
- The Route Table ensures that instances in public subnets can **send/receive traffic** from the internet.  

---

### **3️⃣ Configure a Security Group for Web Traffic**  
📌 **What I Did:**  
- Allowed **HTTP (Port 80) from Anywhere (`0.0.0.0/0`)**  
- Allowed **SSH (Port 22) only from my IP (`MyIP/32`)**  

📌 **Why?**  
- HTTP is needed to serve web content.  
- SSH is restricted to prevent **unauthorized access** to the server.  

---

### **4️⃣ Launch an EC2 Instance for the Web Application**  
📌 **What I Did:**  
- Selected **Amazon Linux 2023** (`t3.micro`, as required by the lab).  
- Chose **MyVPC & a Public Subnet**.  
- Enabled **Auto-Assign Public IP**.  
- Assigned the **Security Group** created earlier.  

📌 **Why?**  
- The instance serves as our **web server**.  
- The public IP allows **external access** via HTTP.  

---

### **5️⃣ Use a User Data Script to Set Up a Node.js Web Application**  
📌 **What I Did:**  
Used a **User Data Script** to:  
✅ Install system updates  
✅ Install Node.js using NVM  
✅ Download and extract the app from S3  
✅ Install dependencies & start the app  

```bash
#!/bin/bash -ex

# Update yum
yum -y update

# Install Node.js via NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node.js
nvm install 20

# Create a dedicated directory for the application
mkdir -p /var/app

# Download the app from S3
wget https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/ILT-TF-100-TECESS-5/app/app.zip

# Extract the application
unzip app.zip -d /var/app/
cd /var/app/

# Install dependencies and start the app
npm install
npm start
```

📌 Why?

Automates installation & configuration of Node.js.
Ensures that the web application starts automatically.

6️⃣ Access the Web Application
📌 What I Did:

Opened a browser and entered:

http://<[EC2-Public-IP](http://34.212.31.183/#/)>

Successfully displayed the web application running on AWS EC2! 🎉

The server is now **publicly accessible** over HTTP, allowing users to interact with the hosted web application.

## 💡 Key Takeaways
✔️ **VPC (Virtual Private Cloud)** allows full control over networking in AWS.  
✔️ **Security Groups** act like firewalls for EC2 instances, controlling inbound and outbound traffic.  
✔️ **User Data Scripts** automate software installation at launch, reducing manual setup.  
✔️ A properly configured **EC2 instance** can serve web applications publicly.  

## 📌 Next Steps
🔹 **Automate** VPC & EC2 setup using **Terraform**.  
🔹 **Implement a Load Balancer** for better **availability** and fault tolerance.  
🔹 **Deploy a full CI/CD pipeline** using **AWS CodePipeline** for automated deployments.  

## 🔗 Resources
📖 [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/)  
📖 [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)  

