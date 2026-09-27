# Working coverage checklist

Revision audit: 2026-09-27, following REVIEW_5.md. Coefficient synthesis now organizes the article. The sixteen mandatory chapters, second-order foundation, shared power contract and additional higher-order coverage remain in scope; earlier corrections remain in force. notes/review-5-resolution.md records the moved destinations, added exact constructions and preservation audit. The current second-order source's added source-placement material is integrated below. The compound/reference source audit in notes/review-3-resolution.md remains applicable. Source paths are confined to working notes. Counts of checked spans are navigation metadata, not a proof of completeness.

Each section span includes its inline definitions, assumptions and limitations; subordinate table, figure and equation locations inherit that item's stated destination and disposition. “Retained” names an explicit construction; “consolidated” names a common treatment; “corrected” records a changed claim; “replaced” names the exact or conditional substitute for computational output. A broad section heading alone does not establish equivalence between different constructions. Numerical outputs/plots are replaced by exact derivations or conditional limitations, not promoted to exact or measured performance. Reproduction commands, software versions and artifact inventories are excluded under the symbolic-replacement instruction; their scientific issues remain covered.

## volume_i_q1/01_Ode2ndDeg.md

- [x] L1–16 1. Second-Order ODEs → sec:family; eq:template; eq:duality. All four state/effort maps, momentum/linkage, topology and damped analogy.
- [x] L17–25 Equations → Retained: eq:template and its four-system table give the four ODEs, state variables and effort–flow pairs.
- [x] L26–39 Template Table → sec:family; eq:template; eq:duality. All four state/effort maps, momentum/linkage, topology and damped analogy.
  - Tables at L30 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L40–69 Switching between Series/Parallel → Retained with physical qualification: eq:duality and eq:lattice-dual transport coefficients; the following topology/inerter paragraph limits the mechanical analogy.
  - Standalone displayed definitions/identities at L48, L53, L55, L59, L61 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L70–107 Template Properties → Consolidated: eq:template defines y, v, x and effort; eq:work separates component identities from boundary-port integrals and endpoint stores.
- [x] L108–119 Momentum → sec:family; eq:template; eq:duality. All four state/effort maps, momentum/linkage, topology and damped analogy.
  - Tables at L112 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L120–127 Interconnecting Series and Parallel ODEs → sec:family; eq:template; eq:duality. All four state/effort maps, momentum/linkage, topology and damped analogy.
- [x] L128–136 Mechanical and Electrical Equivalents → sec:family; eq:template; eq:duality. All four state/effort maps, momentum/linkage, topology and damped analogy.
- [x] L137–157 Sources and source-placement table → sec:source-placement states ideal force/voltage sources, finite battery limitations and the four distinct placements.
- [x] L158–170 Battery driving LRC/MCK → sec:source-placement gives both driven equations, reference scales, gravity in a fixed-reference parallel mechanical system and the conjugate loop-current/common-velocity source powers.
- [x] L171–195 Battery across CRL/KCM → common voltage/force constraints, total delivered current and source-terminal velocity, including constant-force spring/damper/momentum behavior; a source cannot be inserted into a right-hand side with the wrong dimensions.
- [x] L196–255 Gravity and the inductor-branch source → eq:source-placement derives the branch-source forcing operator and constant-source limit; relative mass/momentum, uniform-gravity null and independent common-motion account retained. The article also gives the exact variable-source derivative term.
- [x] L256–340 Work, endpoint offsets and source connection → eq:source-placement-work and surrounding signed source/heat integrals retain all four source ports, independent stores, offset capacitor voltage/spring force, compatible interval assumptions and switching transfers. Numerical residual reporting is replaced by exact identities and the separate uncertainty treatment in sec:limits.
- [x] L341–378 End-to-end analogy control → Replaced by exact eq:canonical-pair and eq:crossing-boundaries; the damped extension beside OP-LR50-01 gives normalized trajectory equality and eq:measurement-separation. Lossless singular-chart limitations remain in sec:family.

## volume_i_q1/02_Ode3rdDeg.md

- [x] L1–6 2. Third- and Higher-Order ODEs → sec:family; sec:array. Monomial derivation, full 77-cell array, basis convention, transformations, Pi groups, term size and signed tails.
- [x] L7–35 Unit Equivalence → Retained: the dimensional constraints immediately before eq:family derive both free exponent and monomial dimensions.
  - Tables at L28 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L11, L20, L24 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L36–68 A Simple Third-Order Choice → Retained: the three explicit cubic coefficients after eq:family; eq:mixture separates their unspecified weights.
  - Tables at L44 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L40, L61, L65 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L69–103 The nth-Order Pattern → Retained: eq:staircase gives even/odd formulas for every integer derivative index, including negative indices.
  - Tables at L92 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L79, L88 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L104–144 The `A_(r,k)` Model Class → Retained: eq:family and eq:mixture; integer, real and continuous exponent classes have distinct convergence assumptions.
  - Standalone displayed definitions/identities at L109, L113, L115, L117, L121, L138 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L145–168 The LRC Coefficient Matrix → Retained in full: eq:electrical-array, all 77 entries in Appendix sec:array.
  - Tables at L159 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L149, L153 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L169–222 A Conventional Staircase → Retained and qualified: the basis-dependence table after eq:staircase; eq:marginal corrects any stability inference.
  - Tables at L177, L188, L209 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L173 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L223–253 Lattice Recursions → Retained: eq:lattice, arbitrary integer shifts, and the outer-product rank-one paragraph.
  - Standalone displayed definitions/identities at L237, L241, L250 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L254–304 Duality on the Lattice → Retained: both normalizations in eq:lattice-dual; complete double transport and candidate-set closure qualification.
  - Standalone displayed definitions/identities at L260, L262, L264, L271, L281 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L305–335 Unit and Reference Transformations → Retained: unit-change formula and eq:reference; zero-reference boundaries require another chart.
  - Standalone displayed definitions/identities at L326 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L336–374 Buckingham-Pi Count for Existing Row Topologies → Retained: the Independent dimensionless coordinates table and eq:collision-normalized reconstruction; topology-specific group counts also follow eq:descriptor.
  - Tables at L343, L363 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L375–405 Reproducing the Definition Checks → sec:family; sec:array. Monomial derivation, full 77-cell array, basis convention, transformations, Pi groups, term size and signed tails.
- [x] L406–421 Contribution of A_(r,k) to an ODE → Retained: the modal contribution S rho^(-r)(tau s)^k y after eq:reference.
  - Standalone displayed definitions/identities at L410, L414, L418 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L422–446 Relative Size of a Term → Retained: eq:conditioning distinguishes coefficient cancellation, evaluated-term cancellation and pole conditioning.
  - Standalone displayed definitions/identities at L426, L430 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L447–483 Signed Row Tails → Retained: absolute convergence and ordering conditions in Transformations, support and convergence.
  - Standalone displayed definitions/identities at L451, L462, L476, L478 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L484–502 Positive equal-weight special case → Retained: exact upper/lower geometric sums and bilateral divergence for every positive rho.
  - Standalone displayed definitions/identities at L490, L494 → the same mapped treatment; substantive structure retained, numerical outputs replaced.

## volume_i_q1/03_ImpactWrenchModels.md

- [x] L1–6 3. Impact-Wrench Collision Models and Higher-Order ODEs → sec:collision; eq:collision-state; eq:cubic-contact. Rigid, linear, nonlinear and eliminated-state descriptions; contact/joint separation, limitations and motor flight.
- [x] L7–19 Scope: One Collision → sec:collision; eq:collision-state; eq:cubic-contact. Rigid, linear, nonlinear and eliminated-state descriptions; contact/joint separation, limitations and motor flight.
  - Standalone displayed definitions/identities at L18 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L20–47 Collision Variables → sec:collision; eq:collision-state; eq:cubic-contact. Rigid, linear, nonlinear and eliminated-state descriptions; contact/joint separation, limitations and motor flight.
  - Standalone displayed definitions/identities at L37 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L48–51 Common Collision Models → sec:collision; eq:collision-state; eq:cubic-contact. Rigid, linear, nonlinear and eliminated-state descriptions; contact/joint separation, limitations and motor flight.
- [x] L52–59 Instantaneous Rigid Impact → Retained: eq:rigid-map, impulse-work regularization, free-pair and oblique-contact qualifications.
  - Standalone displayed definitions/identities at L56 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L60–67 Linear Spring-Damper Contact → Retained: eq:collision-state gives the two-body linear contact and joint laws.
  - Standalone displayed definitions/identities at L64 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L68–73 Nonlinear Contact → Retained: eq:cubic-contact, tangent stiffness, Hertzian active-domain and release qualifications.
- [x] L74–84 Tightened-Joint Boundary → Retained: joint torque in eq:collision-state; added support inertia and rational impedance discussed after eq:hidden-example.
- [x] L85–120 Rotational Ode3rdDeg Coefficients → Corrected missing coverage: eq:constitutive-family and the explicit six-coefficient contact sequence retain separate unresolved contact/joint reference triples and the no-double-counting restriction.
  - Tables at L110 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L95, L101 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L121–144 Proposed Hammer-Anvil Contact Series → Corrected missing coverage: eq:constitutive-candidates explicitly gives the gated higher-derivative contact law; eq:constitutive-rational supplies unreduced initialized state elimination, Taylor-domain and finite-residual qualifications.
  - Standalone displayed definitions/identities at L125, L129, L133, L139 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L145–160 Tightened-Joint Boundary Series → Corrected missing coverage: the separately parameterized joint law in eq:constitutive-candidates and eq:constitutive-rational; its reference triple is independent of the contact triple.
  - Standalone displayed definitions/identities at L149, L157 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L161–202 Power During the Collision → Retained: eq:collision-ports and eq:collision-work give each physical power; final constitutive paragraphs distinguish formal instantaneous shares from physical ports.
  - Standalone displayed definitions/identities at L165, L169, L173, L177, L181, L185, L189, L193, L197 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L203–222 Which Collision Corrections Can Be Replaced? → Consolidated: the competing-description table and final constitutive paragraph list pulse shape, phase, restitution, release, backlash, geometry, preload and nonlinear limits separately.
  - Tables at L205 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L219 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L223–243 Collision-Only Model Comparison → Replaced by conditional comparison: Competing contact descriptions and OP-LR08-01 retain motion/torque/power observables and independent contact/support changes.
