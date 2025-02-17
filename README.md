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
