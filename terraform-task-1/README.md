> **Terraform: EC2 + VPC + Security Group + Key Pair + IP-Restricted SSH**

---

# 🚀 Terraform AWS Infrastructure Project

## 📄 Project Summary

This project demonstrates a **real-world Infrastructure as Code (IaC) workflow** using **Terraform** to provision a secure and production-like AWS environment. It automates the creation of a custom **VPC**, **public subnet**, **Internet Gateway**, **route tables**, **security groups**, and an **EC2 instance** with **SSH access restricted to your IP only**.

This repository serves as a strong foundational project for anyone preparing for **Cloud Engineer / DevOps / AWS Solutions Architect** roles.

---

## 🚀 About the Project

The core purpose of this project is to provide a **clean, secure, and beginner-friendly example** of how modern cloud infrastructure is provisioned using Terraform.

This project covers:

* **Terraform** → Infrastructure provisioning using declarative code
* **AWS VPC** → Custom networking environment
* **Public Subnet** → Internet-facing resources
* **Internet Gateway & Route Tables** → External connectivity
* **Security Group** → Firewall rules (SSH only from your IP)
* **EC2 Instance** → Compute resource
* **Key Pair** → Secure authentication
* **Terraform Outputs** → Dynamic values like IP and SSH command

⚡ *This project is portfolio-ready and demonstrates real-world AWS + Terraform skills expected from professional Cloud Engineers.*

---

## 🧱 Architecture Overview

### Components Used

| Component         | Purpose                  |
| ----------------- | ------------------------ |
| VPC               | Isolated virtual network |
| Public Subnet     | Hosts the EC2 instance   |
| Internet Gateway  | Enables internet access  |
| Route Table       | Routes outbound traffic  |
| Security Group    | Firewall for instance    |
| EC2 Instance      | Virtual server           |
| Key Pair          | Secure login             |
| Terraform Outputs | Displays useful info     |

---

### Architecture Flow

```
Your IP
   ↓
Internet
   ↓
Internet Gateway
   ↓
Public Subnet
   ↓
EC2 Instance
```

🔐 SSH access is allowed **only from your IP (/32)**.

---

## 🛠️ Prerequisites

Before you begin, make sure you have:

| Tool               | Required |
| ------------------ | -------- |
| Terraform          | ✅        |
| AWS Account        | ✅        |
| AWS CLI Configured | ✅        |
| SSH Client         | ✅        |

---

## ⚙️ How to Run

### Step 1: Clone the Repository

```bash
git clone https://github.com/vaibhavnalla15/terraform-aws-projects.git
cd terraform-aws-projects
```

---

### Step 2: Initialize Terraform

```bash
terraform init
```

---

### Step 3: Validate the Configuration

```bash
terraform validate
```

---

### Step 4: Preview the Plan

```bash
terraform plan
```

---

### Step 5: Apply the Configuration

```bash
terraform apply
```

Type `yes` when prompted.

Terraform will automatically:

* Create networking components
* Launch EC2
* Configure security
* Attach key pair
* Output SSH details

---

## 🔐 How to SSH (IP-Restricted Access)

This project follows **security best practices** by allowing SSH access **only from your public IP address**.

### Steps

1. After `terraform apply`, Terraform will output:

   * EC2 public IP
   * Ready-to-use SSH command

2. Connect using:

```bash
chmod 400 your-key.pem
ssh -i your-key.pem ec2-user@<public-ip>
```

Replace:

* `your-key.pem` → Your private key
* `<public-ip>` → Output from Terraform

---

### Why This Is Secure?

| Feature              | Benefit                      |
| -------------------- | ---------------------------- |
| IP-restricted SSH    | Prevents unauthorized access |
| No open ports        | Reduced attack surface       |
| Least privilege      | Best practice                |
| No hardcoded secrets | Secure design                |

---

## 🧨 How to Destroy

To prevent unnecessary AWS charges, destroy all resources using:

```bash
terraform destroy
```

This removes:

* EC2 instance
* Security group
* Route tables
* Internet gateway
* Subnet
* VPC
* All dependencies

---

## 📁 Project Structure

```
Terraform-aws-projects/
└── terraform-task-1/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── provider.tf
    ├── terraform.tfvars
    └── README.md
```

---

## 📤 Terraform Outputs

After deployment, Terraform displays:

| Output        | Description        |
| ------------- | ------------------ |
| EC2 Public IP | Used for SSH       |
| SSH Command   | Ready-to-use login |
| VPC ID        | Reference          |
| Subnet ID     | Reference          |

---

## 🧠 Best Practices Followed

| Best Practice             | Implemented |
| ------------------------- | ----------- |
| Infrastructure as Code    | ✅           |
| Least privilege           | ✅           |
| IP-restricted SSH         | ✅           |
| Clean resource dependency | ✅           |
| Reusable variables        | ✅           |
| Meaningful outputs        | ✅           |
| Idempotent design         | ✅           |
| Easy teardown             | ✅           |
| Production-style layout   | ✅           |

---

## 🎯 Learning Outcomes

By completing this project, you will learn:

* How AWS VPC networking works
* Public vs private networking
* How Terraform manages dependencies
* How to secure EC2 instances
* Real-world Terraform workflows
* Cloud security fundamentals
* Infrastructure automation

---

## 🏁 Conclusion

This project demonstrates **secure, automated, and real-world AWS infrastructure provisioning** using Terraform. It is an excellent foundational project for:

* AWS Solutions Architect
* DevOps Engineer
* Cloud Engineer

---
