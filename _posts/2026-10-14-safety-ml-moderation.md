---
title: "Safety ML: moderation that survives real traffic"
date: 2026-10-14 10:00:00 +0800
categories: [Case Study]
tags: [machine-learning, moderation, python]
---

Online communities do not fail because nobody had a good intention about moderation. They fail because moderation does not scale past the first few thousand users.

**Safety ML** is our reference pipeline for content moderation: a Python service that classifies user-generated text for toxicity and harassment, ranks the results by severity, and feeds a human review queue instead of pretending a model can make the final call alone.

## What it does

- Classifies text across toxicity and harassment categories with confidence scores
- Prioritises the queue so moderators see the highest-risk content first
- Keeps a human in the loop, with every decision logged and reviewable
- Designed to be swapped onto a different model without rewriting the product

## What we learned

The hard part of moderation is never the classifier's accuracy on a benchmark. It is the long tail: sarcasm, reclaimed language, in-group jokes, and the fact that a false positive is a real person being silenced. We build the review tooling before we tune the model.

## Stack

Python, scikit-learn, a small inference service, and a review dashboard.

[Source on GitHub](https://github.com/Doers-Minds/rpw-safety-ml)
