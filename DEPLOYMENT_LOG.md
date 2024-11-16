# MaskGCT 部署日志

## 2024-03-16

### 1. 项目初始化
- [x] 创建项目基本结构
  ```bash
  mkdir maskgct-deploy
  cd maskgct-deploy
  mkdir -p docker docs scripts src/maskgct tests
  ```
- [x] 初始化 Git 仓库
  ```bash
  git init
  git checkout -b dev
  ```

### 2. 配置文件设置
- [x] 创建并配置 .gitignore
  - 使用 VS Code 编辑添加了完整的忽略规则
  - 成功提交：4538d53 "Update .gitignore with comprehensive rules"

### 3. Docker 配置
- [x] 创建 Dockerfile
  - 基于 nvidia/cuda:11.8.0-cudnn8-devel-ubuntu18.04
  - 配置 Python 3.9.15 环境
  - 设置 PyTorch 2.0.0 版本
  - 添加必要的系统依赖

## 待完成任务
- [ ] 创建 requirements.txt
- [ ] 创建 app.py
- [ ] 下载模型脚本
- [ ] 测试 Docker 构建

## 环境信息
- 系统：Ubuntu 24.04.1 LTS
- CPU：AMD Ryzen 7 3800X
- GPU：NVIDIA RTX 2080 Ti
- CUDA：12.2
- Driver：535.216.01

## 注意事项
1. 严格遵循原项目的版本要求
2. 使用 Docker 进行部署以确保环境一致性
3. 每个步骤完成后进行 Git 提交
