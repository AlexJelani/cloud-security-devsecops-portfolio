# Project 1: Secure Multi-Cloud Infrastructure with Terraform

## 🎯 Objective
Deploy secure AWS and Azure infrastructure using Terraform with embedded security controls and automated misconfiguration scanning in CI/CD.

## 🏗️ Architecture

### AWS Infrastructure
- VPC with public/private subnets
- EC2 instance (private subnet)
- Security Groups (least privilege)
- KMS encryption
- IAM roles (least privilege)
- No public S3 buckets

### Azure Infrastructure
- Virtual Network with subnets
- Virtual Machine (private subnet)
- Network Security Groups
- Key Vault encryption
- Managed Identity
- Private endpoints

## 🔒 Security Controls

✅ Least-privilege IAM/RBAC  
✅ Encryption at rest (KMS/Key Vault)  
✅ Network segmentation (private subnets)  
✅ No public storage buckets  
✅ Security Groups/NSGs (minimal ports)  
✅ CIS benchmark compliance  

## 🤖 Automation

**GitHub Actions Pipeline**:
1. Terraform validate
2. Checkov security scan (fail on HIGH/CRITICAL)
3. Terraform plan
4. Manual approval
5. Terraform apply

## 📋 Prerequisites

- AWS Account (Free Tier)
- Azure Account (Free Credits)
- Terraform >= 1.5
- GitHub account
- AWS CLI configured
- Azure CLI configured

## 🚀 Quick Start

```bash
# AWS
cd aws
terraform init
terraform plan
terraform apply

# Azure
cd azure
terraform init
terraform plan
terraform apply
```

## 🧪 Testing

```bash
# Run Checkov locally
checkov --directory ./aws --framework terraform
checkov --directory ./azure --framework terraform

# Check for CIS compliance
checkov --directory . --check CKV_AWS_* --check CKV_AZURE_*
```

## 📊 Success Metrics

- ✅ Zero HIGH/CRITICAL findings in Checkov
- ✅ All resources in private subnets
- ✅ Encryption enabled on all storage
- ✅ IAM follows least privilege
- ✅ CI/CD pipeline blocks insecure configs

## 💰 Cost Estimate

**AWS**: $10-20/month (t3.micro, minimal storage)  
**Azure**: $15-25/month (B1s VM, minimal storage)  
**Total**: ~$30-45/month

**Cost Optimization**:
- Use free tiers
- Deallocate VMs when not in use
- Set billing alerts

## 📚 Learning Outcomes

- Multi-cloud IaC security patterns
- Automated security scanning in CI/CD
- CIS benchmark implementation
- Policy-as-code enforcement

## 🔗 Related Certifications

- HashiCorp Terraform Associate
- CCSK (Cloud Security Knowledge)
- AWS Security Specialty
- AZ-500 (Azure Security)

---

**Status**: 🚧 In Progress  
**Time Investment**: 1-2 weeks  
**Difficulty**: ⭐ Beginner-Friendly
