# The Last Boy on Earth — Greenlight Dashboard

## Current status

- **Greenlight Book:** v0.95 consolidated master manuscript
- **Overall development readiness:** 99%
- **Page-level source readiness:** 99%
- **Story structure:** full dramatic treatments cover all ten episodes
- **Proposal assembly:** all 50 pages are represented in canonical `GREENLIGHT_BOOK.md`
- **Continuity:** first formal canon/continuity review complete in `CONTINUITY_REVIEW.md`
- **Character development:** central boy dossier and detailed alien crew dossiers complete at development-framework level
- **Two-minute proof:** timed 120-second script and 18-shot production list complete
- **Proof continuity:** 14-reference production continuity specification complete
- **Proof storyboard:** storyboard/keyframe briefs complete for all 18 shots
- **Identity gate:** executable REF01–REF05 production and approval pack complete in `production/IDENTITY_GATE_REF01_05.md`
- **Visual production control:** one dependency-aware tracker covers all 14 proof refs, 18 proof shots and 50 Greenlight Book image assignments in `production/MASTER_VISUAL_PRODUCTION_TRACKER.md`
- **Export pipeline:** canonical manuscript can now generate DOCX, PDF, PPTX and standalone HTML through `export/build_exports.sh` and `.github/workflows/lboe-export.yml`
- **Visual production:** all 50 proposal pages have canonical numbered image assignments; actual approved identity references remain the current production blocker
- **Highest unresolved story risk:** founder approval of the recommended Memory Ark mythology, current off-world-human reveal, and remaining identity decisions for the boy

## Canonical files

`GREENLIGHT_BOOK.md` — canonical editorial manuscript and first source for external outputs.  
`CANON.md` — locked story authority.  
`CONTINUITY_REVIEW.md` — continuity findings and resolutions.  
`production/TWO_MINUTE_PROOF_SCRIPT.md` — current 120-second proof source.  
`production/PROOF_CONTINUITY_PACK.md` — authority for REF01–REF14.  
`production/IDENTITY_GATE_REF01_05.md` — executable production and approval authority for the first five identity references.  
`production/PROOF_STORYBOARD_KEYFRAME_PACK.md` — shot-level authority for all 18 storyboard/keyframe briefs.  
`production/MASTER_VISUAL_PRODUCTION_TRACKER.md` — dependency-aware production status and release authority across proof refs, proof shots and the 50-page book.  
`visual/UNIFIED_50_PAGE_IMAGE_SEQUENCE.md` — canonical creative assignment list for all 50 Greenlight Book images.  
`export/build_exports.sh` — canonical manuscript export command.  
`export/README.md` — export usage and quality boundaries.

## Completed foundations

- Core premise, logline and Tencent pitch document
- Locked canon and guardrails
- Ten-episode Season One map and full dramatic treatments
- Fifteen-minute episode architecture
- Reclaimed Earth world bible and reusable location families
- Central boy dossier and survival logic
- Alien culture/design grammar
- Detailed alien crew dossiers
- Production art and shot bible
- Recommended Memory Ark framework, kept provisional
- Master 50-page Series Development Proposal map
- Consolidated 50-page `GREENLIGHT_BOOK.md`
- Canon and continuity review v0.1
- Unified 50-page image production sequence
- Timed two-minute proof script and 18-shot list
- 14-reference Proof Continuity Pack
- 18-shot Storyboard + Keyframe Prompt Pack
- REF01–REF05 Identity Gate production pack, controlled candidate method and approval scorecard
- Master Visual Production Tracker connecting 14 refs → 18 shots → 50 Greenlight Book images
- Multi-format Greenlight Book export script for DOCX/PDF/PPTX/HTML
- GitHub Actions export workflow with output verification and downloadable artifact

## Latest completed work

### Multi-format Greenlight Book export pipeline v0.1

The repository can now derive external review formats directly from `GREENLIGHT_BOOK.md` without creating a competing editorial master.

The export system includes:

