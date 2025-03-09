# 🚀 AWS Network Troubleshooting Project 

This project focuses on **troubleshooting and analyzing network traffic** using various Linux commands. These tools help identify network issues, verify connectivity, and capture live network packets.

## 📌 Overview  
In this lab, I used multiple networking tools to analyze **network paths, TCP connections, HTTP requests, DNS resolution, and packet capturing** between two Amazon EC2 instances.

### 🔹 **Tools Used:**  
✔️ `traceroute` – Trace the network path from the EC2 instance to a destination  
✔️ `ifconfig` – Display network interface configuration  
✔️ `telnet` – Test TCP connections to specific ports  
✔️ `netstat` – View active network connections and listening ports  
✔️ `curl` – Send HTTP requests to check server responses  
✔️ `dig` – Perform DNS lookups  
✔️ `tcpdump` – Capture network traffic  

---

## 🔹 **1️⃣ Running `traceroute`**  
👉 **Installed and ran `traceroute` to track packet hops to aws.amazon.com.**  
```bash
sudo yum install traceroute -y  
traceroute aws.amazon.com
```
✅ Used to diagnose network latency issues and routing paths.
![install traceroute](https://github.com/user-attachments/assets/3240f271-5fa4-49f0-af7b-0e4d4756fc87)


## 🔹 **2️⃣ Running `ifconfig`** 
👉 **Checked network interfaces on the EC2 instance.** 
```bash
ifconfig
```
✅ Displayed private IP, netmask, and MTU for troubleshooting connectivity.
![ifconfig](https://github.com/user-attachments/assets/76fa9a8a-406e-41c7-bb79-d21d4cacaa4c)


## 🔹 **3️⃣ Running `telnet`**  
👉 **Installed `telnet` to test TCP connectivity.** 
```bash
sudo yum install telnet -y  
telnet <PRIVATE_IP_OF_INSTANCE_B>
```
✅ Validated that the instance was reachable on a specific port.
![install telnet](https://github.com/user-attachments/assets/7c789053-5fb5-4940-8e7a-3292e9b39b45)


## 🔹 **4️⃣ Running `netstat`**  
👉 **Checked active network connections and listening ports.** 
```bash
sudo netstat -tp
```
✅ Confirmed which services were running and which ports were open.
![netstat](https://github.com/user-attachments/assets/8c8eb1b3-9e46-4216-8484-c87fce510ef1)


## 🔹 **5️⃣ Running `curl`**  
👉 **Verified web server response with HTTP status codes.**
```bash
curl -vLo /dev/null https://aws.amazon.com
curl <PUBLIC_IP_OF_INSTANCE_B>
```
✅ Confirmed web app availability and analyzed HTTP response headers.
![curl](https://github.com/user-attachments/assets/e3b14e12-5347-442e-a446-02bd1d0a1544)


## 🔹 **6️⃣ Running `dig`**  
👉 **Queried DNS records to check domain resolution.**
```bash
sudo yum install bind-utils -y  
dig aws.amazon.com
```
✅ Displayed CNAME records, A records, and query response times.
![dig amazon com](https://github.com/user-attachments/assets/2f08d628-b5ea-4a66-a426-914ffa0cb5cb)


## 🔹 **7️⃣ Running `tcpdump`** 
👉 Captured live network packets on Instance B for HTTP traffic.
```bash
sudo yum install tcpdump -y  
sudo tcpdump -nn port 80
```
✅ Analyzed TCP three-way handshake and HTTP requests from Instance A.
![tcpdump install](https://github.com/user-attachments/assets/54d108ba-6ce5-4ecc-9c53-d84a79e34939)
![tcpdump](https://github.com/user-attachments/assets/4c72f570-5da4-463c-9c3e-84a90f007b5c)


💡 Key Takeaways:

✔️ **traceroute**  helps pinpoint network delays and unreachable hosts.

✔️ **ifconfig**  and **netstat**  verify network configurations and open ports.

✔️ **telnet**  is useful for testing if a remote server is accepting connections.

✔️ **curl**  and dig help analyze web responses and DNS resolution.

✔️ **tcpdump**  provides detailed packet-level network analysis.

