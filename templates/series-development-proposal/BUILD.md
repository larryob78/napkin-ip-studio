# Build and Publishing Workflow

## Source of truth

The project proposal Markdown is the only editorial master.

Do not edit exported Word, PDF or PowerPoint files as independent sources. Changes return to Markdown, pass review and are exported again.

## Recommended project structure

```text
projects/[project-slug]/proposal/
├── README.md
├── MASTER.md
├── STATUS.md
├── pages/
│   ├── 01-cover.md
│   ├── 02-opening.md
│   └── ...
├── images/
│   ├── approved/
│   ├── review/
│   └── rejected/
├── references/
└── exports/
    ├── docx/
    ├── pdf/
    └── pptx/
```

## Build order

### Gate 1 — Story lock

- Canon references are current.
- Names and terminology are consistent.
- Series synopsis, season arc and episode progression agree.
- Open development hypotheses are labelled as provisional.

### Gate 2 — Page manuscript

- Every page uses `PAGE_TEMPLATE.md` metadata.
- Every page answers one executive question.
- Adjacent pages do not repeat the same material.
- The master manifest establishes publication order.

### Gate 3 — Visual pairing

- Every page has a full-bleed image role.
- Character and environment continuity references are linked.
- Images are 16:9 or safely croppable for the final format.
- Images contain no embedded typography unless explicitly approved.

### Gate 4 — Editorial review

Run:
1. Story review
2. Continuity review
3. Commissioner-readiness review
4. Visual review
5. Copy edit
6. Executive Showrunner approval

### Gate 5 — Export

Generate:

- a long-form development book in DOCX
- a designed PDF for distribution
- a 10–12 page PPTX for presentation
- a two-page executive leave-behind

## Presentation extraction rules

The PowerPoint is derived from the book, but it is not a miniature copy of it.

- One idea per slide.
- Minimal text.
- Full-bleed imagery.
- Speaker notes carry detail omitted from the slide.
- The story is introduced before Napkin's production process.
- The final slide contains a specific development ask.

## File naming

```text
[project]-development-proposal-v[version].docx
[project]-development-proposal-v[version].pdf
[project]-tencent-deck-v[version].pptx
[project]-executive-summary-v[version].pdf
```

## Release checklist

- [ ] All included pages are Approved or Locked
- [ ] Canon version recorded
- [ ] Rights and confidentiality language checked
- [ ] Image licenses and generation provenance recorded internally
- [ ] No unresolved placeholders
- [ ] No duplicated or contradictory names
- [ ] PDF fonts and images render correctly
- [ ] PowerPoint remains editable
- [ ] Final files have version numbers and dates
