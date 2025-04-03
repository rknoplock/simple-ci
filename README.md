# 🚀 Simple CI/CD Pipeline

Este repositório contém um pipeline **CI/CD** automatizado usando **GitHub Actions**, **Docker Hub** e **Kubernetes Rancher**. O objetivo é realizar a **integração contínua (CI)** e o **deploy contínuo (CD)** de forma eficiente.

## 🏗️ Visão Geral do Pipeline

### **1️⃣ Continuous Integration (CI)**
- Gatilho: 🚀 Quando um push é feito para as branches `staging` ou `production`.
- O que acontece?  
  ✅ Build da aplicação usando **Podman**.  
  ✅ Execução de testes.  
  ✅ Publicação da imagem no **Docker Hub**.

### **2️⃣ Continuous Deployment (CD)**
- Gatilho: 🚀 Quando o pipeline de CI finaliza na branch `production`.
- O que acontece?  
  ✅ O **Kubernetes Rancher** é atualizado com a nova imagem.  
  ✅ O **deployment** é feito automaticamente.  

---

## 🛠️ **Como Funciona?**

### **📌 1. CI - Integração Contínua**
Arquivo: `.github/workflows/ci.yml`
1. O código é clonado e os testes são executados.
2. A imagem é construída usando **Podman**.
3. A imagem é enviada para o **Docker Hub**.

### **📌 2. CD - Deploy Contínuo**
Arquivo: `.github/workflows/cd.yml`
1. O GitHub Actions detecta que a **CI finalizou**.
2. O `kubectl` se conecta ao **Kubernetes Rancher**.
3. A aplicação é atualizada com a nova versão.

---

## 🔧 **Configuração no GitHub Secrets**
Para que o pipeline funcione corretamente, configure os seguintes **secrets** no GitHub:

| Secret Name      | Descrição |
|-----------------|---------------------------------------------|
| `DOCKER_USERNAME` | Seu nome de usuário do Docker Hub. |
| `DOCKER_PASSWORD` | Token ou senha do Docker Hub. |
| `KUBECONFIG` | Arquivo de configuração do Kubernetes Rancher (base64). |

---

## 🚀 **Como Usar**
1. **Clone este repositório**  
   ```sh
   git clone https://github.com/seu-usuario/simple-ci-cd.git
   cd simple-ci-cd