- [x] L244–258 Selecting the Terms → Consolidated: Selection, metrics and derivative measurements excludes work/energy from model selection; eq:measurement-separation adds uncertainty-aware rejection.
- [x] L259–270 Working Conclusion → sec:collision; sec:work; sec:identification. Physical powers, comparison observables, selection and repeated engagement.
  - Standalone displayed definitions/identities at L263 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L271–306 Boundary Series and Repeated Engagement → Retained: free-flight/re-engagement paragraph before OP-LR08-01 and boundary-mode paragraph after eq:hidden-example preserve motor drive and added joint states.

## volume_i_q1/04_ImpactCollisionNumerical.md

- [x] L1–13 4. Numerical Search for an Impact ODE → sec:collision; eq:collision-poly; eq:collision-values. Exact determinant and rational reference values replace numerical output; order claims corrected.
- [x] L14–51 Reference Collision → Retained: eq:collision-values, its monic polynomial and initial store 144/5 J; alternative joint stiffnesses require recomputed coefficients.
  - Tables at L31 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L48 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L52–82 ODEs Being Compared → Replaced: eq:collision-poly and eq:collision-hidden give generic minimality and exceptional order reduction; fit rankings are conditional rather than asserted numerical performance.
  - Tables at L67 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L74 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L56 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L83–102 The Fourth-Order Collision ODE → Retained: eq:collision-poly includes the forcing numerator and active-contact interval.
  - Standalone displayed definitions/identities at L95, L99 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L103–138 Connection to the Ode3rdDeg Coefficients → Corrected missing exact table replacement: eq:collision-weights supplies all five rational weights and states why w4=1 is normalization.
  - Tables at L129 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L121, L125 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L139–171 Instantaneous Power of the ODE Terms → Replaced: eq:formal-work and eq:conditioning retain signed term contributions and their scale dependence without component-store attribution.
  - Tables at L153 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L161 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L143, L147, L151 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L172–185 What We Can Conclude → sec:identification; sec:work; sec:collision. Exact support, term power, conditional validation, cancellation/massless boundaries and cubic law.
- [x] L186–223 Order Map and Declared Domain → Corrected: eq:collision-hidden and the massless-hammer paragraph replace universal fourth order and universal mass-zero second order with observability/preparation conditions.
- [x] L224–236 Next Test with a Real Impact → Retained and strengthened: OP-LR08-01 gives synchronized observables and an exact hidden-mode sensor separation bound.
- [x] L237–261 Reproducing the Calculation → sec:identification; sec:work; sec:collision. Exact support, term power, conditional validation, cancellation/massless boundaries and cubic law.
- [x] L262–282 Step 9 Cubic Collision Refinement → Replaced: eq:cubic-contact, eq:release and the release-ledger discussion preserve nonlinear store, finite relaxation and unidentified release destination; numerical residual claims are not imported.

## volume_i_q1/05_ImpactCollisionValidation.md

- [x] L1–20 5. Multi-Impact Validation of the Collision ODE → sec:collision; sec:identification. Linear scaling, nonlinear tangent stiffness, independent boundary changes and disjoint condition sets.
- [x] L21–30 Why the Included Run Is Still Synthetic → Consolidated: OP-LR08-01 explicitly leaves synchronized industrial impact measurement unfulfilled; no missing torque/rate channel is inferred.
  - Standalone displayed definitions/identities at L25 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L31–34 The Validation Design → sec:collision; sec:identification. Linear scaling, nonlinear tangent stiffness, independent boundary changes and disjoint condition sets.
- [x] L35–42 Linear Sanity Check → Retained: speed independence of the linear operator after eq:collision-values; linear amplitude scaling in sec:limits.
- [x] L43–67 Nonlinear Stress Test → Retained: eq:cubic-contact and its tangent stiffness; nonlinear scalar elimination need not retain a constant-coefficient fourth-order law.
  - Tables at L58 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L47 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L68–82 What Is Fitted → Retained: eq:collision-weights explains fixed leading weight; eq:collision-jet distinguishes physical initial derivatives from fitted convenience jets.
  - Standalone displayed definitions/identities at L72 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L83–103 Shared-Coefficient Results → sec:collision; sec:identification. Linear scaling, nonlinear tangent stiffness, independent boundary changes and disjoint condition sets.
  - Tables at L87 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L96, L102 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L104–130 Do the Weights Remain Constant? → Replaced: eq:collision-groups, eq:seven-weights and the nine-weight table show exactly which parameters change each weight.
  - Tables at L114 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L125 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L131–153 Working ODE Proposal → Retained: variable B_k(delta,p) and explicit nonlinear remainder g are now stated after eq:cubic-contact, including elimination regularity and local inversion limits.
  - Standalone displayed definitions/identities at L135, L139 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L154–185 Sampling and Initial-Jerk Qualification → Retained: eq:collision-jet and eq:derivative-symbols distinguish hidden-state reconstruction, derivative filters and observation-operator bias.
- [x] L186–212 Measurement CSV Contract → Consolidated: OP-LR08-01 specifies synchronized angle/rate/torque and event times; sec:limits retains units, covariance, calibration and event-side metadata.
  - Tables at L190, L200 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L213–242 Running the Bundle → eq:derivative-symbols; eq:collision-jet; eq:information; sec:limits. Derivative estimation, hidden initialization, uncertainty and synchronized observables.
- [x] L243–253 Order-Map Qualification → eq:derivative-symbols; eq:collision-jet; eq:information; sec:limits. Derivative estimation, hidden initialization, uncertainty and synchronized observables.
- [x] L254–307 Boundary Identification and Re-engagement Validation → Retained: independent support/contact changes, added boundary states and motor-driven re-engagement around OP-LR08-01; eq:release preserves gate alternatives.
- [x] L308–330 Scoped robustness propagation → sec:collision; sec:work; sec:limits. Boundary states, re-engagement, release, robustness and missing hardware.
- [x] L331–375 Step 12 Collision Release and Repeated Impact → Replaced: sec:release-open, eq:release-residual, eq:release-sequence and eq:release-measurement give the signed event deficit, repeated-gate sum, exclusive whole-store destination hypotheses, retained-store alternative and unresolved constitutive criterion. The counterfactual paragraph now actually exists.
- [x] L376–387 Roadmap 2 Step 15 Contact/Boundary Identifiability → Retained: eq:collision-hidden, eq:information and the hidden anvil-encoder prediction distinguish exact and practical unobservability.
- [x] L388–394 Roadmap 2 Step 17 Hardware Contracts → sec:collision; sec:work; sec:limits. Boundary states, re-engagement, release, robustness and missing hardware.

## volume_i_q1/06_OdeRowMixture.md

- [x] L1–27 6. Searching Sums of A_(r,k) → sec:collision-support; sec:identification; eq:collision-groups. Seven-atom restricted support and nine-atom two-coordinate support replace performance tables.
  - Standalone displayed definitions/identities at L5 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L28–58 Mechanical Row Family → Retained: eq:family specialized to rotational references; eq:collision-groups names the joint chart.
  - Standalone displayed definitions/identities at L38, L40, L42, L47, L51, L55 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L59–85 Numerical Target → Retained: exact polynomial eq:collision-poly with contact normalization gamma stated at eq:collision-weights; no source-specific normalization is silently equated to another.
- [x] L86–87 Two Tests → sec:collision-support; sec:identification; eq:collision-groups. Seven-atom restricted support and nine-atom two-coordinate support replace performance tables.
- [x] L88–99 Stiffness-Only Transfer → Retained: eq:seven-weights gives each constant on the fixed-damping, varying-stiffness path.
  - Standalone displayed definitions/identities at L94, L98 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L100–106 Independent Stiffness and Damping → Retained: the nine-weight table after eq:collision-groups, with independent damping and stiffness.
- [x] L107–131 Models Compared → Replaced: paragraph following eq:seven-weights compares the single-coefficient, low-only extension, high-order shift, adjacent-pair, three-atom and wider-window candidate classes algebraically.
  - Tables at L115 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L111 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L132–150 Held-Out Power Results → sec:collision-support; sec:identification; eq:collision-groups. Seven-atom restricted support and nine-atom two-coordinate support replace performance tables.
  - Tables at L134 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L143, L149 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L151–206 What the Search Found at Each k → Retained explicitly: both the nine-weight table and eq:seven-weights, with independent powers proving the required supports.
  - Tables at L181 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L203 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L169, L171, L173, L175, L177, L196 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L207–236 Why Independent Damping Breaks the Simple Sum → Retained: eta=d_j/d_c and the nine-weight table; one-coordinate weights cannot remain constant under independent damping.
  - Standalone displayed definitions/identities at L211, L215 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L237–253 Selection Rule Going Forward → sec:collision-support; sec:identification; eq:collision-groups. Seven-atom restricted support and nine-atom two-coordinate support replace performance tables.
  - Standalone displayed definitions/identities at L241 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L254–269 Running the Bundle → sec:collision-support; sec:identification; eq:collision-groups. Seven-atom restricted support and nine-atom two-coordinate support replace performance tables.
- [x] L270–371 Exact collision states and initial jets → Retained: eq:collision-normalized reconstructs the four-group state matrix and dimensional scale freedoms; eq:state-image and eq:collision-jet retain complete initial maps.
- [x] L372–381 Independent Inertia and Contact Controls → Retained: inverse dimensional reconstruction and reference-versus-physical stiffness interchange immediately after eq:collision-normalized.

## volume_i_q1/07_OdeRowSelection.md

- [x] L1–21 7. Applying the Row-Mixture Selection Rule → sec:identification. Candidate windows and thresholds, disjoint sets, complete-operator stability, physical instantaneous-power objective and dual transport.
- [x] L22–34 Strict Data Separation → Retained: first paragraph of Selection, metrics and derivative measurements freezes disjoint estimation, selection and prediction conditions.
- [x] L35–60 Stage 1: Search Ordinary Rows → Retained: finite exponent/support windows and illustrative condition, contribution and finalist thresholds in that same paragraph.
  - Standalone displayed definitions/identities at L39, L43, L51 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L61–111 Stage 2: Add One Independent Coordinate → Retained: nine-weight table introduces the independent eta coordinate with an exact algebraic target.
  - Standalone displayed definitions/identities at L67, L71, L92 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L112–137 Selection Procedure → Replaced: bounded selection definitions followed by explicit lack of global minimality or physical threshold status.
