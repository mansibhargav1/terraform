# Terraform Provisioner Example

This project demonstrates how to use Terraform provisioners.

## What is a Provisioner?

A provisioner allows Terraform to execute scripts or commands after creating resources.

## Types of Provisioners

- local-exec
- remote-exec
- file

## Example Used

This project uses the **local-exec provisioner**.

It runs the following command:

echo Terraform Provisioner Example > provisioner.txt

## Result

After running `terraform apply`, Terraform creates a file called:

provisioner.txt
