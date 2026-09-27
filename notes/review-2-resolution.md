# Review 2 resolution

Revision date: 2026-09-27. This record maps REVIEW_2.md to the revised manuscript and distinguishes completed symbolic work from unresolved physical and source-numerical questions. Earlier REVIEW_1.md corrections remain intact. The source was read-only; no source computation was run.

| Finding | Revised treatment | Verification and remaining question |
|:---|:---|:---|
| R2-1 | New abstract, subtitle and opening paragraphs; sec:scope and sec:conclusion lead with release deficits, source-off growth and hidden changing stores. | The coefficient/state/order framework and all earlier substantive sections remain. The conclusion repeats the exact signs and the unresolved physical questions. |
| R2-2 | sec:coupling-open; eq:coupling-residual; eq:source-off-values through eq:source-off-works; exact endpoint table. | Symbolic substitution verifies all three ODEs, the cubic factorization, each separate loss work, the endpoint stores and residual. Added controller attribution is conditional. The illustration is a new assumed case, not a reconstruction of source outputs. |
| R2-3 | sec:release-open; eq:release-residual, eq:release-sequence and eq:release-measurement. | Event-side continuity gives r_E=-U_c with no declared event work. Four whole-store destinations are explicitly exclusive counterfactuals. Retained states and measured outward transfers receive separate terms. Physical destination and release law stay open. |
| R2-4 | eq:bias-state, eq:bias-work, eq:bias-increase; new Appendix sec:supply. | Seven-state conditional construction, charger/limiter and converter laws, zero-bias limit, dimensioned sensor, thermal reservoir and individual sub-boundary works. Algebraic consistency does not resolve source numerical checks or hardware realization. |
| R2-5 | sec:stochastic-work; sec:residual-outcomes; eq:residual-enclosure and signed outcome table; eq:signed-integration-control. | Exact triangle-inequality bound and mean-power covariance identity. A positive deterministic quadrature discrepancy corrects an unjustified symmetric-error sign inference. Distinct operation, relaxation, endpoint and port-work questions remain distinct. |
| R2-6 | eq:formal-work discussion and eq:physical-jet-store. | Inverse collision reconstruction checked against original state equations. The positive store and formal Q are compared without erasing Q growth or assigning it an unobserved component. |
| R2-7 | sec:hidden-measurement; eq:hidden-energy-bound; finite low-voltage capacitor/resistor audit. | Bound follows by eliminating initial voltage; component uncertainty uses a positive coupling lower bound. Ideal resistor-work closure and unresolved multimode/nonideal identification are separate. OP-LR23-01 verified in its source entry and used once. |
| R2-8 | Twelve chapter destinations and eighteen atomic issue mappings rewritten in notes/coverage.md and notes/open-problem-inventory.md. | The exclusive-destination paragraph and finite-supply accounts now exist at their named destinations. Prior resolved numerical children retain their limited source status rather than being reopened or silently generalized. |

## Mathematical details checked

- The source-off example has dimensionless polynomial (z-1)(z²+3z-1). Its selected exp(t/1 s) mode solves the three state equations. The exact interval is [0,ln(2) s], not a steady state or cycle.
- Contact force zero gives delta=-d_c delta_dot/k_c and U_c=d_c² delta_dot²/(2 k_c). The deletion residual is negative. Multiple gate contributions add only after finite-interval works remain separate.
- The physical jet map reconstructs both anvil coordinates when Delta is nonzero; substituting the original dynamics verifies the reconstruction. Its store is the original positive component expression under an invertible map.
- The finite supply has plant, bias-coil, DC-link, sensor and thermal rate identities. Coil-terminal, sensor and actuator transfers cancel only after the individual works are retained. The combined external powers are ideal charger, plant electrical/mechanical drives, load and ambient heat.
- The current limiter uses an explicit voltage drop. Its product with current is nonnegative on both saturated branches and zero inside the limit. Setting the charger effort to zero leaves the resistive path attached.
- The bias converter divided loss effort is continuous at zero bias current and has nonnegative power. A source-off coil increase is conditional on the independently integrated reaction exceeding copper/converter losses.
- The new hidden-store upper bound needs either positive coupling information or a preparation bound. The ideal zero-coupling discharge remains a decoupled closed internal loop.
- The uncertainty enclosure makes no independence assumption. The finite-sum t² control has exact positive error a T³/(6 n²); no quadrature or simulation was executed.