- [x] L138–175 Results → sec:identification. Candidate windows and thresholds, disjoint sets, complete-operator stability, physical instantaneous-power objective and dual transport.
  - Tables at L140 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L146, L174 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L151, L153, L155, L157, L159, L164, L166, L168, L170, L172 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L176–196 What the Eighth Term Means → Retained: paragraph following eq:collision-normalized explicitly identifies (k,r,s)=(2,0,1) as the omitted d_c d_j term; small response error does not certify coefficient recovery.
  - Standalone displayed definitions/identities at L181, L187 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L197–249 Robustness Qualification of the Eighth-Term Decision → Retained as limitations: fixed-support versus selected-support uncertainty, threshold dependence, learning curves and correlated noise after eq:information.
- [x] L250–270 Running the Bundle → sec:identification; sec:limits. Omitted damping product and objective/noise/partition/threshold sensitivity remain qualified.
- [x] L271–280 Collision-Order Objective Audit → sec:identification; sec:limits. Omitted damping product and objective/noise/partition/threshold sensitivity remain qualified.

## volume_i_q1/08_RowStructure.md

- [x] L1–16 8. Structure and Identification of `A_(r,k)` Rows → sec:collision-support; sec:identification; eq:collision-groups. Normalized paths and current/charge index shift.
- [x] L17–38 Normalized Exact Paths → sec:collision-support; sec:identification; eq:collision-groups. Normalized paths and current/charge index shift.
- [x] L39–91 Effective order and initial-data closure → Retained and corrected: eq:jet-recurrence and its four-case closure table distinguish monomial units, exact divisibility, rational drift and leading-zero surfaces.
  - Tables at L60 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L92–156 Mirror-lattice equivariance and initial support → Retained: eq:jet-family, dual q transport, exact Minkowski cancellation example and convergent anchor-shift formula.
  - Standalone displayed definitions/identities at L96 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L157–185 Hankel Rank and Exponent Recovery → Retained: eq:hankel, distinct-node/nonzero-weight hypotheses and noninteger exponent qualifications.
- [x] L186–195 Exact Collision Support → Retained: exact nine-weight and seven-weight constructions in sec:collision-support.
- [x] L196–211 Constant-`rho` Nulls → Retained: constant-rho rank-one null immediately before eq:information.
- [x] L212–229 Selector, Basis and Relabelling Controls → Retained: eq:reference and eq:derivative-symbols distinguish relabelling, basis transport and changed observation operators.
- [x] L230–240 Exact Signs and Reference Singularities → Retained: signed cancellation and reference-singularity paragraphs after eq:reference.
- [x] L241–278 Equation-Term Conditioning → Retained: eq:conditioning and the normalized equation-residual denominator; separate from physical work.
  - Standalone displayed definitions/identities at L245, L247 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L279–296 Robustness of the Row Selector → sec:identification; sec:limits. Strict partitions, learning, continuous/discrete observation, jerk and metric dependence.
- [x] L297–337 Strict partitions and learning curves → sec:identification; sec:limits. Strict partitions, learning, continuous/discrete observation, jerk and metric dependence.
  - Figures at L321 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L338–374 Continuous and sampled row designs → Retained: eq:derivative-symbols gives continuous, forward-difference and bilinear symbols and the Nyquist singularity.
  - Standalone displayed definitions/identities at L346 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L375–399 Jerk estimators and hidden initial state → Retained: eq:collision-jet plus derivative-filter and bandwidth discussion.
- [x] L400–419 Objectives, metrics, windows and thresholds → sec:identification; sec:limits. Strict partitions, learning, continuous/discrete observation, jerk and metric dependence.
- [x] L420–441 Continuation before support classification → Retained: contribution-threshold and fixed-versus-selected-support paragraphs; a omitted atom is not a physical zero.
  - Figures at L429 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L442–471 Generic Phasor Certification Atlas → Replaced: eq:rf-atoms and eq:onset are exact over their declared domain; no finite atlas is called a global certificate.
- [x] L472–494 Negative orders, preparation and DC → Retained: eq:history-chain, base-time dependence and the no-finite-DC-phasor constant-input example.
- [x] L495–542 Roadmap 3 Step 9 initialized histories → Retained: eq:lost-constraints and both explicit finite-history counterexamples.
  - Standalone displayed definitions/identities at L500 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L543–601 Supplied passive reference and bounded algorithms → Retained: eq:passive-reference, its physical resonator construction and the eight finite-method distinctions immediately following it.
  - Tables at L563 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L600 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L602–651 Pole, positive-real and Foster tests → Retained and strengthened: cubic Routh boundary, eq:pr-polynomial, thm:polynomial-passivity and the lossless-only Foster qualification.
  - Standalone displayed definitions/identities at L633 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L652–676 Convergence radius and optimal truncation → Replaced: nearest-pole Taylor disk and exact eq:rational-remainder; finite-band method comparisons retain nonmonotonicity and no unrestricted convergence claim.
- [x] L677–716 Scope and Reproduction → sec:rf; eq:passive-reference; sec:passive. Passive reference, representation methods, poles/PR/Foster, convergence radius and finite limits.

## volume_i_q1/09_SteadyStateRF.md

- [x] L1–28 9. Steady-State RF Limits of Second-Order Models → sec:rf; eq:rf-atoms; eq:onset. Phasor factors, exact onset and fixed-device rank.
- [x] L29–80 From `A_(r,k)` to an RF Port → Retained and strengthened: eq:rf-atoms, phasor directions and thm:polynomial-passivity for genuine polynomial degree at least three.
  - Tables at L66 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L33, L37, L41, L45, L47, L49, L53, L57 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L81–123 At What Frequency Does an Added Term Matter? → Replaced: eq:onset is an exact crossing criterion and the illustrative one-percent value at x=1 is exact.
  - Figures at L100 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L113 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L124–141 Why One Device Cannot Identify Several Rows → Consolidated: constant-rho rank-one argument before eq:information, with independent-coordinate measurement in OP-LR31-01.
  - Standalone displayed definitions/identities at L128 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L142–202 RF Case 1: Inductor Approaching Self Resonance → Retained: eq:parasitic-inductor, eq:inductor-coefficients and eq:rational-remainder; fixture and causal-loss restrictions remain.
  - Tables at L186 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L184 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L152, L166, L170, L172, L174, L176 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L203–265 RF Case 2: An 8 MHz Quartz Resonator → Retained: eq:quartz and eq:quartz-frequencies; lossless references are distinguished from lossy peaks.
  - Tables at L237 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L235 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L218, L251, L255 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L266–321 RF Case 3: A Shorted Transmission Line → Retained: eq:short-line, exact Taylor domain and finite-field audit after eq:line-power; no finite polynomial reproduces all poles.
  - Tables at L299 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L297 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L273, L277, L279, L281, L286 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L322–379 Physical Branch Geometry Across Topology → Retained: eq:phasor-polygon, exact instantaneous maximum and added pairwise-phase/ordered-polygon-area definitions.
  - Tables at L356 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L378 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L329, L331, L333, L338 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L380–409 Quartz `η` and Motional-`Q` Transfer Surface → Replaced: eq:quartz-frequencies and independent eta/damping variation; finite-band accuracy is conditional on the resonance location.
- [x] L410–442 RF Parasitic Topology and Frequency-Dependent Loss → Retained: causal-loss qualification after eq:rational-remainder and explicit RLC, pi-section and two-section matrix products after eq:transfers.
  - Standalone displayed definitions/identities at L417 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L443–475 `S_21`, Voltage Transfer, Transimpedance and Reciprocity → Retained: eq:abcd and all three distinct transfers in eq:transfers; separate matrix fitting does not preserve reciprocity.
  - Standalone displayed definitions/identities at L447, L451, L453, L455 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L476–508 Independently Controlled Cancellation and a Hidden Mode → Corrected: eq:hidden-rc-state uses secondary-to-primary nu, eq:hidden-rc follows from it, and eq:hidden-discharge audits the closed internal loop at the decoupled endpoint.
  - Standalone displayed definitions/identities at L481, L485 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L509–558 Steady-Phasor Fits Released as Physical Transients → Retained: three initial maps and exact eq:error-partition; unstable continuation is confined to finite intervals.
  - Figures at L548 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L559–646 Operator-compatible initial data and the three historical maps → Retained: eq:jet-recurrence, eq:state-image and manufactured simple/repeated/unstable roots, explicit forcing and root exchange.
  - Standalone displayed definitions/identities at L575 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L647–697 Finite RF Initial-State Preparation → Replaced: eq:preparation and eq:rl-preparation give finite-source construction conditions; ideal clamp work remains unspecified.
- [x] L698–756 Independent One-Period Power Audit → Retained: eq:period-work integrates peak-phasor powers and evaluates endpoint stores; factor one-half is used consistently.
  - Standalone displayed definitions/identities at L709, L713, L718, L720, L722, L726, L730 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L757–780 Measurement Roadmap → Retained and strengthened: OP-LR12-01 and eq:rf-separation give an exact capacitance-change prediction plus uncertainty-set separation.
- [x] L781–803 General Row-Atlas Follow-up → sec:rf; sec:limits. Measurement, general atlas, robustness, observability and hardware limitations.
- [x] L804–835 Conclusions → sec:rf; sec:limits. Measurement, general atlas, robustness, observability and hardware limitations.
- [x] L836–876 Running the Bundle → sec:rf; sec:limits. Measurement, general atlas, robustness, observability and hardware limitations.
- [x] L877–896 Scoped robustness propagation → sec:rf; sec:limits. Measurement, general atlas, robustness, observability and hardware limitations.
- [x] L897–908 Roadmap 2 Step 15 Hidden-Mode Observability → sec:rf; sec:limits. Measurement, general atlas, robustness, observability and hardware limitations.
- [x] L909–915 Roadmap 2 Step 17 Hardware Contract → sec:rf; sec:limits. Measurement, general atlas, robustness, observability and hardware limitations.

## volume_i_q1/10_CoilBatteryTransfer.md

- [x] L1–18 10. Switched Coil-to-Battery Work Audit → sec:construction; sec:battery; eq:battery-state; eq:battery-ledger. Boundary, sign, ideal/resistive/polarization models and physical powers.
  - Standalone displayed definitions/identities at L9 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L19–42 Boundary and Sign Convention → Corrected: diode orientation at eq:battery-state; eq:battery-off and eq:battery-restart distinguish an opened switch from conditional diode blocking.
