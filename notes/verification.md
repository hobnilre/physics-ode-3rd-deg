# Verification and finishing record

Completed 2026-09-26. The deliverable is one integrated, 46-page article, with three standalone vector figures and five appendices. Its explicit subject is third- and higher-order derivative equations throughout.

## Scope and coverage

- All sixteen mandatory chapters, the second-order foundation, and the shared power-accounting chapter were read in full.
- The coverage checklist contains 478 checked section/context spans, with separate locations for substantive tables, figures, and displayed definitions. Additional relevant passages across the other volumes and linked derivations are included in that map.
- The open-problem inventory records 339 atomic questions and their manuscript treatment or explicit contextual/administrative disposition. Source status is not treated as proof. Relevant unresolved mathematical, physical, and measurement limitations remain in the article.
- Numerical presentations were replaced by exact identities, counterexamples, limiting cases, or conditional statements. No simulation, numerical solver, parameter experiment, or source computation was run for the article. No numerical performance result or actual measurement is claimed.
- Consolidation retains different parameter manifolds, source and observation ports, physical preparations, singular boundaries, event sides, and uncertainty conditions. The coverage map's equation and section targets all exist in the manuscript.

## Independent mathematical checks

Exact scratch algebra was performed inline during the session; no calculation program or dataset is retained. The article supplies the definitions and derivations needed to reproduce its mathematical results.

| Construction | Independent verification and scope |
|:---|:---|
| Coefficient family | Solved the two dimensional constraints; checked lattice recurrences, both dual normalizations and all 77 displayed coefficient positions. Reference transport is distinguished from changing a physical component. |
| Stability | Factored the conventional cubic and the unit-coefficient quartic; checked the cubic Routh condition and the real part of the artificial mobility. Positive coefficients and stable denominators are explicitly insufficient for the stronger claims. |
| Collision | Expanded the two-body determinant, forcing numerator, exact reference polynomial, observation reconstruction determinant and exceptional pole cancellation. Checked the seven-atom independent-coordinate and nine-atom restricted-coordinate descriptions. |
| Work identities | Differentiated the general integration-by-parts boundary forms through derivative index 12 and checked the telescoping proof for arbitrary index. Physical collision, electrical, mechanical and field balances use independently declared ports and stores. |
| Initial data | Checked the affine state-to-jet map, recurrence, Laurent divisibility exceptions and added-mode amplitude. The five-bin history perturbation has four exactly vanishing moments while changing a delayed value. |
| RF | Checked the inductor recurrence and exact remainder, quartz rational impedance and lossless reference frequencies, three distinct two-port transfer functions, and passive resonator realization. Alternative initial maps and their error decomposition remain separate. |
| Battery | Eliminated the polarization branches symbolically; retained equal-time-constant hidden states and the fixed-state versus relaxed-state singular limit. Directly integrated the simple cutoff solution and preparation path. |
| Passive networks | Checked the positive-real numerator construction, the signed-residue counterexample, the exact Foster/Cauer identity, transformer scaling and the storage inequality. Expanded the restricted graph generating function exactly, giving counts 2, 6, 20, 80, 340, 1570 for one through six atoms. |
| Distributed and delayed models | Checked line state and power telescoping, weighted ladder stores, the fractional Stieltjes identity and delay roots. Verified the diagonal Padé moment identity at orders one through four; the article keeps finite-domain and history restrictions explicit. |
| Mechanical and electromechanical models | Verified the absorber determinant and exact resonant Schur term, reciprocal-transducer cubic and Hermitian port condition. Material-state and time-dependent-parameter powers follow directly by differentiating the declared store. |
| Network geometry | Checked the common-mediator scalar law, crossing radicals and their parameter guards, ellipsoid support and invariant-section formulas, graph incidence identities and finite-time reachable support. |
| Exact work examples | Integrated the canonical pair's two signed works separately, obtaining −19/2 and 19/2 joules. The endpoint store is independently 50 joules. The sequential three-body counterexample has momentum 10, store 50 and magnitude ratio 311/50. |
| Clamp and switching | Substituted the complete constant-voltage clamp solution into all three state equations. Integrated its port work and evaluated the store independently. The two-capacitor reset integrals explicitly distinguish sequential and coincident conductance profiles. |
| Arithmetic limitations | Proved the implicit-midpoint quadratic-invariant identity in exact arithmetic, without asserting finite-precision drift or event accuracy. Exact rank deficiency and divergent unstable continuations are retained as distinct from arithmetic uncertainty. |

