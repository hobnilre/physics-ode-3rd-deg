# Supporting-material hierarchy and preservation audit

Date: 2026-09-28. Scope: implement the agreed treatment of the article's
peripheral supporting sections, update AGENTS.md and README, and rebuild the
PDF. Coefficient synthesis remains primary; the impact driver remains the
principal physical example. No commit or push is part of this revision.

## Editorial decisions and complete destinations

| Treatment | Main-text role | Complete supporting destination |
|:---|:---|:---|
| Initialized integrals | sec:histories is a subsection of sec:initial. The initialized chain, extra history coordinates, anchor transport and lost-constraint equations remain together. | sec:history-examples retains both finite-history perturbations, their moments, delayed values, constant/sinusoidal cases and limits. |
| Distributed, fractional and delayed systems | sec:distributed retains the telegrapher operator, finite ladder transfer, line series and domain, positive relaxation spectrum, fractional branch discontinuity, delay roots, method of steps, Padé coefficients and finite-band obstruction. The impact connection requires its own physical modal or field laws. | sec:line-accounts retains scattering and group-delay definitions, weighted spatial diagnostics, separate continuum/ladder work accounts, endpoint fields, reflection tails, reset work, material-profile changes and termination limits. |
| Waveforms and random observations | sec:identification states the effects of finite windows, preparation and correlated observations on recovery. sec:forced-observations retains the complete nonnormal metric and physical ports. | sec:waveform-statistics retains Duhamel forcing, every waveform class, finite-window corrections, Gaussian preparation/drive assumptions, Rice's formula and proof, and all finite-path/non-Gaussian restrictions. |
| Stochastic work | sec:stochastic-work moves intact into sec:work, after the deterministic equation-term and physical-port comparisons. | Its covariance identity, integrability condition, separate port integrals, endpoint states, operation/relaxation distinction, bias accumulation and unresolved signed drift remain local. It refers to sec:waveform-statistics for the observation assumptions. |
| Three-state and graph constructions | sec:networks retains eq:three-state and eq:pair-geometry. sec:network-elimination retains incidence dynamics, scalar annihilation, null modes, mechanical active graphs, both invariant kernels and the cross-power conditions. | sec:network-pair retains the complete two-body excursion, works, frame comparison, electrical pair ratio and separated three-body counterexample. |
| Pickups and crossings | The main construction explains that loading changes the realization and that a selected observation can conceal common preparation. | sec:pickup-observation retains loaded pickup/rectifier distinctions, bus law, shifted common states, separate works and extrema questions. sec:crossing-diagnostics retains the full coupled-pair trajectory, threshold derivations, signs, tangencies, exact boundary cases and all alternative parameter measures. |
| Magnitudes and reachability | sec:network-elimination distinguishes synthesized coefficients from subsequent reachable observations. | sec:observation-bounds retains the ellipsoid proof, conceptual figure, exact reachable support and logarithmic norm, transformer/gyrator maps, polyphase and parasitic observation limits, sign sequences and topology qualifications. sec:bounds retains every invariant-section formula, attaining state, degenerate/incompatible case and physical interpretation. |
| Clamp and loaded transformer | sec:clamp and sec:loaded-transformer retain their complete equations, solutions, work identities, singular/event cases and local measurement questions. The cubic clamp coefficient and its forcing are explicitly interpreted beside the elimination. | Existing constrained limits remain in sec:compound-limits; no clamp or transformer derivation was omitted. |
| Physical references and controllers | sec:finite-implementation explains additional physical states, forcing, initialization and the limits of a linear scalar-order inference. | sec:physical-reference and sec:compound-states now precede the ideal and finite controllers in sec:compound-driver. The complete capacitor-cell derivation, both ramp durations, all numerical works/endpoints, OP-TRF-12, compound matrices, mechanical map, ten-port account, common-reference law and hardware questions remain together. sec:finite-controller retains the existing 28-state construction, all local powers, rail preparation/cutoff and nonlinear limitations. |
| Additional contacts | sec:impact-constitutive distinguishes extra modal states, geometric effective inertia, penetration memory and event laws as different additional inputs to synthesis. | sec:contact-extensions retains the entire teeterboard, club--ball, hammer--nail and terminal-state discussion: all equations, examples, geometry, wave times, support/actuator channels, memory laws, event ordering and unresolved measurements. |
| Exact verification | sec:synthesis-evidence continues to refer to the reproducibility checks. | sec:verification remains the final technical appendix with the complete original table, midpoint identity and residual qualifications. |

The main network section now concentrates on constructing equations and
changing their physical implementation. It refers to the exact supporting
results where an observation, preparation or physical account requires them.
The article has twelve appendices; they remain part of the stand-alone
manuscript. The arbitrary-order recurrence retains its early main-text
position immediately after the impact-driver construction.

## Preservation and source audit

All thirty chapter SHA-256 hashes in the preceding source audit still match.
The established full integration and earlier corrections therefore remain
the baseline. This revision audits preservation and new destinations; it
does not claim a fresh full reading of unchanged source chapters.

Comparison with the pre-reorganization manuscript preserves verbatim all
171 equation environments, 41 align environments, the theorem and the lemma,
all twenty tables, all three figure declarations, and the complete
bibliography. All 260 original labels remain. All twelve developed
open-problem markers remain exactly once; OP-TRF-12 moves with its complete
local derivation and practical measurement discussion.

Every original substantive non-heading line is retained except six explicitly reviewed
navigation or explanatory changes: the introduction now calls the moved
reference material an appendix; the delay passage points to the actual
history counterexample; the ladder-store sentence names its finite ladder;
the loaded-transformer passage points to the relocated correspondence;
the compound overview points to its finite-controller subsection; and the
finite-history proof is clarified as described below. These changes retain
all distinct scientific conditions and results.

The obsolete forced page break before the bibliography is removed so the
references can follow the final verification discussion on the same page.

All 509 checked coverage-item identities remain. The coverage checklist now
names the precise destinations of moved results, and relevant open-problem
coverage entries point to their new subsections and appendices. The inventory's
question text, classifications and source-status statements are unchanged.
All destinations in coverage, inventory and conventions resolve.

## Exact checks and framing changes

The history proof now specifies why the moments vanish: for moment degree
j at most three, the integral over each equal-width bin is a polynomial of
degree at most j in its bin index; the five weights take its fourth finite
difference. Exact rational integration independently gives zero for all four
moments and confirms the delayed-value bin. This clarifies the old
finite-difference explanation without changing the example or its result.

An independent symbolic elimination rechecks the highlighted clamp
coefficient C(L1 L2 - M²), the first-derivative coefficient L1 and the
constant forcing Vc. The main implementation summary distinguishes a
physical state count from a linear scalar degree and explicitly retains
the nonlinear clipped controller's different equation class. No numerical
simulation or time integration was performed; checks remain scratch work.

AGENTS.md records the concrete role required of main-text support and the
placement rules for all seven agreed categories. README describes the
complementary realization checks and the domain of finite coefficient
laws; all five energy teasers and their manuscript links remain. It does
not describe the article's revision history.

Build, final reference checks and actual PDF inspection are recorded in
the corresponding entry of notes/verification.md.
