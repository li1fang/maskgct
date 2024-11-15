FROM python:3.10-slim

# 系统依赖
RUN apt-get update && apt-get install -y \
    espeak-ng \
    git \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . .

# 安装依赖
RUN pip install --no-cache-dir -r docker/requirements.txt

# 下载模型
RUN bash scripts/download_models.sh

# 暴露端口
EXPOSE 7860

# 启动命令
CMD ["python", "-m", "src.maskgct.gradio_demo"]
