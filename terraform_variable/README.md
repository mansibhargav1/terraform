# Terraform Variables Example

This project demonstrates how to use **Terraform variables** with the **local provider** to dynamically create files.

## 📁 Project Structure

```
terraform_variable
│
├── main.tf
├── variables.tf
├── README.md
```

## ⚙️ What This Project Does

Terraform uses the **local provider** to create a file named:

```
message.txt
```

The content of this file is defined using a **Terraform variable**.

Example output:

```
Hello from Terraform variables!
```

## 🧠 Concepts Covered

* Terraform Providers
* Terraform Resources
* Terraform Variables
* Terraform Initialization
* Terraform Plan & Apply

## 🧾 Files Explanation

### main.tf

Defines the Terraform configuration:

* Uses the **local provider**
* Creates a resource `local_file`
* File content is taken from a variable

### variables.tf

Defines the Terraform variable:

```
variable "file_content"
```

This variable controls what content will be written into the file.

## 🚀 How to Run This Project

### 1️⃣ Initialize Terraform

```
terraform init
```

### 2️⃣ Check Execution Plan

```
terraform plan
```

### 3️⃣ Apply the Configuration

```
terraform apply
```

After applying, Terraform will create:

```
message.txt
```

## 📦 Provider Used

```
hashicorp/local
```

Version:

```
2.4.0
```

## 📚 Learning Purpose

This project is part of a **Terraform learning series** covering core concepts required for DevOps and Infrastructure as Code.

---

⭐ Created for Terraform practice and GitHub portfolio.

