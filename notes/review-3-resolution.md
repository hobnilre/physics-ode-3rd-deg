# Review 3 resolution and source audit

Revision date: 2026-09-27. Scope: implement REVIEW_3.md without staging or committing. The review remains ignored and unchanged. This record supplements the earlier integration and review audits; it is not a claim that all source chapters were reread during this revision.

## Finding-by-finding disposition

| Finding | Revision and acceptance evidence |
|:---|:---|
| R3-1, missing finite reference and compound content | Added sec:physical-reference and appendices sec:compound-driver, sec:compound-limits and sec:compound-events. Explicit finite receiver/mechanical map; physical reference and compensation currents; exact ramp works; nine ideal versus eighteen lossy converters; finite sensors, actuators, command/driver and rail states; separate local accounts and cutoff endpoints; constrained magnetic/clamp models; prepared common/differential limits; exact event obligations and nonlinear limitations. OP-TRF-12 now has its own inventory entry and atomic destinations. |
| R3-2, practical energy questions too weak | Abstract, introduction and conclusion name ordinary-instrument opportunities. sec:hidden-loop gives a three-state circuit at volt/milliampere/second scales, exact internal work and endpoint predictions, and a complete capacitor/resistor contribution to an assumed residual budget. Local transformer return-path and calibration questions have distinct verified markers. The finite reference ramp predicts different port works at identical endpoints. |
| R3-3, independently measurable coupling control | sec:coupling-control declares reciprocal coupling plus a series velocity-feedback voltage actuator before calculating its work. Exact output work is separate from supply work. A scaled motion/current example is explicit. OP-LR59-02 stays attached to the different bias-dependent seven-state question; no trajectory or numerical status is borrowed from the constant-coupling cubic. |
| R3-4, instrument-to-work bounds | sec:instrument-bounds proves the effort/flow product bound, includes the cross term, gives exact capacitor and coupled-quadratic endpoint bounds, and handles smooth timing and event windows. The hidden-loop example computes four endpoint plus two work bounds exactly; remaining probe, timing, inductive and acquisition errors stay explicit. The release proposal now distinguishes resolving the positive store from identifying its destination. |
| R3-5, double collision cancellation | Corrected the order table and state-image discussion. eq:collision-double gives the full positive-component subset; eq:collision-double-example and eq:collision-double-state establish four physical states, rank-three initialized output and degree-two zero-state transfer. Existing simple cancellation retained. |
| R3-6, winding orientation | eq:transformer-integrals uses sigma n in linkage and copper terms. The ideal null v2=sigma n v1 is explicit for both orientations and remains a volt-second comparison, not an energy residual. |

## Current source snapshot

All paths below are relative to the read-only source root /home/bo/projects/physics-edge. The relevant transformer chapter continuation and all five linked reports were read, including later reports that supersede earlier “not yet executed” qualifications. Numerical tables and implementation details are not imported into the article.

| Path | Lines | SHA-256 |
|:---|---:|:---|
| volumes/volume_ii_q2/07_TransformerPortPower.md | 891 | a188ccf79be57e68ddff9b6dd7841ac7be8237a9a86214eb8c8aeea816ee30bb |
| volumes/volume_ii_q2/computation/07_TransformerPortPower/compound_circulation_finite_results.md | 333 | 81824888506459e5383b51196389547ad16f4a88b6cbba0d8346d23f6d60990a |
| volumes/volume_ii_q2/computation/07_TransformerPortPower/driven_reference_results.md | 162 | 6c5e0213ad1e9ffc9ed61fbf80650ea991af612b223f6054abed8c4c6f795d73 |
| volumes/volume_ii_q2/computation/07_TransformerPortPower/compound_refinement_results.md | 126 | 5708599514c0817299e84c8066cbe70ff40dde252a12f9c5472cef50274427e7 |
| volumes/volume_ii_q2/computation/07_TransformerPortPower/compound_completion_results.md | 421 | 04953018b1a09b5194d947e930e446d88e33d6605987905afea53cc954c1ee46 |
| volumes/volume_ii_q2/computation/07_TransformerPortPower/compound_extension_results.md | 552 | 5673003c8a9a9657849cdd7c70881fa8e5c784d7c552289b0f7f83a604594ad8 |

