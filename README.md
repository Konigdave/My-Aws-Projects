# 🔐 AWS IAM Hands-On Lab – Users, Groups, Policies & Service Access  

## 🌍 Overview  
This project explores **AWS Identity and Access Management (IAM)** by:  
✅ Managing **IAM users & groups**  
✅ Assigning **IAM policies & permissions**  
✅ Testing IAM sign-in access & permissions  
✅ Using **IAM Policy Simulator** for security testing  

---

## 📌 Key Concepts Covered  
- **IAM Users & Groups** → Assigning roles & managing access.  
- **IAM Policies** → AWS-managed vs. custom policies.  
- **IAM Sign-in URL** → Logging in as different IAM users.  
- **Policy Simulator** → Testing permissions before applying them.  

---

## 📸 Screenshots  
| IAM dashboard | IAM User Permissions/ group | IAM User permission granted |  
|------------|----------------|---------------|  
| ![IAM dashboard](https://github.com/user-attachments/assets/cf549af6-3294-4102-9d24-2d202432ae16) ![IAM Users](https://github.com/user-attachments/assets/4086111c-15c1-4145-95f4-172a6913a9b7)
![IAM Users groups](https://github.com/user-attachments/assets/0bb573c5-f6d7-4471-a10f-6905df9bd98f)
 | ![S3 Granted user permission](https://github.com/user-attachments/assets/df3f7c72-be6d-492c-b924-a360ebab92fa) | ![S3 Granted user3 permission STOP INSTANCE](https://github.com/user-attachments/assets/4b6aa263-f6d8-4afc-a84d-e1f9a32b9ef7) |  

---

## 🚀 Implementation Steps  
### **1️⃣ Exploring IAM Users & Groups**  
1. Navigate to **IAM Console** → **Users** → **View Users**.  
2. Inspect the pre-created IAM users:  
   - **user-1** (No permissions)  
   - **user-2** (No permissions)  
   - **user-3** (No permissions)  
3. Check IAM **Groups**:  
   - **EC2-Admin**  
   - **EC2-Support**  
   - **S3-Support**  

### **2️⃣ Assigning Users to Groups**  
- **user-1** → Added to **S3-Support** → Gains `AmazonS3ReadOnlyAccess`.  
- **user-2** → Added to **EC2-Support** → Gains `AmazonEC2ReadOnlyAccess`.  
- **user-3** → Added to **EC2-Admin** → Gains inline policy (`EC2-Admin-Policy`).  

### **3️⃣ Testing IAM User Access**  
1. **Sign in using the IAM Sign-in URL** for the account.  
2. **Log in as user-1** → Verify access to **S3** (can read but not modify).  
3. **Log in as user-2** → Verify access to **EC2** (can view but not stop/start instances).  
4. **Log in as user-3** → Verify access to **EC2** (can view & stop instances).  

### **4️⃣ Using IAM Policy Simulator**  
- Tested access restrictions for users.  
- Validated that **user-2 couldn't stop instances** but **user-3 could**.  

---

## 💡 Lessons Learned  
✔️ **IAM enforces the principle of least privilege** – Users only get the access they need.  
✔️ **IAM Sign-in URLs allow secure user login** without exposing root access.  
✔️ **IAM Policy Simulator helps prevent misconfigurations before applying changes.**  

---

## 🎯 Next Steps  
🔹 Automate IAM user creation using **Terraform or AWS CLI**.  
🔹 Implement **IAM Roles** for temporary permissions.  
🔹 Learn about **AWS Organizations & multi-account access control**.  

---

## 🔗 Resources  
📖 [AWS IAM Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/)  
📖 [IAM Policy Simulator](https://policysim.aws.amazon.com/)  

---



# 🚀 Hosting a Static Website on AWS S3 with CloudFront & Amplify  

## 🌍 Project Overview  
This project demonstrates how to host a static website on **AWS S3** and improve its performance & security using **AWS CloudFront & Amplify**. The site is deployed automatically via **GitHub**, making updates seamless.  

## 🔧 Tools & Services Used  
✅ **AWS S3** – For storing website files  
✅ **AWS CloudFront** – For caching & performance improvement  
✅ **AWS Amplify** – For automated deployment from GitHub   
✅ **GitHub** – For version control  

## 📌 Steps to Implement  
1️⃣ **Created an S3 bucket & uploaded website files.**  
2️⃣ **Enabled static website hosting.**  
3️⃣ **Connected CloudFront for performance & security.**  
4️⃣ **Used Amplify for automatic deployments from GitHub.**  

## ⚡ Challenges & Solutions  
- **CloudFront setup error?** → Used the **S3 website endpoint** instead of the bucket name.  
- **GitHub updates not reflecting?** → Fixed by reconnecting GitHub to Amplify.  

## 📸 Screenshots  
https://github.com/Konigdave/My-aws-amplify-website/blob/main/s3%20bucket.png

https://github.com/Konigdave/My-aws-amplify-website/blob/main/Amplify.png

https://github.com/Konigdave/My-aws-amplify-website/blob/main/Live%20Website.png

## 🎯 Live Demo  
🔗 **Website URL:** https://main.d3cb164j90x788.amplifyapp.com/ 

## 🔥 What I Learned  
- How to deploy a website using AWS services.  
- The benefits of using **CloudFront for caching & security**.  
- Automating deployments with AWS Amplify & GitHub.  

## 💡 Future Improvements  
- Implement **AWS WAF for security**.  
- Add a **CI/CD pipeline with GitHub Actions**.

Updated README with AWS IAM Lab
