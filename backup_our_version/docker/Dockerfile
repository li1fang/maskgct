FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu18.04

# 设置环境变量
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
ENV LANG=C.UTF-8
ENV PATH=/opt/conda/bin:$PATH

# 版本参数
ARG CUDA='cu118'
ARG PYTORCH='2.0.0'
ARG MINICONDA='Miniconda3-py39_23.3.1-0-Linux-x86_64.sh'

# 系统依赖
RUN apt-get update && apt-get install -y \
    wget \
    git \
    espeak-ng \
    && rm -rf /var/lib/apt/lists/*

# 安装 Miniconda
RUN wget https://repo.anaconda.com/miniconda/$MINICONDA && \
    bash $MINICONDA -b -p /opt/conda && \
    rm $MINICONDA

# 创建 conda 环境
RUN conda create -y --name amphion python=3.9.15 && \
    conda clean -ya

# 激活环境并安装依赖
SHELL ["conda", "run", "-n", "amphion", "/bin/bash", "-c"]
RUN pip install torch==${PYTORCH} torchaudio --index-url https://download.pytorch.org/whl/${CUDA}

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . .

# 安装项目依赖
RUN pip install -r requirements.txt

# 暴露端口
EXPOSE 7860

# 设置启动命令
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "amphion"]
CMD ["python", "app.py"]