- [x] L43–61 Battery Models → Retained in sec:construction: eq:battery-state and eq:battery-poly give N-branch elimination with initialization restrictions; eq:branch-synthesis through eq:branch-support add exact arbitrary-order coefficient construction. The physical application and events remain in sec:battery.
  - Standalone displayed definitions/identities at L47, L51, L55 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L62–96 Signed Powers → Retained: eq:battery-ledger names each source and loss port; the coil-only and combined boundaries are separate.
  - Figures at L95 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L66, L68, L70, L72, L74, L76, L78, L86 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L97–125 Transfer Results → Replaced: eq:battery-simple and eq:battery-work give exact ideal/resistive cutoff; matrix exponential gives the multi-branch implicit event.
  - Tables at L101, L110 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L126–154 Strategy Without Energy → Retained and qualified: the duration inversion after eq:battery-off requires positive OCV; zero OCV and zero resistance have separate solutions.
  - Tables at L136 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L149 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L155–173 Effective Fourth-Order Terms → Consolidated: eq:formal-work and sec:parts retain formal term-work identity without assigning new battery stores.
  - Figures at L172 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L160 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L174–185 Hidden Initial States → Retained: initial branch voltages and eq:state-image; preparation work needs a source path.
- [x] L186–232 Zero-to-Twelve-Branch Polarization Map → Retained: arbitrary finite N, distinct and coalesced times, vanishing resistance at fixed versus relaxed voltage around eq:battery-poly.
  - Standalone displayed definitions/identities at L192, L196 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L233–269 Extended signed-power boundary → Corrected: eq:battery-ledger and eq:battery-off cover signed preparations, scheduled cutoff, zero OCV and conditional relaxation.
- [x] L270–316 Relaxed state-to-jet mirror campaign → Retained: eq:state-image includes affine baseline; equal-time hidden difference and zero-amplitude qualifications follow eq:battery-poly.
- [x] L317–333 Complete-Cycle Regenerative Reset Cross-Reference → Consolidated: scheduled interruption and finite recovery paragraph in sec:battery; complete reset requires its own converter/source law.
- [x] L334–344 What This Establishes → sec:battery; sec:initial; sec:limits. Finite preparation/cutoff/recovery/reset, endpoint stores, spectra, aging, reverse recovery and hardware.
- [x] L345–376 Running the Bundle → sec:battery; sec:initial; sec:limits. Finite preparation/cutoff/recovery/reset, endpoint stores, spectra, aging, reverse recovery and hardware.
- [x] L377–396 Scoped robustness propagation → sec:battery; sec:initial; sec:limits. Finite preparation/cutoff/recovery/reset, endpoint stores, spectra, aging, reverse recovery and hardware.
- [x] L397–419 Step 9 Relaxation Refinement → Replaced: exact exponential resistor integral and independently evaluated store after eq:battery-restart, valid only on an open or guarded interval.
- [x] L420–484 Step 11 Finite Preparation, Cutoff, Recovery, and Reset → Consolidated: eq:preparation, eq:rl-preparation and finite clamp/recovery/branch-reset paragraphs in sec:battery; no ideal omitted destination is inferred.
- [x] L485–497 Roadmap 2 Step 15 Identifiability Bound → Retained and strengthened: OP-LR01-04, eq:battery-separation and eq:information distinguish exact hidden freedom from uncertainty-limited recovery.
- [x] L498–505 Roadmap 2 Step 17 Hardware Contract → sec:battery; sec:initial; sec:limits. Finite preparation/cutoff/recovery/reset, endpoint stores, spectra, aging, reverse recovery and hardware.
- [x] L506–514 Roadmap 4 Step 10 Result Index → sec:battery; sec:initial; sec:limits. Finite preparation/cutoff/recovery/reset, endpoint stores, spectra, aging, reverse recovery and hardware.

## volume_i_q1/11_PassiveRealizations.md

- [x] L1–12 11. Passive Realizations and Network Census → sec:passive; eq:pr-polynomial; eq:signed-ray. Exact PR region and implicit signed boundaries replace decimal extrema.
- [x] L13–64 Rational family and positive-real region → Retained: eq:rc-family, eq:pr-polynomial, eq:rc-parameters and eq:signed-ray; signed-residue PR is separate from supplied synthesis.
  - Tables at L49 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L65–66 Three passive realization classes → eq:foster-state; eq:cauer; eq:transformer-family. Three passive classes, exact Cauer identity and minimal state count.
- [x] L67–85 Foster RC → Retained: eq:foster-state gives physical capacitor states, terminal voltage and positive store.
- [x] L86–102 Cauer-I RC → Retained: exact eq:cauer and positivity qualification for Euclidean extraction.
- [x] L103–127 Ideal-transformer-coupled RC → Retained: eq:transformer-family gives voltage/current, resistance/capacitance scaling and unchanged reflected store.
- [x] L128–141 Minimal store count → Retained with initialization qualification: minimal zero-state degree equals N for distinct active poles; independently prepared hidden states remain separate.
- [x] L142–178 Identical-drive comparison → Replaced: transformer scaling gives exact internal nonuniqueness; the compact sine-squared input and event continuity paragraph declares a common drive.
  - Tables at L163 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L177 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L179–208 Signed-power ledger → Retained: boundary paragraph before eq:storage-inequality integrates source and each resistor separately.
- [x] L209–233 What the rational port fixes → Retained: paragraph beginning The terminal rational function and eq:storage-inequality distinguish port invariants from all-realization bounds.
- [x] L234–272 Reverse census of small networks → Retained: eq:grammar and exact network counts; excluded bridges/couplings and mechanical analogy are explicit.
  - Tables at L253 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L273–331 Exact relations, dimensions and groups → Corrected: eq:cancellation-initialized separates six stores, degree-zero transfer and one observable free decay; eq:descriptor and component group counts remain.
  - Figures at L330 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L332–357 Port placement and topology holdout → Retained: joint drive/load/readout/polarity automorphism and topology-holdout paragraph after eq:descriptor.
- [x] L358–373 Singular component boundaries → Retained: exact direct and coscaled C,L,R limits in the final sec:passive paragraph; incompatible initial states need an event path.
  - Standalone displayed definitions/identities at L364 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L374–406 Standard transient and signed-power ledger → Replaced: common compact input, continuous event states and separately integrated physical ports before eq:storage-inequality.
  - Standalone displayed definitions/identities at L394 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L407–424 Coverage and reproduction → sec:passive; sec:limits. Exact singular paths, standard smooth-input audit and retained larger-topology/physical limits.
- [x] L425–444 Scoped robustness propagation → sec:passive; sec:limits. Exact singular paths, standard smooth-input audit and retained larger-topology/physical limits.
- [x] L445–456 Roadmap 2 Step 16 singular-component continuation → sec:passive; sec:limits. Exact singular paths, standard smooth-input audit and retained larger-topology/physical limits.

## volume_i_q1/12_InitialDataPreparation.md

- [x] L1–28 12. Initial Data and Physical Preparation → sec:initial; sec:histories; sec:work. Independent counts, four admissibility levels, anchors/events and conditional physical audit.
- [x] L29–67 Normalized jet and independent counts → Retained: eq:jet-family and separate order/state/history/atom counts in Four levels of admissibility.
  - Tables at L50 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L68–90 Four construction labels → Retained: the four admissibility levels before eq:jet-family and eq:state-image; no jet is a constitutive store.
  - Tables at L73 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L91–104 Anchors, event sides and partitions → Retained: event transport after eq:rl-preparation; disjoint preparation/selection conditions in sec:identification.
- [x] L105–129 Conditional signed energy ledger → Retained: eq:work and finite-path eq:rl-preparation, including independent endpoints.
  - Standalone displayed definitions/identities at L121 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L130–145 Scope of this checkpoint → sec:initial; sec:histories; sec:work. Independent counts, four admissibility levels, anchors/events and conditional physical audit.
- [x] L146–183 Exact algebra result index → eq:jet-recurrence; eq:jet-family; eq:state-image. Exact algebra, affine baseline, realization images and practical versus exact rank.
- [x] L184–276 Cross-domain realization images and hidden states → Retained: eq:state-image, affine baseline, full nullspace and exact versus practical rank discussion.
  - Tables at L204 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L277–379 Controlled lifts across an effective-order increase → Retained: eq:lift and eq:lift-amplitude, four lift families and confluent-root qualification.
  - Standalone displayed definitions/identities at L282 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L380–401 Event-Side Transport Result Index → Retained: eq:reset-state, eq:reset-map and eq:reset-partitions; final-state commutation does not fix channel works.
- [x] L402–428 Finite RF Preparation Result Index → Replaced: eq:preparation and finite prescribed preparation paths; no ideal zero-time clamp work is inferred.
- [x] L429–475 Cross-Domain Robustness and Numerical Refinement → Retained as unresolved limits: sec:limits paragraph beginning Preparation and history names short preparation, coincident events and long-base compatibility separately.
- [x] L476–508 Roadmap 3 Closeout → sec:reset; sec:initial; sec:limits. Event-side transport, finite preparation, history and all robustness questions.

## volume_i_q1/13_DistributedLineScattering.md

- [x] L1–27 13. Distributed, Dispersive and Delayed Systems → sec:distributed; eq:telegrapher; eq:line-finite; eq:line-stores. Weighted finite line, rational/continuum transfer, scattering and material-profile qualification.
- [x] L28–59 Fixed boundary, mesh and observables → Retained: eq:line-finite and eq:line-stores, fixed-length endpoint weights and weighted spatial diagnostics.
- [x] L60–97 Finite rational, line and scattering comparisons → Retained: eq:telegrapher, finite state resolvent, reflection/group-delay definitions and nonuniform mesh qualification.
- [x] L98–145 Pulse boundary and signed work → Retained: eq:line-power, separate finite interval and ideal reset boundary, endpoint stores and relative-near-zero caveat.
- [x] L146–165 Integer-period control and remaining boundaries → Consolidated: eq:period-work applied to eq:line-power; open/short, radiation and exterior-field limits remain explicit.
- [x] L166–174 Roadmap 4 Step 9 Result Index → eq:line-power; eq:period-work; sec:distributed. Pulse/periodic ports, independent endpoints, reflection tails and reset destination.
- [x] L175–184 Roadmap 4 Step 10 Result Index → eq:line-power; eq:period-work; sec:distributed. Pulse/periodic ports, independent endpoints, reflection tails and reset destination.
- [x] L185–241 Fractional and dispersive transfer references → Retained: eq:fractional, Stieltjes measure, branch jump and finite positive-residue approximation limits.
- [x] L242–271 Open delay, feedback and exact histories → Retained: eq:delay-roots and eq:pade-delay, method of steps and feedback-history distinction.
- [x] L272–306 Roadmap 3 Step 9 finite-history compression control → Retained: exact five-bin and outside-window witnesses following eq:lost-constraints; same present jet is insufficient.
- [x] L307–346 Finite-realization signed-power audit → Retained: physical Foster branch store after eq:fractional and line stores/powers; bare fractional/delay transfers receive no store.
- [x] L347–357 Remaining limits → sec:distributed; sec:limits. Finite-realization-only stores and retained continuation, exterior-field and hardware limits.
- [x] L358–378 Roadmap 2 Step 16 limiting continuations → Replaced: independent ideal boundary derivation and domain-specific mesh/history limits in sec:distributed; finite continuation is not a uniform certificate.

