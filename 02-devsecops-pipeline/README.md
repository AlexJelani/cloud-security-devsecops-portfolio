# Project 2: DevSecOps CI/CD Pipeline with Security Gates

## 🎯 Objective
Build a complete DevSecOps pipeline with multiple security gates that automatically scans code, dependencies, and containers for vulnerabilities.

## 🏗️ Pipeline Architecture

```
Build → SAST → SCA → Container Scan → DAST → Deploy
  ↓       ↓      ↓         ↓            ↓       ↓
 Pass   Semgrep Snyk     Trivy      OWASP ZAP  EKS/AKS
        (Fail on Critical Vulnerabilities)
```

## 🔒 Security Gates

1. **SAST** (Static Application Security Testing) - Semgrep
2. **SCA** (Software Composition Analysis) - Snyk/Dependency-Check
3. **Container Scanning** - Trivy
4. **Secret Scanning** - GitGuardian/TruffleHog
5. **DAST** (Dynamic Application Security Testing) - OWASP ZAP

## 📋 Prerequisites

- GitHub account
- Docker Hub account
- Sample vulnerable app (OWASP Juice Shop or custom)

## 🚀 Quick Start

```bash
# Build locally
docker build -t devsecops-app:latest ./app

# Run security scans locally
semgrep --config=auto ./app
trivy image devsecops-app:latest
```

## 📊 Success Metrics

- ✅ Pipeline fails on HIGH/CRITICAL vulnerabilities
- ✅ All security gates pass before deployment
- ✅ Automated remediation PRs created
- ✅ Security scan results in artifacts

## 💰 Cost Estimate

**Free Tier**: GitHub Actions (2,000 minutes/month)  
**Total**: $0/month

## 📚 Learning Outcomes

- Shift-left security practices
- Automated vulnerability management
- Security-as-code implementation
- DevSecOps pipeline design

---

**Status**: 📋 Planned  
**Time Investment**: 1-2 weeks  
**Difficulty**: ⭐⭐ Intermediate
