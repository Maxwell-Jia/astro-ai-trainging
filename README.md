# astro-ai-trainging
天文大模型培训

## 星系图像分类

- run_galaxy_classification.py 为本题的训练验证脚本
- 微调 ImageNet 1k 数据集上预训练的 ResNet18 模型
- [点击查看模型权重链接](https://huggingface.co/Maxwell-Jia/resnet18-Galaxy10)，相关说明也见链接

## 光谱分类

- run_spectral_classification.py 为本题的训练验证脚本
- 自定义模型，参照Vit模型设计了针对光谱的Transformer模型。长度为3000的光谱序列输入后，按照patch_size=150切分成20个patch，patch经过线性映射并在最前面拼接一个可学习的cls_token，加上可学习的绝对位置编码后进入transformer encoder，将cls_token对应的输出接入线性层完成分类。
- [点击查看模型权重链接](https://huggingface.co/Maxwell-Jia/spect-astro-ai-training)，相关说明也见链接