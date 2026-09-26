# AGENTS.md — Third- and Higher-Order ODEs

Read and follow `/home/bo/projects/physics-tools/AGENTS_CHAPTER.md`, which
extends `/home/bo/projects/physics-tools/AGENTS_GENERAL.md`. These two
explicitly named files are exceptions to the general rule against reading
outside this project directory and `SOURCE`. This file supplies the chapter
parameters and takes precedence over both templates.

## Explicit Focus: Third- and Higher-Order ODEs

Write one stand-alone, integrated journal-style article whose explicit
focus is **Third- and Higher-Order ODEs**. Order refers to derivative order.
Cover their mathematical construction, coefficient families,
identification, physical realizations, initial data, applications, and
limits, together with the foundations needed to understand them.

**Never leave out content about Third- and Higher-Order ODEs.** Preserve
every relevant definition, derivation, equation, identity, table, conceptual
figure, example class, assumption, condition, limitation, conclusion, and
open question. This includes relevant material outside the chapter list
below. Reorganization and consolidation are allowed only when every
distinct result, case, and qualification is retained. Use appendices for
long derivations or tables when needed; length is not a reason to omit
material.

## Parameters

```text
SOURCE = /home/bo/projects/physics-edge
SOURCE_CHAPTERS =
  - volumes/volume_i_q1/02_Ode3rdDeg.md
  - volumes/volume_i_q1/03_ImpactWrenchModels.md
  - volumes/volume_i_q1/04_ImpactCollisionNumerical.md
  - volumes/volume_i_q1/05_ImpactCollisionValidation.md
  - volumes/volume_i_q1/06_OdeRowMixture.md
  - volumes/volume_i_q1/07_OdeRowSelection.md
  - volumes/volume_i_q1/08_RowStructure.md
  - volumes/volume_ii_q2/01_PowerEnergy.md
  - volumes/volume_ii_q2/02_EnergyWorkAnomalies.md
  - volumes/volume_i_q1/09_SteadyStateRF.md
  - volumes/volume_i_q1/10_CoilBatteryTransfer.md
  - volumes/volume_i_q1/11_PassiveRealizations.md
  - volumes/volume_i_q1/12_InitialDataPreparation.md
  - volumes/volume_i_q1/13_DistributedLineScattering.md
  - volumes/volume_i_q1/14_DrivenDifferentialCRL.md
  - volumes/volume_i_q1/15_TunedAbsorber.md
```

## Required Chapters and Reading Order

Read all 16 listed chapters in full and integrate their substantive content
under the shared template's completeness rules. Their roles are:

- Volume I, chapters 2–8: the coefficient family, collision models,
  derivative-order requirements, row mixtures, selection, and exact row
  structure.
- Volume II, chapters 1–2: signed physical work and the interpretation of
  higher-order equation terms, including normalization, stability,
  passivity, hidden initial states, and contact-release limitations.
- Volume I, chapters 9–15: RF and phasor limits, eliminated polarization
  states, passive realizations, initial-data compatibility and preparation,
  distributed and delayed limits, driven systems, and mechanical and
  electromechanical applications.

Read `volumes/volume_i_q1/01_Ode2ndDeg.md` first for the second-order
template and mechanical/electrical analogies. Read
`volumes/shared/01_PowerAccounting.md` for physical work and energy
conventions. Include their foundations wherever the higher-order treatment
needs them, and retain all of their content directly concerning Third- and
Higher-Order ODEs.

The list places the signed-work and anomaly chapters after the collision
and row theory they examine and before the later applications. Integrate
their results where the relevant physical interpretation arises in the
article.

## Coverage Beyond the Listed Chapters

`SOURCE_CHAPTERS` is the mandatory starting set, not an exhaustive boundary
on the topic. Search the chapters throughout `SOURCE/volumes/` and follow
their references for additional Third- and Higher-Order ODE material.
Judge relevance from the content, including coefficient rows, eliminated
states, effective order, realizability, and initial-data requirements;
chapter titles and exact phrase matches alone are insufficient.

Read and integrate every additional chapter focused on this subject. For
chapters with a broader or different focus, include every relevant section
and the context needed to make it self-contained. A chapter's placement in
another volume or its absence from `SOURCE_CHAPTERS` never justifies
omitting its Third- and Higher-Order ODE content. This requirement extends
the shared template's treatment of material read for context.

Inspect the relevant open-problem entries and linked derivations as the
shared template requires. Preserve every unresolved question about Third-
and Higher-Order ODEs found in this coverage. The template's practical
measurement criterion governs which questions receive a developed
measurement proposal; it does not permit other relevant open questions or
limitations to be dropped.

## Coverage Requirements

Numerical chapters and sections remain in scope. Apply the shared
template's symbolic replacement rules to their computational material,
preserving the mathematical question, assumptions, substantive content,
and limits in exact derivations or conditional reasoning. Correct erroneous
claims and identify unsupported claims as hypotheses or unresolved
limitations. Neither numerical presentation nor an unsupported conclusion
is a reason to silently omit the underlying higher-order ODE issue.

Carry the distinction between dimensionally valid coefficients, a selected
scalar ODE, and a physically realized system through every application.
State the conditions for effective derivative order, stability, port
passivity, admissible initial data, and any finite approximation to a
distributed, fractional, or delayed system. Keep work and energy as audits
of declared physical systems; do not use them to select row weights or
derivative order.

## Completeness Audit

Maintain a working coverage checklist mapping every substantive section,
result, table, figure, and open question in the required chapters and every
additional relevant passage to its treatment in the manuscript or an
appendix. Record where material is consolidated, corrected, or replaced
by symbolic or conditional reasoning. Keep source paths and identifiers
out of the article except for the open-problem markers permitted by the
shared template.

Before finishing, audit every required chapter and every additional
relevant passage against this checklist. Verify that the article retains
all distinct assumptions, cases, and limitations and explicitly keeps
Third- and Higher-Order ODEs as its focus. Any uncovered Third- and
Higher-Order ODE material is unfinished work; complete its treatment
before declaring the article finished. Complete the shared templates'
mathematical verification, build, and PDF inspection requirements.
