# 🚀 Automating Nginx Deployment on Amazon EC2 Using AWS CLI & User Data

## **📌 Project Overview**
In this project, I automated the deployment of an **Nginx web server** on **Amazon EC2** using the **AWS CLI** and **user data scripts**. This setup ensures that the server is provisioned and configured automatically upon launch.

## **📁 Project Steps**
### **1️⃣ Review the user data script**
The `user-data.txt` script was reviewed to understand its purpose. The script does the following:
- Installs the Nginx web server (`yum install -y nginx`)
- Enables Nginx to start on boot (`systemctl enable nginx`)
- Starts the Nginx service (`systemctl start nginx`)
![cloud9 interfce with user script1](https://github.com/user-attachments/assets/4e844aee-167b-422b-8e24-71f747454ae9)


### **2️⃣ Update the AWS CLI command to create an EC2 instance**
The following `aws ec2 run-instances` command was used to launch an instance with:
- A specified **AMI**
- An **instance type** (`t2.micro`)
- A **security group**
- A **public subnet**
- A user data script (`user-data.txt`) for automation
![script to run new intsance 2](https://github.com/user-attachments/assets/1f8fe1d8-7a8a-4161-952b-df04415f4d7a)


```bash
aws ec2 run-instances \
--image-id <AMI_ID> \
--instance-type t2.micro \
--security-group-ids <SECURITY_GROUP_ID> \
--subnet-id <SUBNET_ID> \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Nginx}]' \
--user-data file://user-data.txt
```
![script to run new intsance configured 3](https://github.com/user-attachments/assets/e4f12cb7-0cdc-438e-8daa-37804b7a5e3a)


### **3️⃣ Retrieve the Public IP Address of the Instance**
After launching the instance, the following command was used to fetch its public IP:
```bash
aws ec2 describe-instances \
--filters "Name=tag:Name,Values=Nginx" \
--query "Reservations[*].Instances[*].PublicIpAddress" \
--output text
```
![describing instance 4](https://github.com/user-attachments/assets/7c496036-95b6-4967-9c99-e2d82fd3f124)


### **4️⃣ Verify Nginx is Running**
Copied the retrieved public IP address
Opened it in a browser to confirm the Nginx server was accessible
Saw the "Welcome to Nginx!" default page
![nginx web server page loaded 5](https://github.com/user-attachments/assets/e7196f1d-3864-44d7-9602-6bd080da4e48)

### **📌 Key Takeaways**
✔️ User Data allows automation of server setup on boot.

✔️ AWS CLI enables quick provisioning and configuration of EC2 instance.

✔️ describe-instances helps retrieve instance metadata programmatically.

✔️ Nginx can be installed, started, and managed using simple Linux commands.

### **📌 Next Steps**
🔹 Automate further with AWS CloudFormation

🔹 Implement a CI/CD pipeline for deployment

🔹 Secure the instance with proper IAM and firewall rules

### **🔗 Resources**
[AWS EC2 User Data Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html))


[AWS CLI Command Reference](https://docs.aws.amazon.com/cli/latest/reference/)

[Nginx Documentation](https://docs.nginx.com/nginx/deployment-guides/amazon-web-services/ec2-instances-for-nginx/)
