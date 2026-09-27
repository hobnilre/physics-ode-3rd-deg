# REVIEW_1 revision record

Revised 2026-09-27. The review remains in REVIEW_1.md as the original review record. The manuscript and root PDF contain the revisions. No files were staged and no commit was made.

## Required corrections

| Review item | Concrete revision | Acceptance evidence |
|:---|:---|:---|
| R1: transformer convention | eq:hidden-rc-state uses secondary-to-primary ratio ν. eq:hidden-rc is derived from that state model; the passive synthesis convention is explicitly n=1/ν. The zero-ratio endpoint retains a closed internal RC loop. | Exact elimination gives the stated admittance and initial-state current. Direct resistor-power integration gives eq:hidden-discharge and agrees with independent capacitor endpoints. |
| R2: initialized cancellation | eq:cancellation-initialized gives 3v=2i+(a0+2b0)exp(−t), its compatibility condition and a zero-current counterexample. The introduction and README now distinguish transfer degree, free-response order and six physical stores. | Branch-current elimination was checked symbolically; the general initialized law is (D+1)(3v−2i)=0. |
| R3: diode blocking and zero OCV | eq:battery-off states the guard. eq:battery-restart provides an exact signed-preparation counterexample. Open-switch relaxation, diode-blocked intervals, restart, tangency, current orientation and zero-OCV boundaries are separate. | The first voltage zero and later negative voltage were checked exactly. Cutoff time and OCV work were integrated symbolically. Every isolated-relaxation formula now names its valid interval. |
| R4: graph spaces | eq:graph uses vertex linkage λv and edge charge qe. The subsequent physical circuit uses branch linkage λe and node-branch incidence Be. | The invariant kernels are Bvᵀhv=0 and Behe=0. The two-vertex tree has one common vertex invariant and no edge-cycle invariant. Resistive winding drops have their own term. |
| R5: omitted constitutive proposals and weak coverage evidence | eq:constitutive-family, eq:constitutive-candidates and eq:constitutive-rational explicitly retain independent contact/joint reference triples, the gated laws, internal-state alternatives and initialization/convergence restrictions. The rational pair is kept unreduced unless removed natural contributions are invisible or excluded by preparation. | Coverage destinations for 195 source spans were rewritten with specific equations, tables, sentences and dispositions. The review's demonstrated mismatch is corrected; aggregate counts are no longer offered as an independent completeness certificate. |
| R6: peak/RMS convention | Reactive power is Im(VI*)/2 with peak phasors; RMS expressions are explicitly identified. | The factor agrees with eq:period-work, whose period factor remains π/ω. The convention is recorded in notes/conventions.md. |

## Further review suggestions

- S1: thm:polynomial-passivity proves that a genuine polynomial P of degree at least three cannot make P(s)/s globally positive real under the direct voltage/charge assignment. The proof uses a dimensioned frequency reference and an explicit bound on all lower terms. Rational input numerators and finite response domains remain separate cases.
- S2: eq:measurement-separation gives a prediction-set separation criterion including nuisance parameters. All six local proposals now have concrete predictions: matched normalized trajectories, a hidden anvil displacement, an exponent-change coefficient, a finite shunt-capacitance change, split polarization relaxation, and tuned absorber displacement/strain. Deterministic bounds are distinguished from covariance and probabilistic confidence regions.
- S3: the introduction now states the contribution and distinguishes it from established theory. Its comparison table names input/output, physical states, zero-state transfer degree and initialization restrictions. Verified Kalman, Willems, Foster and Rice references are cited beside the corresponding claims.

## Coverage re-audit and replacements

The mandatory chapter treatments were compared again by their constructions, including numerical sections and their retained qualifications. The revised checklist points to the actual replacements rather than interpreting a shared subject as equivalence.

Additional gaps found during this audit received explicit treatment:

- The normalized collision's five economical weights are now exact rationals in eq:collision-weights; w4=1 is identified as normalization.
- The fixed-contact two-coordinate table gives all nine exact weights, and eq:seven-weights gives the fixed-damping restriction. The six candidate support patterns are compared by exact power independence rather than by imported numerical rankings.
- eq:collision-normalized gives the four-group state matrix, inverse dimensional reconstruction and reference-versus-physical interchange distinction.
- State-dependent scalar contact coefficients and an explicit nonlinear remainder retain their regularity and local-elimination qualifications.
- The initial-support discussion includes explicit signed Minkowski cancellation and a rational function outside the finite Laurent class.
- RF geometry now includes pairwise phase separation and ordered polygon area, with zero-phasor and ordering qualifications. Series RLC, shunt–series–shunt and two-section topologies are explicitly constructed from their matrices.

The sixteen mandatory chapters and both foundations retain local treatment of order, realization, initialization, work and unresolved limits. Additional-volume graph passages implicated by R4 were checked against their separate vertex and edge definitions. The earlier additional-volume and atomic-question inventories remain traceability records; their aggregate totals are not presented as a newly independent proof of every source claim.

Source results that depend on numerical integration, fitting or finite searches are represented by exact identities, counterexamples or conditional acceptance statements. This revision does not claim to have reproduced those computations, measured hardware, resolved the physical destination of released contact energy, or closed the existing uncertainty and synthesis questions.

## Verification and PDF

Inline symbolic checks covered the changed circuit, battery, graph, coefficient, normalized-state and measurement formulas. No simulation or numerical parameter study was run, and no calculation script was retained.

The required make pdf build succeeded. All 53 pages were rendered and inspected; the new theorem, continued tables, initialized circuit equation, diode guard, graph discussion and references fit without clipping. The PDF has no unresolved double-question-mark references. The layout check has only the pre-existing 0.11105-point coefficient-table rounding warnings and one harmless underfull paragraph.

The final repository check is read-only: the index remains empty, REVIEW_1.md remains untracked, and the revised article PDF is left as a local modification.