- `export/build_exports.sh` using Pandoc as the deterministic conversion layer
- Word `.docx` output for normal manuscript review
- printable `.pdf` output when a LaTeX engine is installed
- structural `.pptx` output as a first-pass presentation scaffold
- self-contained `.html` output for browser review
- `export/greenlight.css` for clean HTML/print presentation
- `.github/workflows/lboe-export.yml` to build all four outputs automatically on relevant changes
- non-empty output checks before GitHub accepts the export run
- one downloadable GitHub Actions artifact containing the generated package
- an explicit rule that generated Word/PDF/PPTX/HTML files are outputs only and must never replace `GREENLIGHT_BOOK.md` as editorial authority

**Status:** export infrastructure is committed. The current GitHub Actions run is being used as the first live verification of the pipeline; until it completes successfully, the pipeline should be described as implemented rather than fully validated.

## Continuity position

The following remain protected and must not be silently fixed by visual generation:

- the boy's final name, exact age, ethnicity, carers and full biography
- exact duration of his isolation
- final signature personal object
- final alien names and final species anatomy until visual approval
- the Memory Ark as final mythology
- off-world human communities as final canon
- exact cause of humanity's disappearance
- identity of the approaching force

The project remains **premium episodic animation with photographic credibility**. Photoreal craft language is a rendering/cinematography benchmark, not a format change.

## Production progress

- **Episode treatments:** 10/10 complete
- **50-page master manuscript:** 50/50 represented
- **Continuity review:** v0.1 complete
- **Boy character foundation:** complete at development-framework level
- **Alien crew dossiers:** complete at development-framework level
- **50-page visual assignments:** 50/50 complete
- **Two-minute proof script:** 1/1 complete
- **Proof shot list:** 18/18 complete
- **Continuity reference specifications:** 14/14 complete
- **Identity-gate production briefs:** 5/5 complete
- **Storyboard/keyframe briefs:** 18/18 complete
- **Master visual production tracker:** complete v0.1
- **Export pipeline:** implemented; live workflow validation pending
- **Approved identity references:** 0/5
- **Approved total proof references:** 0/14
- **Approved storyboard frames:** 0/18
- **Approved Priority A Greenlight images:** 0/12
- **Page-level source readiness:** 99%

## In progress / remaining

- Validate the first automated DOCX/PDF/PPTX/HTML export run and repair any conversion failure
- Generate, review and approve REF01–REF05 using the Identity Gate
- Build REF06 Crew Group Scale Plate, REF13 Hand-Contact Sheet and REF14 Eye-Line/Height Chart from approved identities
- Generate remaining prop/environment references REF07–REF12
- Generate the 18 final storyboard/keyframes in dependency order
- Generate and approve Priority A Greenlight Book images
- Editorially trim Pages 07–22 and 39–50 in layout
- Art-direct the Tencent PowerPoint using approved imagery rather than treating the structural Pandoc PPTX as final design

## Next highest-priority tasks

1. Complete live verification of the automated export workflow and fix any build error if present.
2. Generate the **REF01 Boy Portrait eight-candidate controlled contact sheet** using `production/IDENTITY_GATE_REF01_05.md` and score every candidate before refinement.
3. Generate the **REF03 Scientist Portrait controlled candidate sheet** in parallel because it unlocks REF04, REF06, REF13, REF14 and most relationship shots.
4. Propagate approved faces into REF02 and REF04 rather than regenerating identity.
5. Approve REF05 Security Officer from the established alien civilisation grammar.
6. In parallel, produce READY world/object references REF08, REF07, REF09, REF10, REF11 and REF12.
7. Build REF06, REF13 and REF14 only after their identity dependencies pass.
8. Release final storyboard generation only when each shot's reference row in `MASTER_VISUAL_PRODUCTION_TRACKER.md` is clear.

## Repository principle

`GREENLIGHT_BOOK.md` is the canonical editorial manuscript. `CANON.md` remains the locked story authority. Production files may define executable visual choices while preserving unresolved biography and mythology as provisional. External Word, PDF, PowerPoint and website outputs derive from the approved master manuscript and approved continuity references so story and imagery remain aligned.

© 2026 Napkin Studio. All Rights Reserved.
