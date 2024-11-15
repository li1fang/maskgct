#!/bin/bash

# 创建模型目录
mkdir -p models

# 设置 HuggingFace 镜像（如果需要）
export HF_ENDPOINT=https://hf-mirror.com

# 下载模型
python -c "
from transformers import AutoModelForSpeechSeq2Seq, AutoProcessor

model_id = 'amphion/MaskGCT'
processor = AutoProcessor.from_pretrained(model_id)
model = AutoModelForSpeechSeq2Seq.from_pretrained(model_id)

# 保存到本地
processor.save_pretrained('./models/maskgct')
model.save_pretrained('./models/maskgct')
"
