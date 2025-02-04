+++
date = '2025-02-04T08:07:24+05:30'
title = 'Deepseek AI: How  to run them locally in your PC within 10 minutes?'
author = 'Karthi Raja'
tags = ['AI', 'Deepseek', 'Chatbot', 'Local Chat']
categories = ['Tech', 'Tutorial']
email = 'karthikraja@gmail.com'
+++

# Why Deepseek AI?

Deepseek AI is a free AI powered chatbot that functions similar to chatGPT. It is a free and open-source. It is known to be more efficient , lightweight for deployment and an open source alternative to ChatGPT.Its affordability , focus on reasoning and explanability , customisable models makes it a great choice for businesses and individuals apart from other AI chatbots.

## Getting started with installation

We need ollama which requires no skill and is very easy to install.

### What is ollama?

Ollama is a free, open-source tool that allows users to run large language models (LLMs) locally on their systems. It's designed to give users more control and privacy over their AI-driven applications.

With ollama you can easily download deepseek AI models and other modles available on ollama and easily get started with them.

## Step 1: Install ollama

First we need to download and install [ollama](https://ollama.com/)

## Step 2: Download Deepseek AI models

After installing ollama, open ollama/cmd and run the following command to download deepseek AI models.

For 1.5 billion parameters model, run the following command:

```bash
ollama run deepseek-r1:1.5b
```

If there is an error like `Error: Post "http://127.0.0.1:11434/api/show": An existing connection was forcibly closed by the remote host` make sure you have running the ollama server by running the following command:

`olama` and also check that the powershell/cmd is running as administrator or the path in which you are running the command is able to execute administrative privileges.

example :

```bash
C:\Users\username>

```

Since my gpu vram is limited to 6gb i am using the 1.5b model which is 1.5 billion parameters.That can consume upto 3 gb of vram.

If you want to use other models that need to download with more parameter see [here](https://ollama.com/library/deepseek-r1)

This will download and install the model in your system.Check the installation by running the following command:

```bash
ollama # to check the installation and other commands

ollama ps # to check how much gpu vram,cpu usage for the particular model
```

Once finished with the installation, you can start using the model by running the following command:

```bash
ollama run deepseek-r1:1.5b
```

This will start the model locally and you can interact with it using the command line interface.You can type in a message,questions etc., that you want to ask the model and it will respond you with the answer.

You can stop and install other version of the model such 7b,8b, upto 671b according to the vram available in your system.These models are licensed under MIT license.It supports commercial use and modification and derivative works.Also able use to distillation for other models.

## Deepseek AI models and explanation

The models are trained on a large corpus of text data, including books, articles, and websites. The model is trained to generate human-like responses to a wide range of questions and prompts.
