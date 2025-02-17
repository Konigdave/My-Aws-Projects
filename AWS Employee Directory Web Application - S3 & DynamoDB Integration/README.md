# 🚀 AWS Employee Directory Web Application - S3 & DynamoDB Integration  

## 🌍 Overview  
This project demonstrates how to integrate an AWS-hosted **Employee Directory Web Application** with **Amazon S3 and DynamoDB** using:  
✅ **Amazon S3 Bucket to store employee photos**  
✅ **IAM Roles & S3 Bucket Policies for secure access**  
✅ **Amazon DynamoDB Table for employee data storage**  
✅ **EC2-hosted Employee Directory Web Application**  
✅ **Managing DynamoDB items via AWS Console & Web UI**  

At the end of this project, the **employee directory application dynamically retrieves and displays employee data** from DynamoDB, including images stored in S3. 🎉  

---

## **📸 Screenshots**  
| S3 Bucket | Employee Web App | DynamoDB Table |  
|------------|----------------|---------------|  
| ![create bucket1](https://github.com/user-attachments/assets/0efe3edd-28df-4a2b-9c44-d1680fe02836) | ![employee directory config 3](https://github.com/user-attachments/assets/f7f9c3dc-c58f-4439-af6b-0ba19c1e004c) | ![new employee via management console10](https://github.com/user-attachments/assets/dbef48b4-86a7-4e5a-a0a1-5c216e41fc61) |  

---

## 🚀 **Step-by-Step Implementation**  

### **1️⃣ Create an Amazon S3 Bucket for Employee Images**  
📌 **What I Did:**  
- Created an **S3 Bucket** named `employee-photo-bucket-konigdave-0994`  
- Ensured **Block Public Access** was enabled for security  
- Uploaded **employee images** to the bucket  

📌 **Why?**  
- S3 provides **scalable and durable** storage for images  
- Ensuring **private access** protects employee data  

---

### **2️⃣ Configure an S3 Bucket Policy for IAM Role Access**  
📌 **What I Did:**  
- Created an **S3 bucket policy** to allow the Employee Directory App to access images  
- Attached the policy to the IAM Role **EmployeeDirectoryAppRole**  

📌 **Why?**  
- IAM Roles allow **secure API requests** without needing credentials  
- The bucket policy grants **read access only to the application**  

---

### **3️⃣ Associate the S3 Bucket with the Employee Directory App**  
📌 **What I Did:**  
- Opened the **Employee Directory Web Application**  
- Navigated to **Configuration Settings**  
- Entered the **S3 Bucket Name** (`employee-photo-bucket-konigdave-0994`)  

📌 **Why?**  
- This allows the web application to **retrieve images from S3 dynamically**  

---

### **4️⃣ Create an Amazon DynamoDB Table for Employee Data**  
📌 **What I Did:**  
- Created a **DynamoDB Table** named `Employees`  
- Defined **Primary Key:** `id (String)`  

📌 **Why?**  
- DynamoDB provides **fast & scalable** NoSQL database storage  
- The application needs structured **employee data**  

---

### **5️⃣ Add Employee Records via Web Application**  
📌 **What I Did:**  
- Navigated to **Employee Management** in the web app  
- Added new employees (Name, Location, Email, Photo)  

📌 **Why?**  
- The web application **writes employee data to DynamoDB**  
- Employee profiles are now dynamically updated  

---

### **6️⃣ Manage Employee Data via AWS DynamoDB Console**  
📌 **What I Did:**  
- Used **DynamoDB Console** to edit and delete employee records  
- Verified changes reflected in the **Employee Directory Web App**  

📌 **Why?**  
- Demonstrates **how DynamoDB stores & updates data dynamically**  
- Web app and AWS Console **sync in real-time**  

---

## **💡 Key Takeaways**  
✔️ **IAM Roles enable secure AWS API access without credentials**  
✔️ **S3 Bucket Policies restrict access to only authorized applications**  
✔️ **DynamoDB provides fast, scalable NoSQL storage for structured data**  
✔️ **Web applications can dynamically interact with AWS storage services**  

---

## **📌 Next Step**  
🔹 Configure **High Availability** for the application 


---

## 🔗 **Resources**  
📖 [AWS S3 Documentation](https://docs.aws.amazon.com/s3/)  
📖 [AWS DynamoDB Documentation](https://docs.aws.amazon.com/dynamodb/)  

---

