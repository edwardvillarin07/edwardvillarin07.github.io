---
title: "Seaweeds: a freestanding x86_64 kernel"
date: 2026-10-21 10:00:00 +0800
categories: [Case Study]
tags: [systems, c, kernel]
---

**Seaweeds** is a minimal x86_64 kernel that boots through GRUB2 and Multiboot2. It exists to answer a question we kept running into: what actually happens between the bootloader handing over control and the first line of code you wrote running?

## What it does

- Boots on real hardware and in QEMU with no host operating system underneath
- Sets up a long-mode environment, a GDT, and interrupt handling from scratch
- Provides a small scaffold you can extend with drivers, memory management, and a scheduler

## Why we built it

Kernel work is the clearest possible test of engineering discipline. There is no framework to hide behind and no runtime to catch your mistakes — either the page tables are right or the machine triple-faults. We use it internally as a teaching and hardening exercise, and as a sandbox for low-level experiments.

## Stack

C, x86_64 assembly, GRUB2 / Multiboot2.

[Source on GitHub](https://github.com/Doers-Minds/seaweeds)
