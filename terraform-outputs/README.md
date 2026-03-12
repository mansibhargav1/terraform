# Terraform Outputs Example

## 📌 Project Overview

This project demonstrates how to use **Terraform Outputs** to display information about resources created by Terraform.

In this example, Terraform creates a **local file** and then prints the **file name** using an output block.

Terraform outputs are useful when you want to expose important values from your infrastructure, such as IP addresses, URLs, or resource IDs.

---

## 📂 Project Structure

```
terraform-outputs
│
├── main.tf
└── README.md
```

---

## ⚙️ Terraform Configuration

### main.tf

```hcl
resource "local_file" "example" {
  filename = "output.txt"
  content  = "Terraform output example"
}

output "file_name" {
  value = local_file.example.filename
}
```

---

## 🚀 How to Run This Project

### 1️⃣ Initialize Terraform

```bash
terraform init
```

This command downloads the required provider plugins.

---

### 2️⃣ Apply Terraform Configuration

```bash
terraform apply
```

Terraform will create the resource and display the output value.

Example output:

```
Apply complete! Resources: 1 added.

Outputs:

file_name = "output.txt"
```

---

## 📤 Terraform Output

The **output block** allows Terraform to display useful information after infrastructure creation.

In this project:

```
output "file_name" {
  value = local_file.example.filename
}
```

Terraform prints the **filename of the created file**.

---

## 💡 Why Terraform Outputs Are Useful

Terraform outputs are commonly used to:

* Display **server IP addresses**
* Show **application URLs**
* Retrieve **database endpoints**
* Pass values between **Terraform modules**
* Expose important infrastructure details after deployment

---

## 🧪 Verify the Result

After running Terraform, a file named **output.txt** will be created in the project directory.

File content:

```
Terraform output example
```

---

## 🧹 Cleanup

To remove the created resource:

```bash
terraform destroy
```

---

## 📚 Learn More

Official Terraform documentation:
https://developer.hashicorp.com/terraform/language/values/outputs

