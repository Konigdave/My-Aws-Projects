# AWS Security Group & Network Troubleshooting Lab

This project documents my hands-on experience configuring AWS security groups, testing network connectivity, and troubleshooting security group-related issues in an Amazon VPC environment.

---

## 📌 Overview
In this lab, I worked with different AWS services to:

- ✅ Configure and modify security group rules for EC2 instances  
- ✅ Test SSH connectivity and restrict access based on security policies  
- ✅ Troubleshoot Apache web server connectivity issues using security groups   

---

## 🛠 Tasks Completed

### 1️⃣ Inspecting Security Groups
- Checked the **App Server security group (AppServerSG)** inbound and outbound rules  
- Identified a security policy violation: SSH allowed from **0.0.0.0/0** (noncompliant)  
- Reviewed outbound rules permitting all traffic (default behavior)
 ![security group  outbound](https://github.com/user-attachments/assets/d85db4c3-13aa-45d4-a038-e49597759b13)


### 2️⃣ Testing SSH Connectivity
- Used AWS Session Manager to SSH into Bastion Host & Public Server  
- Attempted SSH connection to App Server from both instances  
- Confirmed that Public Server had unauthorized access to App Server (noncompliant behavior)
  ![connection to public server 3](https://github.com/user-attachments/assets/aba51c1b-35e9-4121-a1d0-dbc7f339e529)
![connecting to public server via private server](https://github.com/user-attachments/assets/6610a40a-69b7-4bbe-8be1-4b83e0941bdd)
 

### 3️⃣ Restricting SSH Access
- Updated **AppServerSG** to allow SSH traffic **only from the Bastion Host’s private IP**  
- Verified Public Server **could no longer access** App Server via SSH (now compliant)  
- Confirmed SSH connection from Bastion Host to App Server was still functional
  ![inbound rules adjusted for priavte server](https://github.com/user-attachments/assets/5e3ecc91-702d-4c50-b150-04ffca015c96)


### 4️⃣ Referencing Security Groups for Access Control
- Modified **AppServerSG** to allow SSH access from **BastionHostSG** instead of a single IP  
- Assigned **BastionHostSG** to Public Server, making it a second Bastion Host  
- Confirmed successful SSH access from both Bastion Host instances
  ![change security group to bastion](https://github.com/user-attachments/assets/fb7e92c4-cd13-42bf-b31c-7eca02d8c743)


### 5️⃣ Troubleshooting Apache Server Connectivity
- Attempted to access Apache Server via its public IP in a web browser  
- Found that the security group lacked inbound **HTTP (port 80)** rules  
- Updated the **ApacheServerSG** to allow HTTP traffic from **0.0.0.0/0**  
- Successfully accessed the Apache test page, confirming the fix
![mistake url not fetched](https://github.com/user-attachments/assets/e0ca1da4-f66b-43e4-b88d-523a4ec67f09) 
![it works](https://github.com/user-attachments/assets/a1e73f61-79ec-4fee-9d44-8a4f692ef179)


---

## 💡 Key Takeaways
✔️ AWS **Security Groups** are crucial for managing access control within VPCs  
✔️ **Bastion Hosts** provide a secure way to SSH into private instances  
✔️ Using **security group references** improves flexibility over static IP rules  
✔️ Network troubleshooting tools (`traceroute`, `tcpdump`, `curl`, `dig`, etc.) help diagnose connectivity issues  

---

## 📌 Next Steps
🔹 Automate security group configurations using **AWS CloudFormation**  
🔹 Implement **IAM policies** for more granular access control  
🔹 Secure Apache Server further with **HTTPS & AWS Certificate Manager**  

---

## 🔗 Resources
- 📖 [AWS Security Group Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)  
- 📖 [AWS Networking & Security Best Practices](https://aws.amazon.com/security/)  