## volume_i_q1/14_DrivenDifferentialCRL.md

- [x] L1–17 14. Driven and Controlled Differential CRL Systems → sec:driven; eq:driven-coils; eq:driven-modes. Physical reference, realized controls, observables and separate powers.
- [x] L18–71 Reciprocal physical reference → Retained: eq:driven-coils and eq:driven-modes, positive matrices, singular coupling and separate source/copper/load ports.
- [x] L72–109 Finite realized `A` controls → Retained: positive RL admittance and explicit sign-reversed controller power in Common and differential electrical modes.
- [x] L110–140 Measures and acceptance rules → Retained: eq:counterflow-duty and separate peak/RMS/waveform/phasor definitions; reactive power uses peak-phasor factor one-half.
  - Standalone displayed definitions/identities at L136 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L141–199 Physical sweep results → Replaced: exact modal transfer and transient decomposition after eq:driven-modes; finite settling is not exact steady state.
- [x] L200–251 Frozen-surrogate results → Replaced: explicit passive versus active branch realizations and independent useful-band/error requirements; no numerical winner is asserted.
- [x] L252–264 Scope retained → eq:counterflow-duty; sec:driven; sec:limits. Exact counterflow and conditional fit/settling conclusions replace result tables.
- [x] L265–316 Non-normal, multi-tone, packet and stochastic extension → Retained: eq:nonnormal with transported physical metric and active terminal controller.
- [x] L317–353 Forced/free and finite-window reconstruction controls → Retained: eq:preparation Duhamel response; four waveform classes and finite-window homogeneous correction.
- [x] L354–376 Random-path nulls, excursions and uncertainty → Retained: eq:rice with stationarity/differentiability conditions; correlated finite-path statistics are not independent-sample significance.
- [x] L377–404 Numerical audit and retained boundaries → Replaced: sec:stochastic-work, eq:stochastic-power and eq:stochastic-residual separate operation port work, endpoint checks and source-off relaxation. sec:residual-outcomes states signed uncertainty outcomes without declaring source numerical issues resolved.
- [x] L405–435 Nonlinear, time-varying and feedback extension → eq:material; eq:parametric; sec:driven. Material memory, modulation, Floquet and feedback requirements.
- [x] L436–475 Differential magnetic null, saturation and material lag → Retained: eq:material and explicit material-relaxation power; empirical lag is not a uniquely identified hysteresis law.
- [x] L476–503 Imposed `L/C` and mechanical parametric controls → Retained: eq:parametric, eq:electrical-parametric and exact monodromy definition; positive instantaneous parameters do not guarantee stability.
- [x] L504–536 Exact and frozen-surrogate feedback → Retained: feedback subsection distinguishes proportional, lead-lag, observer, polarity, saturation and actual versus first-order delay.
- [x] L537–565 Residual separation and retained scope → sec:driven; sec:limits. Residual separation, finite DC/bias supply, thermal/sensor ports and open coverage.
- [x] L566–584 Scoped robustness propagation → sec:driven; sec:limits. Residual separation, finite DC/bias supply, thermal/sensor ports and open coverage.
- [x] L585–604 Roadmap 2 Step 10 Numerical Successors → Replaced by the distinct local work/endpoint/relaxation questions in sec:stochastic-work and sec:residual-outcomes. Existing resolved numerical children remain resolved only in their bounded source scope; no new computation is asserted.
- [x] L605–650 Roadmap 2 Step 13 Finite Feedback Bias Supply → Retained conditionally: finite DC-link, sensor, thermal and controller boundary in Feedback and finite supplies; numerical thermal warnings remain in sec:limits.
- [x] L651–659 Roadmap 4 Step 10 Result Index → sec:driven; sec:limits. Residual separation, finite DC/bias supply, thermal/sensor ports and open coverage.

## volume_i_q1/15_TunedAbsorber.md

- [x] L1–15 15. Tuned-Absorber Resonance and Antiresonance → sec:applications; eq:absorber-state; eq:absorber-poly; eq:absorber-work. Reaction elimination, internal observables and physical boundary.
- [x] L16–47 Physical model and exact port relation → Retained: eq:absorber-state and eq:absorber-poly, separate actuator/base inputs, reaction and momentum identity.
- [x] L48–76 Boundary and signed-power ledger → Retained: eq:absorber-work and independently evaluated mass/spring stores; base and actuator powers are distinct.
- [x] L77–94 Declared sweep and port cancellation → Replaced: exact tuned zero-reaction solution and hidden coupling-force prediction after eq:absorber-poly.
- [x] L95–112 Passive `A` fits and untouched bands → Retained as a conditional result: positive physical candidates do not guarantee untouched-band accuracy or hidden stress inference.
- [x] L113–132 Separately derived singular limits → Corrected: eq:absorber-singular and zero-mass, zero-coupling, locked and coscaled resonant limits retain internal relaxation and path dependence.
- [x] L133–159 Time and ring-down results → Replaced: finite-settling homogeneous term and endpoint ring-down store; a finite number of periods is not universally steady.
- [x] L160–199 Reciprocal electromechanical two-port → Retained: eq:transducer, eq:transducer-port and eq:transducer-cubic, reciprocal orientation and independent cross transfers.
- [x] L200–224 Transfer sweep, reciprocity and passivity → Retained exactly: eq:transducer-pr gives the full Hermitian condition, distinct from poles and individual driving points.
- [x] L225–243 Separate transfer-only `A` reductions → Consolidated: transfer-only polynomial reductions remain subject to thm:polynomial-passivity, numerator and untouched-band obligations.
- [x] L244–292 Time boundary and signed coupling control → Replaced and qualified: eq:coupling-residual retains the listed-port residual before controller attribution; eq:source-off-values through eq:source-off-works and the endpoint table give an exact source-off growing third-order example. This is a new illustrative case, not an exactification of source numerical values.
- [x] L293–317 Reproduction and scope → eq:transducer-work; sec:applications; sec:limits. Controller power, finite supply/thermal stores, internal stress, unstable prefixes and hardware.
- [x] L318–336 Scoped robustness propagation → eq:transducer-work; sec:applications; sec:limits. Controller power, finite supply/thermal stores, internal stress, unstable prefixes and hardware.
- [x] L337–352 Roadmap 2 Step 10 Numerical Successors → Retained as uncertainty questions beside eq:coupling-residual and in sec:supply: unstable prefixes require separate absolute/relative work and endpoint bounds. The previous absorber numerical resolution does not resolve the transducer or physical realization.
- [x] L353–431 Roadmap 2 Step 13 Finite Transducer Bias Supply → Retained conditionally in eq:bias-state, eq:bias-work and eq:bias-increase, with sec:supply giving the seven-state plant, source limiter, converter, DC-link, sensor and thermal equations. eq:supply-local-residuals and eq:supply-combined keep coil, DC-link, thermal and interval checks distinct. Unresolved numerical evidence is recorded as source provenance in notes/review-2-resolution.md; it is not claimed resolved by the identities.
- [x] L432–445 Roadmap 2 Step 15 Coupling-Stress Identifiability → Retained and strengthened: OP-LR58-01 gives exact force/displacement/strain predictions and uncertainty-set separation.
- [x] L446–463 Roadmap 2 Step 16 limiting and settling continuations → Replaced: eq:absorber-singular and finite settling formula preserve nonuniform and path-dependent limits.
- [x] L464–472 Roadmap 2 Step 17 Hardware Contracts → eq:transducer-work; sec:applications; sec:limits. Controller power, finite supply/thermal stores, internal stress, unstable prefixes and hardware.

## volume_ii_q2/01_PowerEnergy.md

- [x] L1–12 1. Signed Power and Work in Higher-Order ODEs → sec:work; eq:collision-work; eq:formal-work; sec:parts. All component/port integrals, signed return, contact gate, arbitrary normalization and repeated-impact boundary.
  - Standalone displayed definitions/identities at L6 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L13–32 Held-Out Collision → Replaced: eq:collision-values with k_j=2200 as the stated alternative; eq:collision-poly defines the exact changed operator, while time and peak comparisons remain implicit matrix-exponential/root expressions.
- [x] L33–70 Physical Port Ledger → Retained: eq:collision-ports and eq:collision-work, including returned work. The following speed-zero integral gives the exact positive-work endpoint identity.
  - Tables at L52 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L38, L40, L42, L44, L48, L61, L63 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L71–109 Component Powers → Retained: eq:collision-work and its separately integrated spring, damper and inertial products, followed by independent E(t0),E(t1).
  - Tables at L87 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L75, L77, L79, L81, L83, L97, L99, L101 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L110–124 Open Contact-Gate Remainder → Retained: eq:release gives the positive remaining contact store at force-zero release; its physical destination stays unresolved.
- [x] L125–159 Effective Higher-Order Term Work → Replaced: eq:formal-work and eq:general-formal-balance supply exact signed term identities and normalization dependence without fabricated component attribution.
  - Tables at L137 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L129, L133 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L160–177 Findings → sec:work; eq:collision-work; eq:formal-work; sec:parts. All component/port integrals, signed return, contact gate, arbitrary normalization and repeated-impact boundary.
- [x] L178–201 Order-Map Physical Audit → Consolidated: eq:work, eq:release and finite flight/re-engagement paragraphs separate each interval, event and unresolved release destination.
- [x] L202–232 Repeated-Impact Boundary Ledger → Retained: fixture impulse with zero fixture work, additional boundary states, motor flight and release/reset ports in sec:collision and sec:work.

## volume_ii_q2/02_EnergyWorkAnomalies.md

