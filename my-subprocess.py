import subprocess
import time

time.sleep (60)

print("Terraform Process Starts.....\n")

print("Terraform fmt Starts.....\n")
subprocess.run(["terraform", "fmt"], check=True)

print("Terraform init Starts.....\n")
subprocess.run(["terraform", "init"], check=True)

print("Terraform plan Starts.....\n")
subprocess.run(["terraform", "plan"], check=True)

print("Terraform apply Starts.....\n")
subprocess.run(["terraform", "apply","-auto-approve"], check=True)

print("Terraform Process Ends...Test the Infrastructure...\n")