Units, signs, endpoint stores and parameter values were reconciled with notes/conventions.md. Zero numerical integration residual means an exact analytical identity; unspecified physical model residuals remain unknown. Work and energy are not used to select coefficients, derivative order, preparation or control.

## Material corrections and qualifications

The manuscript explicitly corrects universal fourth-order observability for positive collision components: an exact positive-component cancellation surface exists. A massless hammer or absorber can retain a damped internal relaxation, so setting a mass to zero alone does not justify the simplest reduced model. The conventional coefficient staircase is not a stability construction. A stable polynomial does not make every chosen effort–flow map passive.

Additional corrections retain exact Laurent divisibility exceptions, distinguish quartz lossless frequency references from lossy maxima, admit passive circuits with negative residues in the stated representation, and distinguish varying a line's capacitance profile from refining one fixed uniform medium. Missing synthesis does not invalidate a proved positive-real certificate; conversely, a certificate does not establish a particular internal component structure. No computed acceptance score becomes a theorem or hardware validation.

## Selected local measurement questions

The following actual source markers were verified against their entries. Each appears once, in plain brackets beside the first local statement of the question, with an accessible observable and a simple controllable apparatus:

| Marker | Local measurement |
|:---|:---|
| OP-LR50-01 | Damped mechanical/electrical analogy using motion, current and conjugate port measurements. |
| OP-LR08-01 | Low-energy torsional contact with synchronized angles, rates and contact torque. |
| OP-LR31-01 | Independent circuit-component changes and covariance-aware voltage/current identification. |
| OP-LR12-01 | Calibrated low-power VNA observations with independently varied shunt capacitance. |
| OP-LR01-04 | Low-voltage battery emulator with controlled RC preparation and branch-voltage observations. |
| OP-LR58-01 | Two-mass shaker with force, acceleration and coupling-strain measurements. |

These are proposed discriminating measurements, not completed experiments. Relevant questions that do not meet this practical criterion remain as explicit limitations without being recast as easy experiments.

## Published references

The four cited references were checked against the publisher or institutional source: Wettstein, Grauberger and Matthiesen (2021), DOI 10.1007/s42452-021-04149-8; Steven Bible's Microchip AN826 (2002), DS00826A, pages 1–14; Coilcraft's Measuring Self Resonant Frequency application note; and Keysight's Impedance Measurement Handbook, application note 5950-3000. Undated institutional documents are marked n.d. Each bibliography entry has a supporting in-text author–year citation and a stable link.

## Build and visual inspection

The required make pdf build succeeds and produces the root PDF. Extracted PDF text has no unresolved double-question-mark references. The manuscript has 147 distinct labels and 42 internal cross-references, all resolving; all three figures have captions and prose references. There are no duplicate equation labels or stray control characters.

All 46 PDF pages were rendered and inspected, including the title, continued tables, full coefficient array, long equations, figure captions, appendices and references. All three standalone figure PNGs were also inspected. No clipped content, overlapping labels or unresolved references remain. The only small table-width warnings seen during the layout check came from rounded Pandoc column fractions (0.11105 pt); the tables fit visibly inside the intended text area. Pages changed by the final caption and figure-reference fixes were rebuilt and inspected again.

Case-insensitive manuscript checks found no source-project name, prohibited vocabulary, snake-case configuration identifiers, or unauthorized problem identifiers. The six permitted markers have the required spelling and unique occurrence. All abstract, table, figure and conclusion values are exact definitions or consequences of the displayed algebra, with illustrative assumptions identified.

## Repository disposition

Only this project directory was written. The external source and named templates remained read-only. The local repository uses main and has no remote. Sources, build instructions, working notes, standalone figures and the root PDF are staged explicitly by filename; no commit was created. Build intermediates and rendered inspection images remain ignored under build/. No scripts, notebooks, numerical datasets or scratch calculation programs are included in the deliverables.