## Source provenance kept outside the manuscript

The following are source-reported computational values and statuses, retained to identify what the symbolic replacement does and does not settle. They are not new measurements, exact article results, or reproduced computations.

| Source passage or issue | Source-reported result and retained limitation | Symbolic/conditional replacement |
|:---|:---|:---|
| volume_ii_q2/02_EnergyWorkAnomalies.md, Step 12 destination audit; OP-LR03-01/02 and OP-LR04-01/02 | Force-zero two-impact removed-store magnitude approximately +0.004665 to +0.029913 J; deformation-zero and compressive-only controls zero in the stated finite model. Whole-store thermal/acoustic/fracture/fixture assignments are exclusive and unidentified. | Exact event residual -U_c, sum over gates, independent retained-state/outward-work formula and separate criterion question. No computed magnitude is imported into the article. |
| volume_i_q1/15_TunedAbsorber.md, lines 407–415; OP-LR59-02 | Two source-off finite paths increase bias-coil storage. Largest reported change +0.1450041204 J, with separate actuator-reaction work +4.883711147 J. No fine path passes the full physical acceptance aggregate. | Coil ODE, individual work integrals and exact increase inequality; physical implementation and local consistency remain open. |
| Same chapter, lines 383–405; OP-NUM-LR59-02 | Unresolved thermal endpoint, port quadrature, interval r_E and integrated DC-link checks. Source reports 690 thermal solver rows, 24 quadrature rows, 329 interval residual rows and 136 fine DC-link identity warnings; signs include both positive and negative. Complete combined-path gates and coil/transfer identities do not settle these. | Distinct local residuals, conditional combined balance and explicit unresolved thermal/DC-link/interval requirements. Their source convergence status is unchanged. |
| OP-NUM-LR59-01 | Unstable finite-prefix audit remains numerically limited; absolute and relative checks remain distinct. | Exact finite-prefix example and uncertainty conditions; the example does not certify those source computations. |
| OP-NUM-LR55-01/02 and OP-NUM-LR56-01 | Driven physical/surrogate work and stochastic operation quadrature retain unresolved source status. | Local signed work, endpoint and finite-window uncertainty questions. Zero-mean input is separated from mean power. |
| OP-NUM-LR56-02/03/04 | Source marks bounded operation endpoint and relaxation work/endpoint children resolved. | Keep their limited status in the inventory. Do not represent them as unresolved numerical failures, nor as closure of physical drift or operation-work questions. |
| volume_iv_evidence/04_FalsificationCampaign.md, sign-test proposal | Proposed inference that numerical error must be symmetric and that sign symmetry closes a population is unsupported. | Exact one-signed finite-sum error; calibrated null/dependence requirement; neither sign bias nor symmetry alone resolves a transfer. |

Linked supply equations were checked in physics_edge/run_step13_control_paths.py, especially the transducer state law, source/limiter accounts and nested store identities. The article corrects the dimensional shorthand of adding current and velocity by introducing explicit voltage conversion factors. The scalar thermal energy state is supplied with a stated temperature/entropy-flow interpretation, which remains a constitutive assumption.

## Preservation and finishing

The revision adds or strengthens the reviewed content; it retains the earlier coefficient arrays, collision elimination and exceptions, contact/joint constitutive laws, initial-data recurrences, RF limits, passive constructions, diode restart, histories, distributed models, absorber limits, graph distinctions and switching appendices. Existing references and figures are retained. Source numerical values are not substituted for exact derivations.

Build, PDF inspection and repository status are recorded in notes/verification.md after final checks. No permission or physical measurement is claimed. Nothing is staged or committed; both review files remain untracked.