Current OP-TRF-11 is open/model_realization/supported with bounded closure success; OP-TRF-12 is open/model_realization/inconclusive with closure unresolved. The inventory corrects its stale OP-TRF-11 snapshot and adds OP-TRF-12. The bounded positive results and broader physical questions are both retained.

## Linked derivation coverage

| Source content | Exact or conditional article replacement |
|:---|:---|
| Finite report: branch graph, receiver/probe/reset returns, capacitances and winding pairs | eq:compound-state and surrounding prose give all four oriented branches, physical returns, seven/eight independent coordinates and ten physical powers. The connection diagram's substantive topology is expressed by the incidence law and prose. |
| Finite report: dimensional mechanical map and modal spring law | eq:compound-mechanical, K=alpha² L^-1, z=lambda/alpha, and equal independent constitutive stores. Inertia maps to capacitance. |
| Finite report: extra mesh couples, orbital pin effort, incomplete nine-port diagnostics | sec:compound-events distinguishes shaft/mesh/pin products from complete finite boundaries and explicitly gives the extra couple and orbital-inertia term. |
| Finite report: five stages, finite receiver commutation and nonzero final stores | sec:physical-reference retains preparation, operation, receiver change, relaxation and reset with separate intervals, finite state continuity and no assumed completed reset. Charged rewiring/opening is a different event. |
| Finite report: sign homogeneity, zero drive, frame contributions and undefined ratios | sec:compound-events retains exact drive reversal, independent reference returns, separately integrated works and zero-denominator restrictions. |
| Finite/refinement reports: original versus refined acceptance and sensitivity | sec:instrument-bounds and sec:compound-events replace numerical outputs by independent work/store uncertainty and certificate obligations. Later bounded refinements are not misrepresented as still-unexecuted work; their source-specific numerical values are not article results. |
| Reference cell: acceleration compensation and incompatible uncompensated cell | eq:reference-cell and the normalized two-joule receiver example derive both distinct trajectories and actual source ports. |
| Reference cell: driver capacitor, resistor, bias return and supply separation | eq:reference-ramp-work; both ordinary-scale durations and the source's unit-scale acceleration driver are separately integrated with independent endpoints. |
| Reference cell: reversing and zero controls | sec:compound-events derives +1/32 and -1/32 J on the two halves of the normalized inertial reversal; zero drive remains a separate exact case. |
| Completion §1: matched-drive rigid reduction, finite planet clamp and preparation | eq:compound-modal-limit; eq:compound-modal-solution; eq:matched-mode-bounds; eq:compound-preparation. Includes exact finite component preparation works and retained planet-clamp contribution. Numerical error tables become conditional bounds. |
| Completion §2: floating compensation and state-dependent reference | eq:compound-reference; prescribed versus r=chi v_S commands, compatible initialization, actual node and compensation powers. |
| Completion §2: ideal converters, rail and driver | eq:ideal-reference-rail and eq:reference-ramp-work. Nine converter outputs, controller heat, driver and receiver boundaries remain separate. Finite rail preparation is independently derived in eq:rail-preparation. |
| Completion §3: zero capacitance/source resistance and perfect coupling | sec:compound-limits and eq:perfect-coupling-state retain descriptor constraints, compatible charge/flux and remaining magnetizing state. Singular ratios require a different graph. |
| Completion §3: energized clamp/lock | eq:energized-clamp derives finite-duration source/heat shares and independent capacitor endpoints, with completed-layer and mechanical-rate analogues. The fixed-resistance zero-time reference ramp keeps its divergent heat limit. |
| Completion §4: finite zero-work histories | eq:compound-reversal and three explicit profile classes retain zero endpoints, nonzero subinterval work, no-planet-injection constraints, tangent zeros and separate reference-supply costs. |
| Completion §4: polynomial root partition, factor zeros and maximizing sets | sec:compound-events includes signs, absolute-power equality factors, persistent ties, root-enclosure work and undefined ratios. The exact polynomial control is distinct from dissipative/nonlinear models. |
| Extension §1: exact affine-state event certificate | eq:event-analytic-bounds derives complex-disk state bounds, Cauchy tails and derivative tails. Root-free intervals, unique roots, tangent factors, endpoint zeros and nonvanishing proportionality distinguish completeness from finite observations. |
| Extension §1: conjugacy, sign symmetry and certificate scope | eq:compound-mechanical and sec:compound-events. No root counts or solver outputs imported; exact-model positive results remain conditional on complete-enclosure obligations. |
| Extension §2: nine RC sensors and exact lag-rate coordinate | eq:compound-sensor; dimensioned current transduction, clipping, nonloading assumption, physical stores and equivalent compatible lag coordinate. |
| Extension §2: eight inductive outputs and finite holding | eq:compound-actuator and receiver equations; commanded load/source currents are regenerative control, not passive resistors. Tracking error remains. |
| Extension §2: command capacitor and reference driver | eq:compound-command retains both capacitor states, sensed driver current, voltage limits, local powers and separate carrier capacitance. |
| Extension §2: eighteen converters and finite rail | eq:converter-efficiency; eq:compound-finite-rail; all local boundaries and 41 distinct heat exports. State count 28 is independently counted, not inferred from heat or boundary count. |
| Extension §2: preparation, analytic/active cutoff | eq:rail-preparation and eq:rail-cutoff; positive rail store and retained active receiver states; shutdown lies outside the operating interval. |
| Extension §2: missed same-sign startup, opposite residuals and rail endpoints | Explicit exact exponential-pulse work and separate endpoint/local-residual discussion in sec:compound-driver. No balancing port is invented. |
| Extension §2: ideal-approach scalings and nonlinear scope | sec:compound-driver states every component/time/efficiency scaling and preserves clipping, tracking, prepared states and finite rail restrictions. Numerical convergence observations are not a uniform theorem. |
| Extension §3: passive source/load versus clamped drive | eq:compound-passive-limit and eq:compound-fast retain both receiver returns and the conditional undamped-subspace/Hurwitz requirement. Distinct fixed-effort benchmark preserved. |
| Extension §3: preparations, forcing and hidden stores | eq:prepared-common-store and eq:drive-mismatch-limit derive vanishing, finite and unbounded store/current regimes; exact convolution retains changing/reversing forcing. Preparation is separately audited. |
| Extension §3: initial layers and port-work agreement | sec:compound-limits separates state, current, work and endpoint convergence; initial layers and invisible opposed common preparations are explicit. |
| All reports: commands, versions, serialized output and empirical tables | Excluded under symbolic replacement. Their mathematical questions, assumptions and uncertainty limitations remain above. No source code, solver, simulation or numerical work evaluation was run. |

## Exact verification

Inline symbolic scratch checks (not retained as programs) verified the double-cancellation family and its positive example; both rank-three matrices, quadratic transfer and free response; hidden RC motion and independent work/endpoints; all stated calibration rationals; reciprocal-actuator work and scaling; both ordinary reference ramps and the unit-scale driver; modal magnetic storage; current-ramp preparation; energized clamp source/heat shares; reversal primitives and separate half-interval works. Direct algebra also checks the finite electrical/mechanical state map, physical subboundary powers, converter heat signs, rail cutoff and perfect-coupling constraint.

All models retain positive-inward port convention, separately integrated works, independently evaluated endpoints and explicit event assumptions. Exact analytic integrations have zero numerical integration error. Physical residuals are unmeasured/unknown unless a stated exact model supplies them; neither a proposed extra port nor a combined residual identifies a physical destination.

## Preservation and final checks

All pre-revision equation/section/figure labels and distinct prior examples are retained. Additions do not replace the source-off positive residual, negative release deficit, seven-state supply or existing simple-cancellation case. Bibliography and three vector figures are unchanged.

The finishing record in notes/verification.md records the rebuilt PDF, reference/hygiene checks and actual visual inspection. Source files and instruction templates remain read-only; no staging or commit is performed.