- [x] L1–19 2. Signed-Power Anomaly Audit → sec:work; sec:parts; eq:release; eq:false-port; eq:collision-jet. Indefinite boundary form, zero-event mismatch, restitution, arbitrary scale, stability, false port, hidden state and unassigned release.
  - Standalone displayed definitions/identities at L6, L10 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L20–69 Operating-Path Ledger → Replaced: exact eq:collision-work and eq:work independently integrate ports and evaluate states; an algebraic term sum is not an accuracy estimate.
  - Tables at L52 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Figures at L68 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L32, L34, L36, L38, L40, L42, L48 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L70–95 Anomaly 1: An Effective Boundary Identity Is Not Physical Storage → Retained and strengthened: eq:formal-work has the explicit Q-increase condition and velocity-zero case; eq:physical-jet-store reconstructs the positive collision store for Delta nonzero. The component realization of Q remains open.
  - Standalone displayed definitions/identities at L74, L78, L86 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L96–110 Sign-event test of the realization hypothesis → Replaced: the effective-rate zero condition after eq:formal-work is compared with physical component events and the positive state-to-jet store; the lack of a one-to-one interpretation does not close the broader realization question.
- [x] L111–125 Post-selection restitution control → Retained: free-pair restitution restriction in sec:collision and joint-dependent restitution/release discussion in sec:work; damping does not prescribe a universal mounted-system restitution.
- [x] L126–147 Anomaly 2: ODE-Term Work Has Arbitrary Normalization → Retained: scaling a homogeneous scalar equation scales every formal work without changing its trajectories; paragraph after eq:formal-work.
  - Standalone displayed definitions/identities at L130 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L148–161 Anomaly 3: Dimensional Continuation Does Not Prove Stability → Retained: eq:marginal and eq:staircase-polynomial, including unstable and order-changing boundaries.
  - Figures at L160 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L152 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L162–181 Anomaly 4: A Stable Denominator Does Not Define a Passive Port → Retained: eq:collision-poly includes N(s); eq:false-port proves the passivity defect from discarding it.
  - Figures at L177 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
  - Standalone displayed definitions/identities at L166, L170 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L182–193 Anomaly 5: Higher Derivatives Change the Hidden Initial State → Retained: eq:collision-jet and eq:state-image distinguish changed hidden states from an unchanged preparation.
- [x] L194–231 Anomaly 6: The Contact Gate Has an Open Port → Retained: eq:release, force-zero versus deformation-zero gates, finite flight and fixture impulse.
  - Standalone displayed definitions/identities at L199 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L232–251 Step 12 destination audit → Retained as unresolved: sec:release-open explicitly distinguishes four exclusive whole-store counterfactual assignments from an identified mixed partition. eq:release-residual retains the negative deficit; eq:release-measurement defines the independently measured account.
  - Figures at L250 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L252–264 Conclusions → sec:work; sec:parts; eq:release; eq:false-port; eq:collision-jet. Indefinite boundary form, zero-event mismatch, restitution, arbitrary scale, stability, false port, hidden state and unassigned release.
- [x] L265–284 Running the Bundle → sec:work; sec:parts; eq:release; eq:false-port; eq:collision-jet. Indefinite boundary form, zero-event mismatch, restitution, arbitrary scale, stability, false port, hidden state and unassigned release.

## shared/01_PowerAccounting.md

- [x] L1–5 Power-Integral Accounting Contract → sec:work; eq:work; sec:verification. Conjugate ports, separate signed integration, event sides, independent stores and separate numerical/model residuals.
- [x] L6–29 Governing Rules → Retained: eq:work and the no-work/energy-selection rule in sec:scope; no constancy premise is used.
- [x] L30–56 Required Ledger → Retained: eq:work names boundary, effort, flow, sign and explicit interval; source, loss and event works remain separate.
  - Standalone displayed definitions/identities at L52 → the same mapped treatment; substantive structure retained, numerical outputs replaced.
- [x] L57–75 Boundaries and Switching → Retained: event-side transport after eq:rl-preparation and the finite connection example eq:reset-state through eq:reset-partitions.
- [x] L76–90 Strategy Isolation → Retained: Selection, metrics and derivative measurements permits kinematic/transfer/instantaneous physical-power criteria and excludes integrated work.
- [x] L91–112 Residuals and Anomalies → Retained: residual-class discussion after eq:work and in sec:verification; model residual is unevaluated rather than assumed zero.
- [x] L113–149 Experiment Audit Metadata → sec:work; eq:work; sec:verification. Conjugate ports, separate signed integration, event sides, independent stores and separate numerical/model residuals.
- [x] L150–197 Threshold Classification and Amplitude Null Test → Retained: three-way uncertainty classification and exact linear/quadratic amplitude scaling in sec:limits; eq:measurement-separation strengthens the model comparison.
- [x] L198–240 Shared Numerical-Convergence Protocol → Replaced: exact smooth-interval integrals have zero numerical integration residual; unsplit events, unstable prefixes and unresolved arithmetic remain named limitations in sec:limits.
- [x] L241–274 Absolute-Sum Certification Outputs → Retained: eq:ellipsoid, eq:reach-support, eq:lognorm and event-enclosure paragraph after eq:crossing-boundaries; stores are current-state evaluations.
- [x] L275–291 Selected Open Boundaries → Consolidated: preparation, release, clamp/reset, hardware and measurement exclusions in their local application sections and sec:limits.
- [x] L292–314 Ledger Provenance Map → sec:work; eq:work; sec:verification. Conjugate ports, separate signed integration, event sides, independent stores and separate numerical/model residuals.
  - Tables at L294 → the same mapped treatment; substantive structure retained, numerical outputs replaced.

## Corrections and qualifications

- Exact all-positive collision cancellation disproves universal observable fourth order.
- A massless damped hammer or absorber can retain a relative relaxation mode; compatibility is essential.
- Lossless quartz reference frequencies are not every lossy resonance definition.
- A missing synthesis does not refute a positive-real certificate; a negative residue can have a passive RL realization.
- Rank deficiency gives an infinite condition number; finite arithmetic rank is not physical order.
- The three RF initial maps and exact error decomposition are retained separately.
- Laurent closure has exact-divisibility exceptions; cancelled quotients do not restore leading order.
- Positive coefficients, stable poles, PR ports, physical stores and prepared states remain separate.
- A zero-mean spatial component perturbation can change the material profile.
- Work-based canonical port selection is excluded; port sensitivity remains an interpretive limitation.
- Numerical residual extrema and acceptance populations are replaced by explicit unresolved analytical/physical questions, with no invented magnitude.

## Additional volume coverage

The chapter inventory and content search included all Markdown chapters in every volume, beyond exact title/phrase matches. The following section-level map includes broader chapters for which only the derivative-order, state, realization, preparation, identification and related audit content is in scope. Their unrelated kinematic/spatial/taxonomic or administrative material is explicitly contextual, not silently treated as a target chapter.

### volume_ii_q2/03_SignedConservation.md

- [x] L1–35 3. Absolute Sums: Direct Experiments and Power-Path Controls → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L36–66 Signed Sums and Absolute Sums → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L67–114 Operational anomaly territory → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L115–187 Operational measurement and component stress → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L188–238 Common Second-Order Construction → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L239–263 Differential CRL Mode → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L264–288 Audit Boundaries → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L289–318 Experiment Eligibility Map → sec:networks; eq:three-state; eq:pair-geometry; sec:limits. Signed versus absolute observations, sensor loading, higher-order common/mediator state, exact pair and incidence.
- [x] L319–363 Question 1: Differential Coupling → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L364–409 Common-mode offset control → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L410–472 Question 2: Combine Before or After Rectification? → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L473–542 Question 3: Receiver Time Scale → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L543–585 Completed Q1--Q3 load, state and endpoint surfaces → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L586–614 Refined `A_state=A_state,0` surfaces → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L615–639 Loads, active controls and rectifier limit → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L640–690 Signed-power and endpoint audit → sec:networks; eq:coupled-halfcycle; eq:crossing-boundaries. Loaded pickup/rectifier/receiver state additions, physical common preparation, exact thresholds and retained extrema/fold limits.
- [x] L691–792 Question 4 Control: Local Gradient and Distant Field → sec:networks; eq:moving-inductance; eq:material. Field observations are contextual; relevant missing geometric realization, motional reaction and material-state memory retained. Pure spatial field maxima are not derivative-order results.
- [x] L793–833 Question 5 Controls: Motion, Permanent Magnet and Relaxing Material → sec:networks; eq:moving-inductance; eq:material. Field observations are contextual; relevant missing geometric realization, motional reaction and material-state memory retained. Pure spatial field maxima are not derivative-order results.
- [x] L834–865 Question 6 Control: Tesla-Style CRL and Spark-Gap Order → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L866–874 Question 7: Coupled Two-Coil CRL Exchange → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L875–915 Direct connected experiment → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L916–944 Ratio and coupling territory → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L945–983 Opening-coil switching control → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L984–1000 Question 8 Control: Primary Interruption into a Secondary LC → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1001–1016 Explicit Preparation → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1017–1043 Switching and Free Response → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1044–1086 Geometry and Distributed Models → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1087–1094 Completed Q6–Q8 Switching Boundaries and Degenerate Limits → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1095–1142 Q7 states, endpoints and analytic crossings → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1143–1172 Exact perfect-coupling DAE → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1173–1206 Q6/Q8 arc, clamp and parasitic paths → sec:networks; eq:clamp-state; eq:clamp-third; eq:clamp-solution. Four-state resonators, gap memory, connected pair, interruption, preparation, distributed front and perfect-coupling DAE.
- [x] L1207–1236 Realized higher-order passive port → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1237–1259 Closed Q1/Q7 Controlled Cycles and Thermal Feedback → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1260–1306 Boundaries, ports and resets → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1307–1336 Nominal cycle closure → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1337–1414 Repeated thermal cycles and `A_state=A_state,0` motion → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1415–1468 Step 12 Finite Q6--Q8 Switching Paths → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1469–1546 Roadmap 3 Step 10 Event-Side Order Changes → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1547–1595 Roadmap 2 Step 13 Finite Q1--Q3 Preparation and Reset → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1596–1636 Open Problems → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.
- [x] L1637–1653 Scoped robustness propagation → sec:passive; sec:driven; sec:limits; sec:reset. Realized passive ports, complete reset alternatives, finite supply/thermal feedback, order-changing events, finite preparation and unresolved scope.

### volume_ii_q2/04_AbsoluteSumGeometry.md

