# Series Development Proposal Template

A reusable publishing system for premium episodic IP.

## Purpose

Turn one approved source of truth into a commissioning-quality development book, presentation deck, executive leave-behind and production handover.

## Core rule

Every asset must have:
- one owner
- one review status
- one intended destination
- explicit canon references
- a clear problem it solves

No page is approved because it is attractive. It is approved because it increases clarity, emotional investment or greenlight confidence.

## Standard outputs

1. **Development Book** — approximately 60 pages.
2. **Presentation Deck** — 10–12 pages.
3. **Executive Leave-Behind** — 2 pages.
4. **Visual Review Pack** — full-bleed image set with continuity controls.
5. **StoryLab Scope** — development pathway, deliverables and decision gates.

## Workflow

1. Duplicate this template into a project `proposal/` directory.
2. Replace all bracketed placeholders.
3. Link every page to canon and approved source files.
4. Draft story before design.
5. Pair every approved page with an image brief.
6. Run story, continuity, visual, production and commissioner reviews.
7. Approve the master Markdown source before export.

## Status values

- `Placeholder`
- `Draft`
- `In Review`
- `Revision Required`
- `Approved`
- `Locked`

## Required page metadata

```yaml
page:
title:
section:
status: Placeholder
owner:
reviewer:
destination: development-book
canon_refs: []
source_refs: []
image_refs: []
word_target:
problem_solved:
last_updated:
```

## Publishing principle

Write once. Approve once. Publish everywhere.

The project Markdown remains the source of truth. Word, PDF, PowerPoint and web versions are derived outputs, never separate editorial masters.
