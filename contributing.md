# Contribution Guidelines

Thank you for helping keep this index complete and accurate!

## Scope

The scope is **audio-understanding foundation models** as defined in the [Scope](README.md#scope) section: models that take audio as a native input and reason over it with a large language model. Pure TTS models, neural audio codecs, ASR-only systems, audio-generation-only models, and tool-orchestration pipelines without a trained audio-LLM are out of scope.

## Adding a model

Add the model to the right year's table in the README. Years run newest first, and rows inside each year are sorted by first public release date, newest at the top. Use this format:

```
| **Model** | YYYY-MM | Organization | Venue | [📄](paper) | [💻](code) | [🤗](weights) | one-line note |
```

- **Release date** is the first public release (preprint, weights, or announcement — whichever came first).
- **Venue** is where the model was introduced: a peer-reviewed conference or journal (`ICLR'24`), an arXiv preprint (`arXiv'23`), or a company release.
- Use `—` for a link that does not exist, and 🔒 in the weights column for closed models.
- Keep the note to one concise phrase describing what is distinctive about the model.

## Adding a benchmark

Same rules, in the Benchmarks table: name, first release, organization, venue, links, and a one-phrase focus description.

## General

- Verify every link before submitting — a wrong link is worse than none.
- Keep formatting consistent and Markdown valid.
- One model or benchmark per table row; one logical change per pull request is easiest to review.
