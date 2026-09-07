# ☁️ AWS Network Infrastructure with Terraform

A hands-on DevOps project for provisioning AWS networking infrastructure using **Terraform** and Infrastructure as Code (IaC).

Built as part of the **IEEE Young Protégé 2026 – DevOps Mentorship Program**.

## 🏗️ Infrastructure

The Terraform configuration covers:

- 🌐 **VPC** – isolated AWS network
- 🔀 **Public & Private Subnets** – network segmentation
- 🌍 **Internet Gateway (IGW)** – internet access for public resources
- 🔒 **NAT Gateway** – outbound internet access for private resources
- 🛣️ **Route Tables** – public and private traffic routing

### Architecture

```text
                    AWS VPC
                       │
            ┌──────────┴──────────┐
            │                     │
      Public Subnet         Private Subnet
            │                     │
     Internet Gateway        NAT Gateway
            │                     │
         Internet               Internet
```

## 🛠️ Tech Stack

![Terraform](https://img.shields.io/badge/Terraform-IaC-844FBA?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-232F3E?logo=amazonwebservices&logoColor=white)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Collaboration-181717?logo=github&logoColor=white)

## 📁 Project Structure

```text
├── vpc.tf
├── subnet.tf
├── igw.tf
├── nat.tf
├── routes.tf
└── main.tf
```

## 🚀 Terraform Workflow

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

---

**DevOps Group 2 | IEEE Young Protégé 2026**
