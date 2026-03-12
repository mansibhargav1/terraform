# Terraform Variables Example

## 📌 Project Overview

This project demonstrates how to use **Terraform variables** to make Terraform configurations **dynamic and reusable**.

Terraform creates a **local file** using the `local` provider, and the **content of the file is controlled by a Terraform variable**.

Instead of hardcoding values inside the Terraform configuration, variables allow us to pass values dynamically.

---

# 📁 Project Structure

```
terraform_variable
│
├── main.tf
├── variables.tf
├── message.txt
├── terraform.tfstate
└── README.md
```

| File              | Description                  |
| ----------------- | ---------------------------- |
| main.tf           | Main Terraform configuration |
| variables.tf      | Defines Terraform variables  |
| message.txt       | File created by Terraform    |
| terraform.tfstate | Stores infrastructure state  |
| README.md         | Project documentation        |

---

# ⚙️ Terraform Configuration

## main.tf

```hcl
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  filename = "message.txt"
  content  = var.file_content
}
```

This configuration:

* Uses the **local provider**
* Creates a file called **message.txt**
* Writes content using a **Terraform variable**

---

## variables.tf

```hcl
variable "file_content" {
  description = "Content of the file"
  type        = string
  default     = "Hello from Terraform variables!"
}
```

This defines a variable called **file_content**.

Terraform will use this value when creating the file.

---

# 🔑 What is a Terraform Variable?

A **Terraform variable** is used to make Terraform configurations **flexible and reusable**.

Instead of writing fixed values in the configuration, variables allow you to **provide values dynamically**.

Example without variable:

```
content = "Hello from Terraform variables!"
```

Example using variable:

```
content = var.file_content
```

Terraform will take the value from the variable and apply it to the resource.

---

# ❓ Why We Use Terraform Variables

Variables help to:

* Avoid **hardcoded values**
* Make configurations **reusable**
* Support **multiple environments**
* Improve **code maintainability**
* Allow **dynamic configuration**

Example environments:

| Environment | File Content                |
| ----------- | --------------------------- |
| Dev         | Dev environment message     |
| Staging     | Staging environment message |
| Production  | Production message          |

Same Terraform code can be used — only variable values change.

---

# 📍 When to Use Terraform Variables

Variables are commonly used for:

* Instance types
* Cloud regions
* File names
* Application names
* Environment configuration
* Database credentials
* API keys

Example:

```
variable "region"
variable "instance_type"
variable "environment"
```

---

# ⚙️ How to Use Terraform Variables

## 1️⃣ Define the Variable

Inside **variables.tf**

```
variable "file_content" {
  description = "Content of the file"
  type        = string
}
```

---

## 2️⃣ Use the Variable in Resource

Inside **main.tf**

```
content = var.file_content
```

Terraform reads the value from the variable.

---

## 3️⃣ Provide Variable Value

There are multiple ways to provide variable values.

### Option 1 — Default Value

Defined inside `variables.tf`.

```
default = "Hello from Terraform variables!"
```

---

### Option 2 — Command Line

```
terraform apply -var="file_content=Hello from CLI"
```

---

### Option 3 — tfvars File

Create a file:

```
terraform.tfvars
```

Example:

```
file_content = "Hello from tfvars file"
```

---

# 🚀 How to Run This Project

### 1️⃣ Initialize Terraform

```
terraform init
```

Downloads required provider plugins.

---

### 2️⃣ Check Terraform Plan

```
terraform plan
```

Shows what Terraform will create.

---

### 3️⃣ Apply Configuration

```
terraform apply
```

Terraform will create the file:

```
message.txt
```

---

# 📄 Result

Terraform creates a file:

```
message.txt
```

File content:

```
Hello from Terraform variables!
```

---

# 📦 Terraform State File

Terraform stores infrastructure information in:

```
terraform.tfstate
```

This file tracks:

* Created resources
* Resource attributes
* Infrastructure metadata

⚠️ Best practice:
State files should **not be committed to Git repositories in production**. Instead, use **remote backends** like:

* AWS S3
* Terraform Cloud
* Azure Storage
* Google Cloud Storage

---

# 🧹 Cleanup

To delete created resources:

```
terraform destroy
```

---

# 📚 Learning Purpose

This project is part of a **Terraform learning series for DevOps engineers**, covering:

* Terraform Providers
* Terraform Resources
* Terraform Variables
* Terraform Outputs
* Terraform Modules

---

⭐ Created for Terraform practice and GitHub portfolio.

