# Awesome Large Audio Language Models [![Awesome](https://awesome.re/badge.svg)](https://awesome.re) [![Contribution](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/snkii/awesome-lalm#contributing) ![Last commit](https://img.shields.io/github/last-commit/snkii/awesome-lalm?style=flat)

> **"Language models, now with ears."**

Large Audio Language Models (LALMs) — also called audio LLMs, audio-language models, or speech LLMs — are foundation models that couple audio perception (speech, sound, music) with a large language model, enabling audio understanding, audio reasoning, and spoken interaction.

This is a reverse-chronological index of every LALM — newest first, from today back to the dawn of the field — with **venue, weights, code, and checkpoints at a glance** — completeness over curation, so that the whole model landscape can be surveyed in one place. The same index is available as [`models.json`](models.json) for programmatic use.

---

## Contents

- [Scope](#scope)
- [Legend](#legend)
- [Foundation Models](#foundation-models)
  - [2026](#2026)
  - [2025](#2025)
  - [2024](#2024)
  - [2023 — the dawn](#2023--the-dawn)
- [Benchmarks](#benchmarks)
- [Related Awesome Lists](#related-awesome-lists)

---

## Scope

Models that take **audio as a native input** and reason over it with a large language model:

- audio-understanding models (speech, sound, and music)
- audio reasoning models
- speech-dialogue LLMs
- omni / multimodal models with genuine audio input

Out of scope: pure TTS models, neural audio codecs, ASR-only systems, audio-generation-only models, and tool-orchestration pipelines without a trained audio-LLM.

---

## Legend

| Symbol | Meaning |
|:---:|---|
| 🟢 | open weights |
| 🔒 | closed weights (API / demo only) |
| 📄 | paper · technical report |
| 💻 | code (GitHub) |
| 🤗 | checkpoints (Hugging Face) |
| 🗂️ | dataset · leaderboard |

**Venue** records where the model was introduced — a peer-reviewed conference or journal (`ICLR'24`), an arXiv preprint (`arXiv'23`), or a company release.

---

## Foundation Models

Sorted by first public release, oldest first.

### 2026

| Model | Release | Organization | Venue | 📄 | 💻 | 🤗 | Notes |
|---|---|---|---|:---:|:---:|:---:|---|
| **DuplexJev** | 2026-10 | Adventists AI | arXiv'26 | [📄](https://arxiv.org/abs/2610.02638) | [💻](https://github.com/adventists-ai/duplexjev) | [🤗](https://huggingface.co/adventists-ai) | frozen speech LLM read out with a single constrained token: turn-taking and paralinguistic decisions (emotion, stress, non-verbal) in one forward pass, no decoding (weights CC BY-NC) |
| **Sori-1B** | 2026-08 | Human Interface Lab, Seoul National University | model release | — | — | [🤗](https://huggingface.co/snkii/Sori-1B) | 1B decoder trained from scratch — no language-only pretraining and no pretrained-LM init; every text token predicted in the presence of audio, over an auditory-ontology vocabulary (gated, academic use) |
| **SeedRealtime** | 2026-08 | ByteDance (Seed) | company release | — | — | 🔒 | native audio-visual full-duplex LLM over continuous streams without external VAD |
| **GPT-Live-1** | 2026-07 | OpenAI | company release | — | — | 🔒 | full-duplex ChatGPT voice model that listens and speaks simultaneously |
| **MiniMind-O** | 2026-05 | open-source (Jingyao Gong) | arXiv'26 | [📄](https://arxiv.org/abs/2605.03937) | [💻](https://github.com/jingyaogong/minimind-o) | 🟢 | 0.1B speech-native omni model trained from scratch; Thinker-Talker with streaming speech and barge-in |
| **GPT-Realtime-2** | 2026-05 | OpenAI | company release | — | — | 🔒 | first Realtime API voice model with GPT-5-class reasoning |
| **Step-Audio-R1.5** | 2026-04 | StepFun | arXiv'26 | [📄](https://arxiv.org/abs/2604.25719) | [💻](https://github.com/stepfun-ai/Step-Audio-R1) | 🔒 | next iteration of the audio reasoning series with three open-sourced in-house benchmarks |
| **MiMo-V2.5** | 2026-04 | Xiaomi | company release | — | — | [🤗](https://huggingface.co/XiaomiMiMo/MiMo-V2.5) | native omni-modal foundation model with 1M context and agentic focus |
| **Audio-DeepThinker** | 2026-04 | Tencent AI Lab & HKUST (Guangzhou) | arXiv'26 | [📄](https://arxiv.org/abs/2604.18187) | — | 🔒 | progressive reasoning-aware RL on Qwen3-Omni base; 1st place, Interspeech 2026 Audio Reasoning Challenge |
| **Audio Flamingo Next** | 2026-04 | NVIDIA & University of Maryland | arXiv'26 | [📄](https://arxiv.org/abs/2604.10905) | [💻](https://github.com/NVIDIA/audio-flamingo) | [🤗](https://huggingface.co/nvidia/audio-flamingo-next-hf) | fully open LALM with Temporal Audio Chain-of-Thought and 30-min audio input |
| **MOSS-Audio** | 2026-04 | OpenMOSS (Fudan & MOSI.AI) | arXiv'26 | [📄](https://arxiv.org/abs/2606.01802) | [💻](https://github.com/OpenMOSS/MOSS-Audio) | [🤗](https://huggingface.co/OpenMOSS-Team/MOSS-Audio-4B-Instruct) | unified speech/sound/music understanding with time-aware QA; 4B/8B Instruct and Thinking variants |
| **Qwen3.5-Omni** | 2026-03 | Alibaba (Qwen team) | company release | [📄](https://arxiv.org/abs/2604.15804) | — | 🟢 | native omni-modal 30B-A3B MoE; 10+ hr audio input, 113-language ASR; Light variant open-weight |
| **Gemini 3.1 Flash Live** | 2026-03 | Google DeepMind | company release | — | — | 🔒 | real-time native-audio Live API model (audio+video+text), 90+ languages, low latency |
| **LongCat-Flash-Omni-2603** | 2026-03 | Meituan | company release | — | — | 🔒 | upgraded 560B-A27B omni interaction model with native voice function calling (API-only) |
| **Ming-Flash-Omni-2.0** | 2026-02 | Ant Group (InclusionAI) | company release | — | [💻](https://github.com/inclusionAI/Ming) | [🤗](https://huggingface.co/inclusionAI/Ming-flash-omni-2.0) | 100B-A6B MoE omni-modal model unifying speech/audio/music understanding and generation |
| **Covo-Audio** | 2026-02 | Tencent | arXiv'26 | [📄](https://arxiv.org/abs/2602.09823) | [💻](https://github.com/Tencent/Covo-Audio) | [🤗](https://huggingface.co/tencent/Covo-Audio-Chat) | 7B end-to-end audio-in/audio-out LALM with tri-modal interleaving; full-duplex Chat-FD variant |
| **Step-Audio-R1.1** | 2026-01 | StepFun | company release | — | [💻](https://github.com/stepfun-ai/Step-Audio-R1) | [🤗](https://huggingface.co/stepfun-ai/Step-Audio-R1.1) | audio reasoning LALM benefiting from test-time compute scaling |
| **DIFFA-2** | 2026-01 | NKU-HLT & Meituan LongCat | ACL'26 Findings | [📄](https://arxiv.org/abs/2601.23161) | [💻](https://github.com/NKU-HLT/DIFFA) | [🤗](https://huggingface.co/zhoujiaming777/DIFFA-2) | diffusion-LLM-based (non-autoregressive) LALM for general audio understanding |
---

### 2025

| Model | Release | Organization | Venue | 📄 | 💻 | 🤗 | Notes |
|---|---|---|---|:---:|:---:|:---:|---|
| **Fun-Audio-Chat** | 2025-12 | Alibaba (FunAudioLLM) | arXiv'25 | [📄](https://arxiv.org/abs/2512.20156) | [💻](https://github.com/FunAudioLLM/Fun-Audio-Chat) | [🤗](https://huggingface.co/FunAudioLLM/Fun-Audio-Chat-8B) | 8B dual-resolution (5Hz backbone / 25Hz head) low-latency voice LALM |
| **Step-Audio-R1** | 2025-11 | StepFun | arXiv'25 | [📄](https://arxiv.org/abs/2511.15848) | [💻](https://github.com/stepfun-ai/Step-Audio-R1) | [🤗](https://huggingface.co/stepfun-ai/Step-Audio-R1) | first audio reasoning model with test-time-compute scaling via modality-grounded reasoning distillation |
| **Music Flamingo** | 2025-11 | NVIDIA | arXiv'25 | [📄](https://arxiv.org/abs/2511.10289) | [💻](https://github.com/NVIDIA/audio-flamingo) | [🤗](https://huggingface.co/nvidia/music-flamingo-hf) | music-understanding LALM on Audio Flamingo 3 backbone with GRPO music reasoning |
| **LongCat-Flash-Omni** | 2025-11 | Meituan | arXiv'25 | [📄](https://arxiv.org/abs/2511.00279) | [💻](https://github.com/meituan-longcat/LongCat-Flash-Omni) | [🤗](https://huggingface.co/meituan-longcat/LongCat-Flash-Omni) | 560B MoE (27B active) omni-modal model for real-time audio-visual interaction (MIT license) |
| **OmniVinci** | 2025-10 | NVIDIA | ICLR'26 | [📄](https://arxiv.org/abs/2510.15870) | [💻](https://github.com/NVlabs/OmniVinci) | [🤗](https://huggingface.co/nvidia/omnivinci) | 9B omni-modal (vision+audio) LLM with OmniAlignNet at ~6x fewer training tokens |
| **LFM2-Audio** | 2025-10 | Liquid AI | company release | — | [💻](https://github.com/Liquid4All/liquid-audio) | [🤗](https://huggingface.co/LiquidAI/LFM2-Audio-1.5B) | 1.5B end-to-end speech+text model for edge devices with sub-100ms latency |
| **Qwen3-Omni** | 2025-09 | Alibaba (Qwen team) | arXiv'25 | [📄](https://arxiv.org/abs/2509.17765) | [💻](https://github.com/QwenLM/Qwen3-Omni) | [🤗](https://huggingface.co/Qwen/Qwen3-Omni-30B-A3B-Instruct) | MoE Thinker-Talker omni model with SOTA audio understanding and streaming speech output |
| **MiMo-Audio** | 2025-09 | Xiaomi | arXiv'25 | [📄](https://arxiv.org/abs/2512.23808) | [💻](https://github.com/XiaomiMiMo/MiMo-Audio) | [🤗](https://huggingface.co/XiaomiMiMo/MiMo-Audio-7B-Instruct) | few-shot audio learning emerging from lossless-tokenized next-token pretraining on 100M+ hours |
| **gpt-realtime** | 2025-08 | OpenAI | company release | — | — | 🔒 | production speech-to-speech model launched with Realtime API GA |
| **MiDashengLM** | 2025-08 | Xiaomi | arXiv'25 | [📄](https://arxiv.org/abs/2508.03983) | [💻](https://github.com/xiaomi-research/dasheng-lm) | [🤗](https://huggingface.co/mispeech/midashenglm-7b) | caption-based alignment for holistic general audio understanding (Dasheng encoder) |
| **DIFFA** | 2025-07 | Nankai University (NKU-HLT) et al. | arXiv'25 | [📄](https://arxiv.org/abs/2507.18452) | [💻](https://github.com/NKU-HLT/DIFFA) | [🤗](https://huggingface.co/zhoujiaming777/DIFFA) | first diffusion-LLM-based audio language model (frozen diffusion LLM + dual adapters) |
| **Step-Audio 2** | 2025-07 | StepFun | arXiv'25 | [📄](https://arxiv.org/abs/2507.16632) | [💻](https://github.com/stepfun-ai/Step-Audio2) | [🤗](https://huggingface.co/stepfun-ai/Step-Audio-2-mini) | end-to-end speech conversation with paralinguistic understanding and tool calling |
| **Voxtral** | 2025-07 | Mistral AI | arXiv'25 | [📄](https://arxiv.org/abs/2507.13264) | — | [🤗](https://huggingface.co/mistralai/Voxtral-Small-24B-2507) | Apache-2.0 audio-chat models (24B and 3B) with long-form audio understanding |
| **Audio Flamingo 3** | 2025-07 | NVIDIA | NeurIPS'25 | [📄](https://arxiv.org/abs/2507.08128) | [💻](https://github.com/NVIDIA/audio-flamingo) | [🤗](https://huggingface.co/nvidia/audio-flamingo-3) | fully open speech/sound/music reasoning LALM with AF-Whisper encoder and 10-min long audio (Spotlight) |
| **DeSTA2.5-Audio** | 2025-07 | NTU Taiwan & NVIDIA | IEEE TASLP | [📄](https://arxiv.org/abs/2507.02768) | [💻](https://github.com/kehanlu/DeSTA2.5-Audio) | [🤗](https://huggingface.co/DeSTA-ntu/DeSTA2.5-Audio-Llama-3.1-8B) | self-generated cross-modal alignment without task-specific instruction-tuning data |
| **Gemma 3n** | 2025-06 | Google | company release | — | — | [🤗](https://huggingface.co/google/gemma-3n-E4B-it) | on-device multimodal model with audio input (USM encoder) and selective parameter activation |
| **Step-Audio-AQAA** | 2025-06 | StepFun | arXiv'25 | [📄](https://arxiv.org/abs/2506.08967) | — | [🤗](https://huggingface.co/stepfun-ai/Step-Audio-AQAA) | fully end-to-end 130B audio-query-to-audio-answer model with interleaved text-audio output |
| **Ming-Omni** | 2025-05 | Ant Group (InclusionAI) | arXiv'25 | [📄](https://arxiv.org/abs/2506.09344) | [💻](https://github.com/inclusionAI/Ming) | [🤗](https://huggingface.co/inclusionAI/Ming-Lite-Omni) | unified MoE omni-modal perception plus speech and image generation (2.8B active params) |
| **Aero-1-Audio** | 2025-05 | LMMs-Lab | company release | — | [💻](https://github.com/EvolvingLMMs-Lab/Aero-1) | [🤗](https://huggingface.co/lmms-lab/Aero-1-Audio) | lightweight 1.5B audio LM handling 15-minute continuous audio without chunking |
| **VITA-Audio** | 2025-05 | VITA-MLLM team | arXiv'25 | [📄](https://arxiv.org/abs/2505.03739) | [💻](https://github.com/VITA-MLLM/VITA-Audio) | [🤗](https://huggingface.co/VITA-MLLM/VITA-Audio-Plus-Vanilla) | fast interleaved speech-text generation via multiple cross-modal token prediction |
| **LLaMA-Omni2** | 2025-05 | ICT/CAS (ICTNLP) | ACL'25 | [📄](https://arxiv.org/abs/2505.02625) | [💻](https://github.com/ictnlp/LLaMA-Omni2) | [🤗](https://huggingface.co/ICTNLP/LLaMA-Omni2-7B) | real-time spoken chatbot with autoregressive streaming speech synthesis (0.5B-32B family) |
| **Amazon Nova Sonic** | 2025-04 | Amazon | company release | [📄](https://www.amazon.science/publications/amazon-nova-sonic-technical-report-and-model-card) | — | 🔒 | unified speech-to-speech dialogue model on Bedrock with streaming-first natural turn-taking |
| **Kimi-Audio** | 2025-04 | Moonshot AI | arXiv'25 | [📄](https://arxiv.org/abs/2504.18425) | [💻](https://github.com/MoonshotAI/Kimi-Audio) | [🤗](https://huggingface.co/moonshotai/Kimi-Audio-7B-Instruct) | universal audio foundation model with hybrid tokens, 13M+ hours pretraining |
| **Qwen2.5-Omni** | 2025-03 | Alibaba (Qwen team) | arXiv'25 | [📄](https://arxiv.org/abs/2503.20215) | [💻](https://github.com/QwenLM/Qwen2.5-Omni) | [🤗](https://huggingface.co/Qwen/Qwen2.5-Omni-7B) | Thinker-Talker omni-modal architecture with streaming speech generation |
| **Gemini 2.5** | 2025-03 | Google DeepMind | company release | [📄](https://arxiv.org/abs/2507.06261) | — | 🔒 | frontier API model with native audio understanding and native-audio dialogue |
| **R1-AQA** | 2025-03 | Xiaomi (MiLM Plus) | arXiv'25 | [📄](https://arxiv.org/abs/2503.11197) | [💻](https://github.com/xiaomi-research/r1-aqa) | [🤗](https://huggingface.co/mispeech/r1-aqa) | GRPO RL on Qwen2-Audio reaching SOTA MMAU with only 38k samples |
| **Mellow** | 2025-03 | CMU | arXiv'25 | [📄](https://arxiv.org/abs/2503.08540) | [💻](https://github.com/soham97/Mellow) | [🤗](https://huggingface.co/soham97/Mellow) | 167M small audio-language model matching much larger LALMs on reasoning |
| **Audio Flamingo 2** | 2025-03 | NVIDIA | ICML'25 | [📄](https://arxiv.org/abs/2503.03983) | [💻](https://github.com/NVIDIA/audio-flamingo) | [🤗](https://huggingface.co/nvidia/audio-flamingo-2) | 3B model with long-audio (up to 5 min) sound/music expert reasoning |
| **Audio-Reasoner** | 2025-03 | NTU Singapore & Tsinghua | arXiv'25 | [📄](https://arxiv.org/abs/2503.02318) | [💻](https://github.com/xzf-thu/Audio-Reasoner) | [🤗](https://huggingface.co/zhifeixie/Audio-Reasoner) | structured chain-of-thought audio reasoning on Qwen2-Audio with 1.2M-sample CoTA dataset |
| **Phi-4-multimodal** | 2025-02 | Microsoft | arXiv'25 | [📄](https://arxiv.org/abs/2503.01743) | — | [🤗](https://huggingface.co/microsoft/Phi-4-multimodal-instruct) | 5.6B mixture-of-LoRAs model unifying text, vision, and audio (MIT license) |
| **Ultravox v0.5** | 2025-02 | Fixie.ai | company release | — | [💻](https://github.com/fixie-ai/ultravox) | [🤗](https://huggingface.co/fixie-ai/ultravox-v0_5-llama-3_1-8b) | MIT-licensed speech-LLM adapter family on Llama-3 + Whisper |
| **Baichuan-Audio** | 2025-02 | Baichuan Inc. | arXiv'25 | [📄](https://arxiv.org/abs/2502.17239) | [💻](https://github.com/baichuan-inc/Baichuan-Audio) | [🤗](https://huggingface.co/baichuan-inc/Baichuan-Audio-Instruct) | end-to-end speech interaction with unified audio tokenizer and flow-matching decoder |
| **Soundwave** | 2025-02 | CUHK-Shenzhen | arXiv'25 | [📄](https://arxiv.org/abs/2502.12900) | [💻](https://github.com/FreedomIntelligence/Soundwave) | [🤗](https://huggingface.co/FreedomIntelligence/Soundwave) | data-efficient speech-text alignment using only 10k hours of training audio |
| **Step-Audio** | 2025-02 | StepFun | arXiv'25 | [📄](https://arxiv.org/abs/2502.11946) | [💻](https://github.com/stepfun-ai/Step-Audio) | [🤗](https://huggingface.co/stepfun-ai/Step-Audio-Chat) | 130B unified speech understanding and generation chat model |
| **Ola** | 2025-02 | Tsinghua & Tencent Hunyuan & NTU S-Lab | arXiv'25 | [📄](https://arxiv.org/abs/2502.04328) | [💻](https://github.com/Ola-Omni/Ola) | [🤗](https://huggingface.co/THUdyh/Ola-7b) | omni-modal model trained with progressive modality alignment |
| **Baichuan-Omni-1.5** | 2025-01 | Baichuan Inc. | arXiv'25 | [📄](https://arxiv.org/abs/2501.15368) | [💻](https://github.com/baichuan-inc/Baichuan-Omni-1.5) | [🤗](https://huggingface.co/baichuan-inc/Baichuan-Omni-1d5) | 7B omni-modal model with text/image/video/audio input and text+audio output |
| **SpeechGPT-2.0-preview** | 2025-01 | OpenMOSS (Fudan) | company release | — | [💻](https://github.com/OpenMOSS/SpeechGPT-2.0-preview) | [🤗](https://huggingface.co/fnlp/SpeechGPT-2.0-preview-7B) | end-to-end spoken dialogue model with sub-200ms latency (Chinese-only) |
| **OSUM** | 2025-01 | ASLP@NPU | arXiv'25 | [📄](https://arxiv.org/abs/2501.13306) | [💻](https://github.com/ASLP-lab/OSUM) | [🤗](https://huggingface.co/ASLP-lab/OSUM) | open academic Whisper+Qwen2 speech understanding model covering 8 tasks incl. paralinguistics |
| **MinMo** | 2025-01 | Alibaba FunAudioLLM | arXiv'25 | [📄](https://arxiv.org/abs/2501.06282) | — | 🔒 | 8B seamless voice-interaction model (SenseVoice + Qwen2.5-7B); weights announced but never released |
| **VITA-1.5** | 2025-01 | VITA-MLLM team | NeurIPS'25 | [📄](https://arxiv.org/abs/2501.01957) | [💻](https://github.com/VITA-MLLM/VITA) | [🤗](https://huggingface.co/VITA-MLLM/VITA-1.5) | GPT-4o-level real-time vision and speech interaction (Spotlight) |
| **MiniCPM-o 2.6** | 2025-01 | OpenBMB | company release | — | [💻](https://github.com/OpenBMB/MiniCPM-o) | [🤗](https://huggingface.co/openbmb/MiniCPM-o-2_6) | 8B omni model with real-time bilingual speech conversation and multimodal live streaming |

### 2024

| Model | Release | Organization | Venue | 📄 | 💻 | 🤗 | Notes |
|---|---|---|---|:---:|:---:|:---:|---|
| **MERaLiON-AudioLLM** | 2024-12 | A*STAR I2R (Singapore) | arXiv'24 | [📄](https://arxiv.org/abs/2412.09818) | — | [🤗](https://huggingface.co/MERaLiON/MERaLiON-AudioLLM-Whisper-SEA-LION) | Singlish-and-Southeast-Asia-focused audio LLM (Whisper + SEA-LION) |
| **Freeze-Omni** | 2024-11 | Tencent | ICML'25 | [📄](https://arxiv.org/abs/2411.00774) | [💻](https://github.com/VITA-MLLM/Freeze-Omni) | 🟢 | speech-to-speech dialogue with the backbone LLM kept fully frozen |
| **GLM-4-Voice** | 2024-10 | Zhipu AI & Tsinghua | arXiv'24 | [📄](https://arxiv.org/abs/2412.02612) | [💻](https://github.com/zai-org/GLM-4-Voice) | [🤗](https://huggingface.co/THUDM/glm-4-voice-9b) | end-to-end Chinese-English spoken chatbot with ultra-low-bitrate speech tokenizer |
| **Mini-Omni2** | 2024-10 | Tsinghua University (gpt-omni) | arXiv'24 | [📄](https://arxiv.org/abs/2410.11190) | [💻](https://github.com/gpt-omni/mini-omni2) | [🤗](https://huggingface.co/gpt-omni/mini-omni2) | adds vision and interruption-aware duplex dialogue to Mini-Omni |
| **Baichuan-Omni** | 2024-10 | Baichuan Inc. & Westlake University | arXiv'24 | [📄](https://arxiv.org/abs/2410.08565) | [💻](https://github.com/westlake-baichuan-mllm/bc-omni) | 🟢 | first open-source 7B omni-modal LLM over image, video, audio, and text |
| **DeSTA2** | 2024-09 | NTU Taiwan & NVIDIA | ICASSP'25 | [📄](https://arxiv.org/abs/2409.20007) | [💻](https://github.com/kehanlu/DeSTA2) | [🤗](https://huggingface.co/DeSTA-ntu/DeSTA2-8B-beta) | instruction-following speech LLM trained without speech instruction-tuning data |
| **Moshi** | 2024-09 | Kyutai | arXiv'24 | [📄](https://arxiv.org/abs/2410.00037) | [💻](https://github.com/kyutai-labs/moshi) | [🤗](https://huggingface.co/kyutai/moshiko-pytorch-bf16) | first open full-duplex real-time speech-to-speech dialogue model (Helium + Mimi codec) |
| **LLaMA-Omni** | 2024-09 | Institute of Computing Technology, CAS | ICLR'25 | [📄](https://arxiv.org/abs/2409.06666) | [💻](https://github.com/ictnlp/LLaMA-Omni) | [🤗](https://huggingface.co/ICTNLP/Llama-3.1-8B-Omni) | low-latency speech-to-speech interaction built on Llama-3.1-8B-Instruct |
| **Typhoon-Audio** | 2024-08 | SCB 10X | arXiv'24 | [📄](https://arxiv.org/abs/2409.10999) | — | [🤗](https://huggingface.co/scb10x/llama-3-typhoon-v1.5-8b-audio-preview) | first Thai-English audio-language model (SALMONN-style, Typhoon LLM) |
| **Mini-Omni** | 2024-08 | Tsinghua University (gpt-omni) | arXiv'24 | [📄](https://arxiv.org/abs/2408.16725) | [💻](https://github.com/gpt-omni/mini-omni) | [🤗](https://huggingface.co/gpt-omni/mini-omni) | first open end-to-end model that listens while talking, streaming audio out |
| **VITA** | 2024-08 | Tencent Youtu Lab | arXiv'24 | [📄](https://arxiv.org/abs/2408.05211) | [💻](https://github.com/VITA-MLLM/VITA) | 🟢 | first open interactive omni-modal LLM (video/image/audio/text) with duplex interaction |
| **Qwen2-Audio** | 2024-07 | Alibaba (Qwen team) | arXiv'24 | [📄](https://arxiv.org/abs/2407.10759) | [💻](https://github.com/QwenLM/Qwen2-Audio) | [🤗](https://huggingface.co/Qwen/Qwen2-Audio-7B-Instruct) | natural-language pretraining replacing task tags; voice-chat and audio-analysis modes |
| **Ultravox** | 2024-06 | Fixie.ai | company release | — | [💻](https://github.com/fixie-ai/ultravox) | [🤗](https://huggingface.co/fixie-ai/ultravox-v0_2) | open real-time voice LLM projecting Whisper embeddings into Llama |
| **GAMA** | 2024-06 | University of Maryland & Adobe | EMNLP'24 | [📄](https://arxiv.org/abs/2406.11768) | [💻](https://github.com/Sreyan88/GAMA) | 🟢 | multi-layer audio aggregator plus Audio Q-Former for complex audio reasoning |
| **Uni-MoE** | 2024-05 | HIT Shenzhen | arXiv'24 → TPAMI | [📄](https://arxiv.org/abs/2405.11273) | [💻](https://github.com/HITsz-TMG/UMOE-Scaling-Unified-Multimodal-LLMs) | 🟢 | mixture-of-experts multimodal LLM with dedicated audio/speech experts |
| **SpeechVerse** | 2024-05 | Amazon (AWS AI Labs) | arXiv'24 | [📄](https://arxiv.org/abs/2405.08295) | — | 🔒 | multi-task instruction-tuned speech LLM generalizing to unseen instructions |
| **GPT-4o** | 2024-05 | OpenAI | company release | [📄](https://arxiv.org/abs/2410.21276) | — | 🔒 | flagship omni model with native real-time speech in and out |
| **WavLLM** | 2024-04 | Microsoft & CUHK | EMNLP'24 Findings | [📄](https://arxiv.org/abs/2404.00656) | [💻](https://github.com/microsoft/SpeechT5/tree/main/WavLLM) | 🟢 | dual Whisper+WavLM encoders with curriculum learning and prompt-aware LoRA |
| **AnyGPT** | 2024-02 | Fudan University | ACL'24 | [📄](https://arxiv.org/abs/2402.12226) | [💻](https://github.com/OpenMOSS/AnyGPT) | [🤗](https://huggingface.co/fnlp/AnyGPT-chat) | any-to-any discrete-token LLM over speech, music, image, and text |
| **SpiRit-LM** | 2024-02 | Meta | TACL'24 | [📄](https://arxiv.org/abs/2402.05755) | [💻](https://github.com/facebookresearch/spiritlm) | 🟢 | interleaved speech-text foundation model capturing expressive prosody |
| **Audio Flamingo** | 2024-02 | NVIDIA | ICML'24 | [📄](https://arxiv.org/abs/2402.01831) | [💻](https://github.com/NVIDIA/audio-flamingo) | [🤗](https://huggingface.co/nvidia/audio-flamingo) | audio LLM with in-context few-shot learning, retrieval, and multi-turn dialogue |

### 2023 — the dawn

| Model | Release | Organization | Venue | 📄 | 💻 | 🤗 | Notes |
|---|---|---|---|:---:|:---:|:---:|---|
| **Gemini** | 2023-12 | Google | company release | [📄](https://arxiv.org/abs/2312.11805) | — | 🔒 | first frontier natively multimodal model family with real audio input |
| **OneLLM** | 2023-12 | CUHK MMLab | CVPR'24 | [📄](https://arxiv.org/abs/2312.03700) | [💻](https://github.com/csuhan/OneLLM) | [🤗](https://huggingface.co/csuhan/OneLLM-7B) | one universal encoder aligning eight modalities including audio to a LLM |
| **M2UGen** | 2023-11 | Tencent ARC Lab & NUS | arXiv'23 | [📄](https://arxiv.org/abs/2311.11255) | [💻](https://github.com/shansongliu/MuMu-LLaMA) | [🤗](https://huggingface.co/M2UGen/M2UGen-MusicGen-medium) | combines music understanding with music generation/editing in one LLM |
| **Qwen-Audio** | 2023-11 | Alibaba (Qwen team) | arXiv'23 | [📄](https://arxiv.org/abs/2311.07919) | [💻](https://github.com/QwenLM/Qwen-Audio) | [🤗](https://huggingface.co/Qwen/Qwen-Audio-Chat) | multi-task hierarchical tag pretraining over 30+ audio tasks |
| **AudioChatLlama** | 2023-11 | Meta | NAACL'24 | [📄](https://arxiv.org/abs/2311.06753) | — | 🔒 | extends Llama-2-chat to end-to-end speech prompts without paired instruction data |
| **SALMONN** | 2023-10 | Tsinghua & ByteDance | ICLR'24 | [📄](https://arxiv.org/abs/2310.13289) | [💻](https://github.com/bytedance/SALMONN) | [🤗](https://huggingface.co/tsinghua-ee/SALMONN) | dual Whisper+BEATs encoders for generic hearing of speech, sound, and music |
| **SALM** | 2023-10 | NVIDIA | ICASSP'24 | [📄](https://arxiv.org/abs/2310.09424) | [💻](https://github.com/NVIDIA/NeMo) | 🟢 | speech-augmented LM in NeMo with in-context learning for ASR/AST |
| **LLark** | 2023-10 | Spotify | ICML'24 | [📄](https://arxiv.org/abs/2310.07160) | [💻](https://github.com/spotify-research/llark) | 🔒 | instruction-tuned music LLM (Jukebox encoder); code open, weights withheld |
| **LauraGPT** | 2023-10 | Alibaba DAMO Academy | arXiv'23 | [📄](https://arxiv.org/abs/2310.04673) | — | 🔒 | unified GPT for audio recognition, understanding, and generation with continuous inputs |
| **SLM** | 2023-10 | Google DeepMind | ASRU'23 | [📄](https://arxiv.org/abs/2310.00230) | — | 🔒 | frozen USM + mT0 bridged by a tiny adapter, zero-shot speech instruction following |
| **LTU-AS** | 2023-09 | MIT & MIT-IBM Watson AI Lab | ASRU'23 | [📄](https://arxiv.org/abs/2309.14405) | [💻](https://github.com/YuanGongND/ltu) | 🟢 | LTU successor jointly understanding speech content and non-speech audio |
| **MusiLingo** | 2023-09 | UPenn & QMUL (M-A-P) | NAACL'24 Findings | [📄](https://arxiv.org/abs/2309.08730) | [💻](https://github.com/zihaod/MusiLingo) | [🤗](https://huggingface.co/collections/m-a-p/musilingo-660ea663da171832d5722c51) | MERT-Vicuna music captioning/QA model with MusicInstruct dataset |
| **NExT-GPT** | 2023-09 | National University of Singapore | ICML'24 | [📄](https://arxiv.org/abs/2309.05519) | [💻](https://github.com/NExT-GPT/NExT-GPT) | 🟢 | any-to-any multimodal LLM with audio input and output via diffusion decoders |
| **BLSP** | 2023-09 | CAS & Alibaba | arXiv'23 | [📄](https://arxiv.org/abs/2309.00916) | [💻](https://github.com/cwang621/blsp) | 🟢 | bootstraps speech-text alignment via behavior alignment of continuation writing |
| **LLaSM** | 2023-08 | LinkSoul.AI | arXiv'23 | [📄](https://arxiv.org/abs/2308.15930) | [💻](https://github.com/LinkSoul-AI/LLaSM) | [🤗](https://huggingface.co/LinkSoul/LLaSM-Cllama2) | bilingual Chinese-English speech-instruction-following model with open dataset |
| **MU-LLaMA** | 2023-08 | NUS & Tencent ARC Lab | ICASSP'24 | [📄](https://arxiv.org/abs/2308.11276) | [💻](https://github.com/shansongliu/MU-LLaMA) | 🟢 | music-understanding LLaMA (MERT encoder) for music QA and captioning |
| **AudioPaLM** | 2023-06 | Google | arXiv'23 | [📄](https://arxiv.org/abs/2306.12925) | — | 🔒 | fuses PaLM-2 and AudioLM into a unified speech-text LLM that speaks and listens |
| **Macaw-LLM** | 2023-06 | Tencent AI Lab | arXiv'23 | [📄](https://arxiv.org/abs/2306.09093) | [💻](https://github.com/lyuchenyang/Macaw-LLM) | 🔒 | early image/video/audio/text integration with one-stage alignment |
| **Video-LLaMA** | 2023-06 | Alibaba DAMO Academy | EMNLP'23 demo | [📄](https://arxiv.org/abs/2306.02858) | [💻](https://github.com/DAMO-NLP-SG/Video-LLaMA) | [🤗](https://huggingface.co/DAMO-NLP-SG/Video-LLaMA-Series) | audio-visual LLM with dedicated audio Q-Former branch over ImageBind |
| **PandaGPT** | 2023-05 | University of Cambridge & Tencent AI Lab | arXiv'23 | [📄](https://arxiv.org/abs/2305.16355) | [💻](https://github.com/yxuansu/PandaGPT) | 🟢 | ImageBind-based instruction-following model accepting audio among six modalities |
| **Pengi** | 2023-05 | Microsoft | NeurIPS'23 | [📄](https://arxiv.org/abs/2305.11834) | [💻](https://github.com/microsoft/Pengi) | 🟢 | frames all audio tasks as text generation with audio+text prompts |
| **SpeechGPT** | 2023-05 | Fudan University | EMNLP'23 Findings | [📄](https://arxiv.org/abs/2305.11000) | [💻](https://github.com/0nutation/SpeechGPT) | [🤗](https://huggingface.co/fnlp/SpeechGPT-7B-cm) | first open LLM with intrinsic cross-modal speech conversation via discrete units |
| **LTU** | 2023-05 | MIT & MIT-IBM Watson AI Lab | ICLR'24 | [📄](https://arxiv.org/abs/2305.10790) | [💻](https://github.com/YuanGongND/ltu) | 🟢 | first open-ended audio question-answering LLM (AST + LLaMA, OpenAQA-5M dataset) |
| **X-LLM** | 2023-05 | Institute of Automation, CAS | arXiv'23 | [📄](https://arxiv.org/abs/2305.04160) | [💻](https://github.com/phellonchen/X-LLM) | 🟢 | early ChatGLM-based MLLM treating speech/image as foreign languages via X2L interfaces |

## Benchmarks

Evaluation benchmarks for audio understanding and reasoning, sorted by first release. Also available as [`benchmarks.json`](benchmarks.json).

| Benchmark | Release | Organization | Venue | 📄 | 💻 | 🗂️ | Focus |
|---|---|---|---|:---:|:---:|:---:|---|
| **Clotho-AQA** | 2022-04 | Tampere University | EUSIPCO'22 | [📄](https://arxiv.org/abs/2204.09634) | — | [🗂️](https://zenodo.org/record/6473207) | crowdsourced audio question answering over environmental sound clips |
| **Dynamic-SUPERB** | 2023-09 | National Taiwan University et al. | ICASSP'24 | [📄](https://arxiv.org/abs/2309.09510) | [💻](https://github.com/dynamic-superb/dynamic-superb) | — | instruction-based universal speech model evaluation across 55 classification tasks |
| **CompA** | 2023-10 | University of Maryland | ICLR'24 | [📄](https://arxiv.org/abs/2310.08753) | [💻](https://github.com/Sreyan88/CompA) | [🗂️](https://sreyan88.github.io/compa_iclr/) | compositional reasoning over acoustic event order and attribute binding |
| **AIR-Bench** | 2024-02 | Zhejiang University & Alibaba | ACL'24 | [📄](https://arxiv.org/abs/2402.07729) | [💻](https://github.com/OFA-Sys/AIR-Bench) | [🗂️](https://huggingface.co/datasets/qyang1021/AIR-Bench-Dataset) | 19-task foundation MCQs plus open-ended chat evaluation over speech, sound, music |
| **AudioHallucination** | 2024-06 | National Taiwan University | Interspeech'24 | [📄](https://arxiv.org/abs/2406.08402) | [💻](https://github.com/kuan2jiu99/audio-hallucination) | — | object hallucination probing of LALMs via sound-object discriminative queries |
| **SD-Eval** | 2024-06 | CUHK & ByteDance | NeurIPS'24 | [📄](https://arxiv.org/abs/2406.13340) | [💻](https://github.com/AmphionTeam/SD-Eval) | — | spoken dialogue understanding beyond words: emotion, accent, age, background sound |
| **AudioBench** | 2024-06 | A*STAR I2R (Singapore) | NAACL'25 | [📄](https://arxiv.org/abs/2406.16020) | [💻](https://github.com/AudioLLMs/AudioBench) | [🗂️](https://huggingface.co/spaces/MERaLiON/AudioBench-Leaderboard) | multi-dataset AudioLLM evaluation of speech, voice, and audio-scene understanding |
| **Audio Entailment** | 2024-07 | CMU & Microsoft | AAAI'25 | [📄](https://arxiv.org/abs/2407.18062) | [💻](https://github.com/microsoft/AudioEntailment) | — | deductive reasoning: entailment/neutral/contradiction of hypotheses against audio premises |
| **MuChoMusic** | 2024-08 | UPF & QMUL | ISMIR'24 | [📄](https://arxiv.org/abs/2408.01337) | [💻](https://github.com/mulab-mir/muchomusic) | [🗂️](https://huggingface.co/datasets/mulab-mir/muchomusic) | 1,187 human-validated MCQs on music knowledge and reasoning |
| **SALMon** | 2024-09 | Hebrew University of Jerusalem | ICASSP'25 | [📄](https://arxiv.org/abs/2409.07437) | [💻](https://github.com/slp-rl/salmon) | [🗂️](https://huggingface.co/datasets/slprl/SALMon) | acoustic consistency scoring (speaker, gender, sentiment, noise, room) for speech LMs |
| **VoiceBench** | 2024-10 | National University of Singapore | TACL'26 | [📄](https://arxiv.org/abs/2410.17196) | [💻](https://github.com/MatthewCYM/VoiceBench) | [🗂️](https://huggingface.co/datasets/hlt-lab/voicebench) | multi-facet voice-assistant evaluation under speaker, environment, and content variations |
| **MMAU** | 2024-10 | University of Maryland & Adobe | ICLR'25 | [📄](https://arxiv.org/abs/2410.19168) | [💻](https://github.com/Sakshi113/MMAU) | [🗂️](https://sakshi113.github.io/mmau_homepage/) | 10k expert MCQs testing 27 audio understanding and reasoning skills over speech, sound, music |
| **Dynamic-SUPERB Phase-2** | 2024-11 | National Taiwan University et al. | ICLR'25 | [📄](https://arxiv.org/abs/2411.05361) | [💻](https://github.com/dynamic-superb/dynamic-superb) | — | community-expanded 180-task benchmark for instruction-following speech/audio/music models |
| **ADU-Bench** | 2024-12 | Tsinghua University & University of Oxford | ACL'25 | [📄](https://arxiv.org/abs/2412.05167) | [💻](https://github.com/KuofengGao/ADU-Bench) | — | open-ended audio dialogue understanding across general, skill, multilingual, ambiguity scenarios |
| **Big Bench Audio** | 2024-12 | Artificial Analysis | dataset release | — | — | [🗂️](https://huggingface.co/datasets/ArtificialAnalysis/big_bench_audio) | Big Bench Hard reasoning questions rendered as audio to measure the speech reasoning gap |
| **VoxEval** | 2025-01 | CUHK | ACL'25 | [📄](https://arxiv.org/abs/2501.04962) | [💻](https://github.com/dreamtheater123/VoxEval) | — | speech-in speech-out knowledge QA with robustness across audio conditions |
| **URO-Bench** | 2025-02 | SJTU | EMNLP'25 Findings | [📄](https://arxiv.org/abs/2502.17810) | [💻](https://github.com/Ruiqi-Yan/URO-Bench) | [🗂️](https://huggingface.co/datasets/Honggao/URO-Bench) | end-to-end spoken dialogue: understanding, reasoning, oral conversation incl. paralinguistics |
| **RUListening** | 2025-04 | UC San Diego | ISMIR'25 | [📄](https://arxiv.org/abs/2504.00369) | [💻](https://github.com/yongyizang/AreYouReallyListening) | [🗂️](https://huggingface.co/datasets/yongyizang/RUListening) | perception-forcing music-QA distractors that defeat text-only shortcuts |
| **TACOS** | 2025-05 | Johannes Kepler University Linz | arXiv'25 | [📄](https://arxiv.org/abs/2505.07609) | [💻](https://github.com/OptimusPrimus/tacos) | [🗂️](https://zenodo.org/records/15379789) | temporally-aligned captions for frame-level audio-text alignment and temporal grounding |
| **MMAR** | 2025-05 | SJTU et al. | NeurIPS'25 | [📄](https://arxiv.org/abs/2505.13032) | [💻](https://github.com/ddlBoJack/MMAR) | [🗂️](https://huggingface.co/datasets/BoJack/MMAR) | 1,000 multi-step deep-reasoning QAs over speech, sound, music, and their mix |
| **TREA** | 2025-05 | Indian Institute of Science | Interspeech'25 | [📄](https://arxiv.org/abs/2505.13115) | — | — | temporal reasoning (event duration, ordering, counting) with confidence calibration |
| **SAKURA** | 2025-05 | National Taiwan University | Interspeech'25 | [📄](https://arxiv.org/abs/2505.13237) | [💻](https://github.com/ckyang1124/SAKURA) | — | single- vs multi-hop reasoning grounded in speech/audio attributes |
| **AudioTrust** | 2025-05 | Tsinghua University et al. | arXiv'25 | [📄](https://arxiv.org/abs/2505.16211) | [💻](https://github.com/JusperLee/AudioTrust) | [🗂️](https://huggingface.co/datasets/JusperLee/AudioTrust) | trustworthiness: fairness, hallucination, safety, privacy, robustness, authentication |
| **Speech-IFEval** | 2025-05 | National Taiwan University | Interspeech'25 | [📄](https://arxiv.org/abs/2505.19037) | [💻](https://github.com/kehanlu/Speech-IFEval) | — | instruction following and catastrophic forgetting in speech-aware LMs |
| **MMSU** | 2025-06 | CUHK | ICLR'26 | [📄](https://arxiv.org/abs/2506.04779) | [💻](https://github.com/dingdongwang/MMSU) | [🗂️](https://huggingface.co/datasets/ddwang2000/MMSU) | 47-task spoken language understanding spanning phonetics, prosody, semantics, paralinguistics |
| **MECAT** | 2025-07 | Xiaomi | ICML'26 | [📄](https://arxiv.org/abs/2507.23511) | [💻](https://github.com/xiaomi-research/mecat) | [🗂️](https://huggingface.co/datasets/mispeech/MECAT-Caption) | fine-grained audio captioning and open-set QA with discriminability-aware DATE metric |
| **MMAU-Pro** | 2025-08 | University of Maryland & NVIDIA | arXiv'25 | [📄](https://arxiv.org/abs/2508.13992) | [💻](https://github.com/sonalkum/MMAUPro) | [🗂️](https://huggingface.co/datasets/gamma-lab-umd/MMAU-Pro) | 49-skill audio general intelligence incl. long-form, spatial, multi-audio, instruction following |
| **AHELM** | 2025-08 | Stanford CRFM, UCSC & Hitachi America | arXiv'25 | [📄](https://arxiv.org/abs/2508.21376) | [💻](https://github.com/stanford-crfm/helm) | [🗂️](https://crfm.stanford.edu/helm/audio/latest/) | holistic 10-aspect ALM evaluation incl. perception, reasoning, fairness, toxicity, safety |
| **AudioMCQ** | 2025-09 | Ant Group (InclusionAI) | ICLR'26 | [📄](https://arxiv.org/abs/2509.21060) | [💻](https://github.com/inclusionAI/AudioMCQ) | [🗂️](https://huggingface.co/datasets/inclusionAI/AudioMCQ) | 571k audio MCQs with dual CoT annotations and weak/strong audio-contribution splits |
| **AudioMarathon** | 2025-10 | SJTU & Shanghai AI Lab | arXiv'25 | [📄](https://arxiv.org/abs/2510.07293) | [💻](https://github.com/DabDans/AudioMarathon) | [🗂️](https://huggingface.co/datasets/Hezep/AudioMarathon) | long-context audio understanding and inference efficiency over 90-300s speech, sound, music |
| **AQUA-Bench** | 2026-01 | National Taiwan University | arXiv'26 | [📄](https://arxiv.org/abs/2601.12248) | — | — | unanswerable-question detection and abstention behavior in audio question answering |

---

## Related Awesome Lists

- **[awesome-spoken-dialogue-systems](https://github.com/snkii/awesome-spoken-dialogue-systems)** ![GitHub stars](https://img.shields.io/github/stars/snkii/awesome-spoken-dialogue-systems?style=social) — sister list: speech-first, real-time conversational agents
- **[Awesome-Audio-LLM](https://github.com/AudioLLMs/Awesome-Audio-LLM)** ![GitHub stars](https://img.shields.io/github/stars/AudioLLMs/Awesome-Audio-LLM?style=social)
- **[awesome-large-audio-models](https://github.com/EmulationAI/awesome-large-audio-models)** ![GitHub stars](https://img.shields.io/github/stars/EmulationAI/awesome-large-audio-models?style=social)
- **[Awesome-Speech-Language-Model](https://github.com/ddlBoJack/Awesome-Speech-Language-Model)** ![GitHub stars](https://img.shields.io/github/stars/ddlBoJack/Awesome-Speech-Language-Model?style=social)
- **[Speech Trident](https://github.com/ga642381/speech-trident)** ![GitHub stars](https://img.shields.io/github/stars/ga642381/speech-trident?style=social)
- **[Awesome-Trustworthy-AudioLLMs](https://github.com/Kwwwww74/Awesome-Trustworthy-AudioLLMs)** ![GitHub stars](https://img.shields.io/github/stars/Kwwwww74/Awesome-Trustworthy-AudioLLMs?style=social)

---

## Contributing

Contributions are welcome! Please read the [contribution guidelines](contributing.md) first.
