# 🚀 Simple CI/CD Pipeline

Este repositório contém um pipeline **CI/CD** automatizado utilizando **GitHub Actions** e **Docker Hub**. O objetivo é realizar a **integração contínua (CI)** de forma eficiente.

---

## 🏗️ Visão Geral do Pipeline

### **1️⃣ Continuous Integration (CI)**
- **Gatilho:** 🚀 Quando um push é feito para as branches `staging` ou `production`.
- **O que acontece?**  
  ✅ Instalação das dependências.  
  ✅ Execução dos testes automatizados.  
  ✅ Build da imagem com **Docker**.  
  ✅ Publicação da imagem no **Docker Hub**.

---

## 🛠️ **Como Funciona?**

### **📌 1. CI - Integração Contínua**
📂 **Arquivo:** `.github/workflows/ci.yml`
1. O código é clonado e as dependências são instaladas.
2. Os testes são executados com **Jest**.
3. A imagem é construída utilizando **Podman**.
4. A imagem é enviada para o **Docker Hub**.

---

## 🔧 **Configuração no GitHub Secrets**
Para que o pipeline funcione corretamente, configure os seguintes **secrets** no GitHub:

| Secret Name      | Descrição |
|-----------------|---------------------------------------------|
| `DOCKER_USERNAME` | Seu nome de usuário do Docker Hub. |
| `DOCKER_PASSWORD` | Token ou senha do Docker Hub. |

---

## 🚀 **Como Usar**
📂 **Clone este repositório**  
```sh
git clone https://github.com/seu-usuario/meu-projeto.git
cd meu-projeto

