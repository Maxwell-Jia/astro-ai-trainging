from transformers import AutoConfig, AutoModel, AutoModelForSequenceClassification

from .configuration_spect import SpecTConfig

from .modeling_spect import SpecTModel, SpecTForSequenceClassification

AutoConfig.register("spect", SpecTConfig)
AutoModelForSequenceClassification.register(SpecTConfig, SpecTForSequenceClassification)