- [x] L1–13 4. Absolute-Sum Geometry, Invariants and Certification → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L14–78 Weighted quadratic-store envelope → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L79–115 Canonical and mutual-inductance controls → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L116–140 Contraction and trajectory diagnostics → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L141–152 The `sqrt(N)` null ensemble → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L153–181 Dynamic reachable sets → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L182–211 Work and energy ledger → eq:ellipsoid; sec:bounds; eq:lognorm; eq:reach-support. Quadratic observation envelope, invariant sections, current-state audit, norms and exact reachable supports.
- [x] L212–237 Required outputs and eligibility → sec:networks; sec:work; sec:passive. Eligibility, coordinate versus physical preparation, transformer/gyrator mapping, signs and graph changes.
- [x] L238–293 Coordinates, frames and gauges → sec:networks; sec:work; sec:passive. Eligibility, coordinate versus physical preparation, transformer/gyrator mapping, signs and graph changes.
- [x] L294–331 Ideal-transformer and gyrator controls → sec:networks; sec:work; sec:passive. Eligibility, coordinate versus physical preparation, transformer/gyrator mapping, signs and graph changes.
- [x] L332–365 Sign words and the failed winding conjecture → sec:networks; sec:work; sec:passive. Eligibility, coordinate versus physical preparation, transformer/gyrator mapping, signs and graph changes.
- [x] L366–409 Incidence eligibility and topology changes → Corrected: branch linkage lambda_e and node-branch B_e after eq:graph; B_e h_e=0, resistive voltage-drop qualification and cross-graph subspace condition.
- [x] L410–432 Volume I Chapter 1 analogy regression → sec:family; eq:canonical-pair; eq:crossing-boundaries; eq:entry-measure. Damped analogy limitation, exact crossing formulas, root conditions, measure dependence and independent audit.
- [x] L433–477 Certified crossing surfaces → sec:family; eq:canonical-pair; eq:crossing-boundaries; eq:entry-measure. Damped analogy limitation, exact crossing formulas, root conditions, measure dependence and independent audit.
- [x] L478–501 Event solver and refinement control → sec:family; eq:canonical-pair; eq:crossing-boundaries; eq:entry-measure. Damped analogy limitation, exact crossing formulas, root conditions, measure dependence and independent audit.
- [x] L502–519 Measure-dependent entry fractions → sec:family; eq:canonical-pair; eq:crossing-boundaries; eq:entry-measure. Damped analogy limitation, exact crossing formulas, root conditions, measure dependence and independent audit.
- [x] L520–549 Independent work and energy audit → sec:family; eq:canonical-pair; eq:crossing-boundaries; eq:entry-measure. Damped analogy limitation, exact crossing formulas, root conditions, measure dependence and independent audit.
- [x] L550–563 Coverage and remaining question → sec:family; eq:canonical-pair; eq:crossing-boundaries; eq:entry-measure. Damped analogy limitation, exact crossing formulas, root conditions, measure dependence and independent audit.

### volume_ii_q2/05_MultiStateConservation.md

- [x] L1–29 5. Multi-State Signed Conservation → sec:networks; eq:three-state; eq:graph; eq:ellipsoid. Four-form state maps, exact graph annihilators, momenta/linkages versus mediator states, invariants and current-state bounds.
- [x] L30–77 Matched physical forms → sec:networks; eq:three-state; eq:graph; eq:ellipsoid. Four-form state maps, exact graph annihilators, momenta/linkages versus mediator states, invariants and current-state bounds.
- [x] L78–128 CRL graphs → Corrected: eq:graph explicitly uses vertex lambda_v and edge q_e; vertex invariants require B_v^T h_v=0. The following Cayley–Hamilton identity retains the nonminimal scalar annihilator.
- [x] L129–172 Envelope and scaling controls → sec:networks; eq:three-state; eq:graph; eq:ellipsoid. Four-form state maps, exact graph annihilators, momenta/linkages versus mediator states, invariants and current-state bounds.
- [x] L173–249 Free mechanical chains → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L250–279 Polyphase and physical-vector controls → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L280–311 Periodic polyphase grid → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L312–344 Common-mode resonance and failed parasitic reduction → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L345–371 Oblique collision events → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L372–383 Scope → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L384–406 Step 9 Unilateral-Contact Refinement → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L407–418 Roadmap 2 Step 15 Polyphase Sensor Bound → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.
- [x] L419–425 Roadmap 2 Step 17 Hardware Contract → sec:networks; sec:limits. Elastic/damped/unilateral chains, switched graph limits, polyphase transformations, parasitic states, oblique impulse and sensor limits. Numerical maxima replaced by exact broader counterexample and conditional fixed-graph extremum problem.

### volume_ii_q2/06_RotatingFramePower.md

- [x] L1–31 6. Rotating-Frame Power in an Epicyclic Train → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L32–60 Oriented coordinates and the signed state → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L61–91 The observation map: three counts, one machine → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L92–107 Topology eligibility → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L108–149 The claims, kept apart → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L150–180 Where invariance stops → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L181–222 The signed port-power ledger → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L223–240 The bound was measured, and its first version was incomplete → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L241–277 Where the frame dependence actually went → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L278–294 What is invariant, exactly → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L295–327 The locked-train control → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L328–375 Which frame the linkage reports → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L376–398 The anomaly candidates → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L399–441 What does not close → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L442–462 Signed port-work audit status → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L463–491 What this chapter does not establish → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L492–506 The rule this chapter was written against → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.
- [x] L507–526 Reading context → sec:networks; eq:finite-transformer; sec:work. Contextual kinematics only, except dynamic-duality, moving-frame stores/ports and finite loaded-readout limitations, which are integrated. No derivative-order claim follows from tooth counts or imposed motion.

### volume_ii_q2/07_TransformerPortPower.md

- [x] L1–40 7. Transformer Readouts, References, and Port Power → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L41–77 The apparatus and the oriented variables → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L78–79 What corresponds to the epicyclic chapter → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L80–132 The planet axle, carrier and ring are named electrical terminals → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L133–153 Selecting a reference is different from changing the voltage zero → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L154–184 Limits of the dynamic correspondence → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L185–207 Ideal constraints before the finite model → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L208–233 The signed and absolute observations → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L234–250 Change the reference, then account for the return → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L251–283 An exact missing-return example → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L284–331 A finite transformer with changing stores → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L332–394 Boundary, ports and intervals → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L395–433 What changes when the load or probe is attached → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L434–461 Where the apparent discrepancy went → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L462–542 Sweep coverage and numerical status → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L543–552 The two physically loaded readouts → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L553–586 Exact controls: a changed count is not a work calculation → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L587–642 Finite circuits: the return current changes the source trajectory → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] L643–685 What survived the checks → sec:networks; eq:finite-transformer; eq:transformer-integrals. All relevant ideal/reference/return constraints, generic third-order finite circuit, state and power equations, loading, event intervals, readout identity and open singular/preparation/material/hardware limits.
- [x] Current L686–799 The compound circulating-power counterpart → sec:physical-reference; eq:compound-state; eq:compound-mechanical; eq:compound-reference; sec:compound-driver; sec:compound-limits; sec:compound-events. Corrects the former stale mapping to two general limitation paragraphs. Finite state/port correspondence, physical reference cell and driver, nine ideal versus eighteen lossy converters, 28 independent nonideal states, preparation, cutoff, constrained events, prepared limits and exact event enclosures are explicit. Detailed linked-derivation dispositions are in notes/review-3-resolution.md.
- [x] Current L800–864 Open boundaries and what this chapter does not establish → loading/return measurement paragraphs following eq:transformer-integrals; sec:physical-reference; sec:compound-driver; sec:compound-limits; sec:compound-events; sec:instrument-bounds. Preserves unresolved hardware, nonlinear events, material, singular, finite-source and arbitrary-preparation questions while retaining the bounded positive model results.
- [x] Current L865–891 Reading context and reproduction → exact derivations in the four destinations above replace numerical outputs, artifact inventories and commands. No source numerical acceptance result becomes an exact or measured article result.

### Review 3 linked compound derivations

- [x] computation/07_TransformerPortPower/compound_circulation_finite_results.md, all substantive sections → eq:compound-state; eq:compound-mechanical; physical ten-port boundary and five operating stages; extra mesh/pin diagnostics in sec:compound-events; finite observation/ratio and initial-state limits.
- [x] computation/07_TransformerPortPower/driven_reference_results.md, all substantive sections → eq:reference-cell; eq:reference-ramp-work; separate receiver/compensation/driver boundaries; exact normalized acceleration and reversing-work controls.
- [x] computation/07_TransformerPortPower/compound_refinement_results.md, all substantive sections → sec:instrument-bounds; sec:compound-events. Replaced by exact channel/error obligations and conditional event enclosures. Original finite-precision classifications and later bounded refinements remain distinct provenance; neither is reported as an article calculation.
- [x] computation/07_TransformerPortPower/compound_completion_results.md, all four investigations → eq:compound-modal-limit through eq:matched-mode-bounds; eq:compound-preparation; eq:ideal-reference-rail; eq:perfect-coupling-state; eq:energized-clamp; eq:compound-reversal. Driver supply, rigid matched inputs, compatible descriptor limits, nonzero subinterval/zero full-interval works, tangencies and undefined ratios retained.
- [x] computation/07_TransformerPortPower/compound_extension_results.md, all three investigations → eq:event-analytic-bounds; eq:compound-sensor through eq:rail-cutoff; eq:prepared-common-store through eq:compound-fast. Includes finite-bandwidth states, separate 41 heat exports, rail endpoints, nonlinear-versus-linear certificate scope, same-sign fast transfers, simultaneous controller limits, passive load limits, initial layers and hidden prepared stores.

### Review 3 corrections and measurement additions

- [x] Collision order exception → eq:collision-double; eq:collision-double-example; eq:collision-double-state; order table; sec:initial. Four physical / three initialized / two zero-state orders, with positive-component family and exact free trajectory; simple cancellation retained.
- [x] Hidden energy at ordinary scales → eq:hidden-loop-state through eq:hidden-loop-resolution. Three physical RC/inductor states, hidden difference mode, independent endpoints and two resistor integrals, assumed calibration budget and remaining errors.
- [x] Coupling realization/control → eq:coupling-actuator, exact scaled output work; OP-LR59-02 and sec:supply retain the distinct seven-state nonlinear bias question, reaction, DC-link and thermal accounts.
- [x] Event and physical channel resolution → finite release window beside eq:release-measurement; eq:channel-work-bound; eq:capacitor-error; eq:quadratic-store-error; sec:residual-outcomes.
- [x] Winding orientation → eq:transformer-integrals now contains sigma on every ideal-ratio term; both orientations have the correct ideal null, separate from energy residual.

