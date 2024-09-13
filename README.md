# Project 2: Using Variables in Terraform

## Objective

Provision an AWS EC2 instance using Terraform variables to parameterize the configuration.

## Prerequisites

- **AWS Account**: With permissions to create EC2 instances.
- **Terraform Installed**: [Installation Guide](https://learn.hashicorp.com/terraform/getting-started/install.html)
- **AWS CLI Configured**: With your credentials (`~/.aws/credentials`)

## Usage

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/terraform-project-2.git
cd terraform-project-2
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Review and Customize Variables

- **variables.tf**: Contains variable declarations.
- **terraform.tfvars**: Default variable values (you can edit this file).
- **dev.tfvars**: Environment-specific variable values (optional).

**Example `terraform.tfvars`:**

```hcl
ami_id = "ami-0123456789abcdef0" # Replace with a valid AMI ID
```

### 4. Apply the Terraform Configuration

**Using Default Variables:**

```bash
terraform apply
```

**Using Environment-Specific Variables:**

```bash
terraform apply -var-file="dev.tfvars"
```

### 5. Verify Outputs

After applying, Terraform will display:

- **Instance ID**
- **Public IP Address**

### 6. Clean Up

Destroy the resources to avoid charges:

```bash
terraform destroy
```

## Files Overview

- **main.tf**: AWS provider and EC2 instance resource.
- **variables.tf**: Input variable definitions.
- **outputs.tf**: Output values for the EC2 instance.
- **terraform.tfvars**: Default variable values.
- **dev.tfvars**: Environment-specific variables (optional).

## Notes

- Replace placeholder values with valid data for your AWS environment.
- Ensure AWS credentials are set up correctly for resource creation.
- Use `terraform validate` to check configuration before applying.
