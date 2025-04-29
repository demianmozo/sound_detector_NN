# sound_detector_NN

This project was developed as the final work for the course **"From Algorithm to Hardware: Machine Learning in Embedded Systems"**, held in April 2025, taught by Romina Soledad Molina, Ph.D., and Nikola Jovalekic, Ph.D., with contributions from Eng. Maynor Ballina and Dr. Gustavo Sutter.

## Description

We designed and implemented a neural network capable of detecting and classifying basic sounds (`yes`, `no`, `clap`, and `snap`) from 1-second audio clips.

The model was trained using MFCC coefficients as input features. Compression techniques such as **quantization** and **pruning** were later applied to prepare the network for deployment on an embedded system based on FPGA + SoC.

## Technologies and Tools

- Python (TensorFlow / Keras)
- hls4ml
- Neural network compression techniques
- Vivado / Vitis

## Context

The course covered topics including:

- Machine Learning in embedded systems
- FPGA accelerators and hardware design with HLS
- Design pipeline: from algorithm to hardware
- Model compression techniques: **quantization**, **pruning**, and **knowledge distillation**
- Workflow for training and deployment on SoC devices

Course duration: **46 hours**
Date: **April 1–11, 2025**

## Certificate

[![Certificate](/certificate.png)](/certificadoCursoMarDelPlata-2025-MOZO_firmado.pdf)