### volume_iii_contact_transfer/01_ContactTransferCells.md

- [x] L1–24 1. Contact-Transfer Cells → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L25–40 Transfer Manifest → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L41–59 Coordinates → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L60–74 Cells → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L75–88 Step 1 Result → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L89–137 Step 2 Result → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L138–178 Step 3 Result → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L179–221 Step 13 Result → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L222–272 Step 14 Result → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L273–321 Step 15 Result → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.
- [x] L322–341 Step 16 Closeout → sec:collision; sec:networks; sec:limits. State/topology/event and modal-order context; coordinate-only prediction qualified; support, chatter, threshold, impulse/work and hardware limitations retained. Pure taxonomy and artifact accounting are not additional ODE results.

### volume_iii_contact_transfer/02_TeeterboardLaunch.md

- [x] L1–20 2. Teeterboard Launch → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L21–36 A0 Model → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L37–64 Impulse Gate → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L65–91 Energy Gate → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L92–100 Controls → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L101–128 A1 Board And Actuator Controls → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L129–142 Non-Destructive D Control → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L143–150 Hardware Campaign Index → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.
- [x] L151–176 Generated Artifacts → sec:networks, Contact applications with additional states. Rigid versus bending/activation states, nonlinear geometry and contacts, fixture impulse/zero-work distinction, held-out timing/recoil/force and preparation limits. Pure launch taxonomy is contextual.

### volume_iii_contact_transfer/03_ClubBallImpact.md

- [x] L1–18 3. Club-Ball Impact → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L19–53 Model Levels → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L54–69 Energy Gate → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L70–83 Impulse Gate → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L84–100 Generated Artifacts → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L101–121 Sweeps → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L122–132 Comparison Target → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L133–168 Shaft And Grip Transient → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L169–189 B2 Generated Artifacts → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.
- [x] L190–196 Hardware Campaign Index → sec:networks; eq:effective-mass; eq:rigid-map. Rigid/effective-mass baseline, offset rotation, shaft bending/torsion/longitudinal modes, finite wave time, grip sensing and unresolved modal/hardware limits.

### volume_iii_contact_transfer/04_HammerNailBoundary.md

- [x] L1–18 4. Hammer-Nail Boundary → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L19–33 Boundary Element → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L34–55 C0 And Constant-R Identity → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L56–66 Free Law Gap → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L67–91 Energy Gate → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L92–99 Impulse Gate → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L100–107 Comparison Anchors → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L108–149 Support, Orientation And Wave Regime → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L150–182 Generated Artifacts → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.
- [x] L183–190 Hardware Campaign Index → sec:networks, Contact applications with additional states. Depth memory and separate advancing/retreating laws, support impedance, finite-wave versus lumped order, zero-work support impulse and unresolved constitutive inputs.

### volume_iii_contact_transfer/05_TerminalStateTransfers.md

- [x] L1–21 5. Terminal-State Transfers → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L22–37 Boundary And Ports → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L38–54 P3 Topology Test → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L55–65 Partition And Thresholds → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L66–73 Released Store → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L74–79 Retained Limits → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L80–96 State-Class Separation → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L97–112 Accumulating Threshold Tests → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L113–126 Step 11 Ledgers And Controls → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L127–165 Published-Law Traversals → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L166–173 Hardware Campaign Index → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L174–191 Step 12 Ledgers And Controls → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.
- [x] L192–230 Generated Artifacts → sec:networks, Contact applications with additional states. Reversible/accumulating/terminal state distinctions, threshold topology change, partition and released-store regularization, law/fragment and hardware limits.

### volume_iv_evidence/03_TemplateClosure.md

- [x] L1–55 3. Template-Closure Measurement Track → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L56–84 What The Track Publishes → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L85–113 The Fixed Attribution Ladder → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L114–134 Pilot 1: A Declared ODE Port → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L135–168 Pilot 2: A Non-ODE Multi-Port Case → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L169–209 What The Repaired Publication Establishes → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L210–230 The Fit Axis Is Intentionally Harsh → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L231–259 What This Chapter Does Not Establish → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.
- [x] L260–292 How To Read This Chapter With The Register → sec:limits; eq:template-residual. Exact template residual and absolute-throughput definition, independent fitting, attribution limits, port sensitivity, falsifiers and absent physical observations. Numerical result counts and implementation artifacts excluded.

### volume_iv_evidence/04_FalsificationCampaign.md

- [x] L1–10 4. Falsification Campaign Against Energy Constancy → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L11–54 What is actually being proposed → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L55–76 What this roadmap can and cannot be built to do → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L77–105 Where it goes in the book → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L106–123 Why this earns a volume when the epicyclic investigation did not → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L124–143 The layout cost, paid deliberately → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L144–181 On keeping the other volumes read-only → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L182–208 The fifteen most promising sites → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L209–221 The calibration control → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L222–245 The elimination ladder → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L246–262 The sign test, which is cheap and has not been run → Corrected rather than omitted: sec:residual-outcomes preserves sign investigation but rejects an automatic symmetric integration-error null. eq:signed-integration-control proves a one-signed deterministic error; shared paths require a dependence model. Neither bias nor symmetry alone closes a physical question.
- [x] L263–264 Phases → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L265–280 Phase 0 — Volume V, and the frozen baseline → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L281–296 Phase 1 — Pre-registration → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L297–314 Phase 2 — The instrument, and the sign test → Conditional replacement: eq:residual-enclosure and its outcome table define the surviving signed residual; eq:signed-integration-control corrects the proposed sign inference. No numerical program or scientific closure is asserted.
- [x] L315–332 Phase 3 — Unassigned destinations (sites 1–3) → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L333–348 Phase 4 — Driven, unstable and stochastic (sites 4–7) → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L349–366 Phase 5 — Boundary changes and the lossless store (sites 8–11) → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L367–378 Phase 6 — Residual populations and limit processes (sites 12–15) → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L379–393 Phase 7 — The bound → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L394–404 Phase 8 — The chapters → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L405–421 The pre-registered outcome table → Retained in eq:residual-enclosure and the signed outcome table: positive, negative or unresolved sign with fixed independent uncertainty, plus the remaining unassigned physical account.
- [x] L422–450 Order and gating → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.
- [x] L451–486 The rule that governs all of it → sec:limits; sec:work; sec:distributed; sec:passive. Relevant questions on release destinations, driven/stochastic/unstable prefixes, events/chatter/vanishing ports, reflection/modal truncation, singular limits and incomplete synthesis. Proposed numerical program is not evidence.

### Context-only and navigation sources

- [x] shared/00_Preface.md: overall question/context, no additional mathematical higher-order result beyond covered chapters.
- [x] volume_iv_evidence/01_Review13.md: editorial assessment/navigation; no new ODE derivation or physical result. Its scope confirms that the numerical and application chapters remain substantive.
- [x] Volume README files, volume_iv_evidence/02_OpenProblems.md and open-problem navigation/audit documents: followed to the atomic entries recorded in notes/open-problem-inventory.md; administrative statuses are not article physics.

## Linked derivations inspected

- Coefficient and initial-state algebra: initial-data implementation, collision initial-map derivation, mirror and Laurent-closure derivations, and state-image audit.
- RF: exact recurrence, manufactured solutions and finite preparation derivations.
- Battery: branch-order elimination, relaxed-state map and finite source/clamp/reset paths.
- Passive circuits: positive-real polynomial/ray calculation, Euclidean Cauer extraction and associative/commutative graph grammar.
- Initialized histories and delay: exact five-bin zero-moment and outside-window controls.
- Interruption: constant-voltage third-order clamp state equations and topology/event-side construction.
- Template closure: residual and four absolute-power denominator definition checked against the underlying derivation.
- Source derivation files were inspected read-only. None of their simulations, numerical solvers, experiments or sweeps was executed.

## Audit disposition

The revision re-audit replaced broad targets for the mathematical constructions listed above with specific equations, tables, sentences and correction dispositions. In particular, the contact/joint proposals now have their own treatment rather than being mapped to the different cubic force law. The diode, initialized cancellation, transformer ratio and graph-space corrections are recorded in notes/review-1-resolution.md. The additional-volume and atomic-question maps remain a traceability record of the earlier integration; their counts alone are not renewed as an independent completeness certificate. Numerical tables and figures have exact or conditional replacements, not claims of reproduced numerical performance or completed measurements.

## Review 2 item-level completion

- [x] R2-1: abstract, sec:scope and sec:conclusion lead with contact-store deletion, source-off growth and hidden changing stores; coefficient and realization content is retained.
- [x] R2-2: sec:coupling-open; eq:coupling-residual; eq:source-off-values; eq:source-off-trajectory; eq:source-off-polynomial; eq:source-off-works; exact endpoint table. Controller attribution is conditional.
- [x] R2-3: sec:release-open; eq:release-residual; eq:release-sequence; eq:release-measurement. Separate event sides, negative sign, exclusive counterfactual destinations and independent retained-state/transfer proposal.
- [x] R2-4: eq:bias-state, eq:bias-work, eq:bias-increase; sec:supply. Seven-state conditional realization, zero-bias continuity, source-off versus open source, separate coil/DC-link/sensor/thermal/plant/combined accounts, local unresolved checks.
- [x] R2-5: sec:stochastic-work; sec:residual-outcomes; eq:residual-enclosure; eq:signed-integration-control. Operation and relaxation questions remain separate; exact arithmetic does not resolve prior numerical or hardware uncertainty.
- [x] R2-6: eq:physical-jet-store and the paragraphs after eq:formal-work compare the increasing formal boundary form with the positive realized store and preserve its open interpretation.
- [x] R2-7: sec:hidden-measurement; eq:hidden-energy-bound and its uncertain-component extension; finite low-voltage capacitor/resistor audit and polarization emulator; verified OP-LR23-01 appears once.
- [x] R2-8: targeted chapter and atomic-question maps now point to the actual specific content. Source signs/status and the numerical-to-symbolic replacement are retained in notes/review-2-resolution.md.

This revision preserves the existing manuscript constructions while adding the missing energy accounts and local questions. The updated destinations above supersede their earlier broad mappings. The remaining earlier source inventory is retained as traceability; aggregate counts are not a renewed independent completeness certificate.
