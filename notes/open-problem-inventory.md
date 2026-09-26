# Open-problem reading inventory


This is a source-question reading and coverage record, not a dataset or a claim that the cited computations or hardware actions were performed here. Status words retain the source scope; mathematical corrections in the article do not modify the read-only register. Administrative and unrelated questions are explicitly distinguished below.
## OP-NUM-BACKEND-01: Establish whether the exact-rank condition number is a result or a conditioning artifact

Source: opb-backend-01.md

`open` / `numerical` / `bounded` / `medium`

Is `condition_at_exact_rank` a property of the realization being audited, or an artifact of evaluating a condition number at exact rank deficiency, where the quantity is infinite in exact arithmetic and two arithmetic backends therefore disagree by of order the value itself?

Coverage: eq:information; eq:lift-amplitude; sec:verification; sec:limits. Relevant exact-rank, sensitivity, divergent-prefix or quadratic-invariant question; backend-dependent output is not promoted into a physical result.

## OP-NUM-BACKEND-02: Bound the diverging order-raising trajectory closure independently of the arithmetic backend

Source: opb-backend-01.md

`open` / `numerical` / `bounded` / `medium`

Does `trajectory_numerical_closure_linf` carry information about the order-raising continuation, or only about the rounding of a continuation that diverges over the published interval?

Coverage: eq:information; eq:lift-amplitude; sec:verification; sec:limits. Relevant exact-rank, sensitivity, divergent-prefix or quadratic-invariant question; backend-dependent output is not promoted into a physical result.

## OP-NUM-BACKEND-03: Separate the informative and noise-dominated entries of the published rank spectra

Source: opb-backend-01.md

`open` / `numerical` / `bounded` / `medium`

Which entries of the published `singular_values` spectra carry information, given that entries below the machine-precision floor relative to the largest singular value disagree between backends by of order themselves?

Coverage: eq:information; eq:lift-amplitude; sec:verification; sec:limits. Relevant exact-rank, sensitivity, divergent-prefix or quadratic-invariant question; backend-dependent output is not promoted into a physical result.

## OP-NUM-BACKEND-04: Determine whether the whitened noiseless prediction residual is a result or a conditioning artifact

Source: opb-backend-01.md

`open` / `numerical` / `inconclusive` / `high`

Is `whitened_noiseless_prediction_residual` determined by the Step 15 identifiability computation as specified, given that two correct BLAS implementations recompute it as 3.42e-02 and 2.50e-03 for the same case — a factor of thirteen, not a rounding difference?

Coverage: eq:information; eq:lift-amplitude; sec:verification; sec:limits. Relevant exact-rank, sensitivity, divergent-prefix or quadratic-invariant question; backend-dependent output is not promoted into a physical result.

## OP-NUM-BACKEND-05: Bring the implicit-midpoint lossless-store drift under its declared threshold on every arithmetic backend

Source: opb-backend-01.md

`open` / `numerical` / `bounded` / `high`

Does the implicit-midpoint integrator preserve a lossless quadratic store to the declared 2.5e-13 acceptance threshold on every arithmetic backend, or only on the one the threshold was set against?

Coverage: eq:information; eq:lift-amplitude; sec:verification; sec:limits. Relevant exact-rank, sensitivity, divergent-prefix or quadratic-invariant question; backend-dependent output is not promoted into a physical result.

## OP-CT-01: Test whether the contact-transfer coordinates predict cell structure

Source: opb-ct-01.md

`resolved` / `coverage` / `bounded` / `medium`

Is the (mu, e, Phi, Beta, Lambda, Theta, Omega, Kappa) classification predictive of transfer structure, or only descriptive of the four named examples?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-02: Define a cross-domain contact-transfer manifest contract

Source: opb-ct-01.md

`resolved` / `coverage` / `bounded` / `medium`

Can one declared transfer manifest and ledger contract carry mechanical and non-mechanical contacts without letting work, energy or passivity select a candidate?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-03: Verify the shared hybrid contact, port and residual library

Source: opb-ct-01.md

`resolved` / `physical_port` / `bounded` / `medium`

Do the shared event-location, per-port work, rigid-limit and four-residual-class tools reproduce every declared verification case, including the fixture distinction?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-A-01: Audit teeterboard fixture-impulse share

Source: opb-ct-01.md

`resolved` / `physical_port` / `bounded` / `medium`

What fixture-impulse share sigma_fix does an actuated fixture-coupled launch require, and does the vertical and angular impulse ledger close only with pivot and stop included?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-A-02: Compare board models and actuator controls

Source: opb-ct-01.md

`resolved` / `identifiability` / `bounded` / `medium`

Can actuator work be separated from gravitational release and passive elastic return by the declared observables, and does the actuation-number sweep show a crossover or a threshold?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-B-01: Map the near-free club-ball strike

Source: opb-ct-01.md

`resolved` / `physical_port` / `bounded` / `medium`

Does a finite compliant strike reproduce the free two-body event map, and by how much do offset, effective mass and head rotation break it?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-B-02: Separate candidate felt-transient mechanisms

Source: opb-ct-01.md

`resolved` / `identifiability` / `bounded` / `medium`

Which transmission mechanism explains a small felt transient, are the three candidate locations separable, and does any wave type reach the grip inside the contact window?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-BND-01: Locate exact free two-body cell boundaries

Source: opb-ct-01.md

`resolved` / `model_realization` / `bounded` / `medium`

Where are the exact cell boundaries chi_1=0 and the retained-motion surface, including the effective-mass, offset and exact structural corners?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-C-01: Realize the hysteretic penetration boundary

Source: opb-ct-01.md

`resolved` / `physical_port` / `bounded` / `medium`

Does a hysteretic depth-state boundary reproduce an arrested striker at mu near 0.017, and is W_pen rather than a transfer fraction the identified output?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-C-02: Sweep support impedance, orientation and wave regime

Source: opb-ct-01.md

`resolved` / `physical_port` / `bounded` / `medium`

Does support impedance act by removing relative displacement rather than by absorbing energy, and is penetration per blow independent of orientation at matched impact speed?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-D-01: Certify terminal-state transfer and partition ledgers

Source: opb-ct-01.md

`resolved` / `physical_port` / `bounded` / `medium`

Does topology alone convert one declared failure into transmission, reflection and diversion, and is the store released at failure better treated as impulsive event work or as a finite-time regularization?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-D-02: Separate reversible, accumulating and terminal state classes

Source: opb-ct-01.md

`resolved` / `model_realization` / `bounded` / `medium`

Are the reversible, accumulating and terminal state classes distinguishable by declared observables, and can a threshold carried as a state variable reproduce a non-monotone trajectory?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-D-03: Traverse published failure-threshold laws without hardware

Source: opb-ct-01.md

`resolved` / `measurement` / `bounded` / `medium`

Do published residual-velocity, stopping-power and instrumented-impact laws reproduce a cell traversal, and can a fragment partition be predicted rather than left as a residual?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-HW-01: Preregister missing contact-transfer measurement campaigns

Source: opb-ct-01.md

`open` / `hardware` / `inconclusive` / `high`

Which measurement campaigns would identify each case, and which prerequisites remain externally blocked?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-CT-ROB-01: Refine contact-transfer robustness controls

Source: opb-ct-01.md

`numerically_limited` / `numerical` / `bounded` / `high`

Which conclusions survive the declared parameter, event-tolerance, timestep, method and modal-truncation controls?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-NUM-CT-ROB-01: Converge Roadmap 4 Step 14 support-port disappearance smooth-method impulse residual

Source: opb-ct-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Does FP-CT-ROB-01 converge below abs(impulse) <= 2e-05 N s without hiding sign or method disagreement?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-NUM-CT-ROB-02: Converge Roadmap 4 Step 14 hybrid chatter output-rate port-work disagreement

Source: opb-ct-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Does FP-CT-ROB-02 converge below abs(port_work) <= 0.0002 J without hiding sign or method disagreement?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-NUM-CT-ROB-03: Converge Roadmap 4 Step 14 terminal threshold partition balance residual

Source: opb-ct-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Does FP-CT-ROB-03 converge below abs(partition) <= 2e-07 1 without hiding sign or method disagreement?

Coverage: sec:collision; eq:rigid-map; eq:effective-mass; sec:networks; sec:limits. Relevant state, memory, modes, switching and validation limitations retained; contact-taxonomy-only or administrative detail is contextual.

## OP-EPI-01: Closure of the epicyclic power ledger in more than one rotating frame

Source: opb-epi-01.md

`open` / `physical_port` / `supported` / `high`

Do the ground-frame and carrier-frame ledgers of the same epicyclic train close to their own separately measured quadrature bounds under transient operation, and does that closure extend to frames in which a shaft rather than the housing is at rest?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-02: The ground-carrier work difference is not confined to the pin ports and stores

Source: opb-epi-01.md

`open` / `physical_port` / `rejected` / `high`

Is the difference between the ground-frame and carrier-frame signed port works carried only by the pin ports and the frame-dependent stores, as the chapter design expected?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-03: The ledger does not close at its declared bound when every port flow is an exact rational zero

Source: opb-epi-01.md

`numerically_limited` / `numerical` / `bounded` / `high`

Why does abs(r_E) exceed the declared quadrature bound by fourteen orders of magnitude on the constant-rate intervals of configurations in which every port flow in the frame is an exact rational zero while a drive torque is still applied, and what bound would see that error?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-04: How the boundary frame difference divides between shaft and field ports is history dependent

Source: opb-epi-01.md

`open` / `model_realization` / `explained` / `medium`

On a ramp, does the total boundary frame difference divide equally between the shaft ports and the field ports, as the Phase 3 ramps appeared to show?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-05: Which frame a physical lead-out linkage reports, and whether a frame-neutral mounting exists

Source: opb-epi-01.md

`open` / `physical_port` / `rejected` / `high`

Which rotation count does a physical lead-out linkage from an orbiting planet actually report, and does any mounting report a count that is neutral between the ground and carrier frames?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-06: Whether the double-Hooke readout carries a nonzero cycle power integral

Source: opb-epi-01.md

`open` / `physical_port` / `bounded` / `medium`

Does the support port of a double Hooke lead-out, whose instantaneous ratio fluctuates twice per revolution, carry a nonzero integral of power over a whole cycle?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-07: A lead-out support port with a surviving nonzero cycle integral, zero in the carrier frame

Source: opb-epi-01.md

`open` / `physical_port` / `supported` / `high`

Does any lead-out mounting carry a cycle power integral that survives the numerical-sensitivity check, and is that integral frame dependent?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-08: The magnitude of circulating power depends on the observation frame

Source: opb-epi-01.md

`open` / `physical_port` / `supported` / `medium`

For a compound train in which power circulates, does the ratio of circulating to throughput power depend on which frame the ports are observed in?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-09: Integrating through a switching event degrades the energy balance by up to four thousand times

Source: opb-epi-01.md

`open` / `numerical` / `supported` / `high`

How much does the energy-balance residual degrade when a window containing backlash engagement and separation events is integrated without splitting at the events?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-10: Port power is discontinuous at a switching event while the stored energy is not

Source: opb-epi-01.md

`open` / `physical_port` / `supported` / `medium`

At a backlash engagement or separation, does the boundary port power jump, and does the stored energy jump with it?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-11: A geometrically held port does not carry the exact floating-point zero

Source: opb-epi-01.md

`open` / `numerical` / `explained` / `medium`

When a port's flow is an exact rational zero for a geometric reason, what work does it carry in floating point, and is that value distinguishable from the port's own cancellation floor?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-12: The locked limit at fixed drive is not the null control, and it is two limits rather than one

Source: opb-epi-01.md

`open` / `model_realization` / `explained` / `medium`

As the sun rate approaches the carrier rate, does the ledger approach the locked-train null control, and is the approach continuous?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-13: Checked and null: mesh friction loss is frame invariant

Source: opb-epi-01.md

`open` / `physical_port` / `supported` / `low`

Does the work done into the mesh friction heat port differ between the ground frame and a rotating frame?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-14: Checked and null: every sign reversal found in the sweep was located and resolved

Source: opb-epi-01.md

`open` / `numerical` / `supported` / `low`

Do any signed port works reverse sign across the swept domain, and can every reversal be bracketed and resolved above the ports' own numerical estimates?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-15: The exact turn-count identity between frames, and the locked train as the complete zero set

Source: opb-epi-01.md

`open` / `model_realization` / `supported` / `medium`

Does the ground-frame planet turn count exceed the carrier-frame count by exactly the carrier turn count, in exact arithmetic, and what is the complete set of operating points at which every inter-body relative rate vanishes?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-16: The vanishing torque sum is necessary but not sufficient for quasi-static operation

Source: opb-epi-01.md

`open` / `model_realization` / `supported` / `high`

Does the sun, ring and carrier torque sum vanishing certify that the train is operating quasi-statically and that the planet is an idler?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-17: The whole-train moment balance holds only under the meshing constraint

Source: opb-epi-01.md

`open` / `model_realization` / `supported` / `medium`

Does the whole-train moment balance hold for arbitrary tooth counts, or only when the ring count equals the sun count plus twice the planet count?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-18: Pin force invariance holds on the co-rotating basis and fails on frame-fixed axes

Source: opb-epi-01.md

`open` / `physical_port` / `supported` / `medium`

Is the planet pin force frame invariant, and on which basis is the question even well posed?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-19: Methodological record: the Phase 3 quadrature bound was completed after seeing failures

Source: opb-epi-01.md

`open` / `numerical` / `explained` / `high`

Was the declared acceptance bound of the two-frame ledger changed after results were seen, and does that change amount to widening a threshold to make a result pass?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-20: Methodological record: the Phase 4 acceptance bound was tightened after results were seen

Source: opb-epi-01.md

`open` / `numerical` / `explained` / `medium`

Was the lead-out linkage acceptance bound changed after results were seen, in which direction, and what does the removed term still report?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-21: Gear topologies and axis geometries not implemented

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What do the frame-dependence results become for a Ravigneaux set, or for helical, bevel or non-parallel-axis geometry?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-22: Impulsive contact: a rigid mesh with a coefficient of restitution is never modelled

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What happens to the switching ledger when re-engagement is genuinely impulsive rather than a finite-force contact of finite duration?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-23: Backlash and compliance are never tested together with the Euler term, nor in the full train

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `high`

What is the energy balance of a train that has both backlash or compliance and a nonzero carrier angular acceleration, and what is it for backlash in the full train rather than in a reduced single-planet model?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-24: Unequal planet load sharing and a pin couple on the planet are assumed away

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What are the port works when the three planets do not share load equally, or when the pin exerts a couple on the planet?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-25: Dissipation paths outside the declared mesh and readout losses are not modelled

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What do the ledgers become when bearing friction, windage, lubricant churning and a thermal store are present?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-26: Radial motion of the planet centre, the only route to a nonzero Coriolis term, is untested

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What appears in the carrier-frame ledger when the planet centre distance is not constant?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-27: Frames rotating about any axis not parallel to the train axis are untested

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

Do the ledger closure and the port-by-port frame difference results hold for a frame rotating about an axis not parallel to the train axis?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-28: A rate that reverses sign inside an integration interval is untested

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What does the ledger do when a port flow changes sign within an integration interval rather than between sweep points?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-29: Irrational rate ratios and non-integer tooth counts are untested

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `low`

Do the exact kinematic identities survive when the rate ratio is irrational or the tooth counts are not integers?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-30: The coupling transverse force system is statically indeterminate and unresolved

Source: opb-epi-01.md

`open` / `physical_port` / `inconclusive` / `high`

What are the transverse joint forces and bending couples in a double Cardan lead-out, and which ports do they add to the linkage ledger?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-31: Lead-out linkage regimes and devices that were not swept or not dynamically modelled

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

What do the lead-out results become under carrier angular acceleration, with unequal joint angles, and for the ground-referencing device modelled only by its kinematic effect?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-32: Readout quantisation and direction ambiguity are not modelled

Source: opb-epi-01.md

`open` / `measurement` / `inconclusive` / `medium`

What does a real encoder or counter report, given finite resolution and the possibility of an ambiguous direction at a reversal?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-33: The combined lead-out linkage and train ledger is not run

Source: opb-epi-01.md

`open` / `coverage` / `inconclusive` / `medium`

Does a single ledger over the train and its lead-out linkage together close, and what does the shared planet-shaft port carry in it?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-34: No epicyclic frame-dependence result is measured on apparatus

Source: opb-epi-01.md

`open` / `hardware` / `inconclusive` / `high`

Which of the frame-dependence, readout-frame and switching findings would a physical epicyclic rig confirm, and what apparatus, instrumentation and authority would that require?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-35: A recorded closure verdict can flip under a change of arithmetic backend

Source: opb-epi-01.md

`open` / `numerical` / `bounded` / `high`

Is the recorded word in `energy_balance_within_declared_bound` stable under a change of arithmetic backend, given that ten rows of `numerical_sensitivity.csv` sit within 1.6e-10 relative of the acceptance boundary and one of them sits exactly on it?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-EPI-36: The declared-bound and cancellation-floor columns are compared vacuously by the regeneration comparator

Source: opb-epi-01.md

`open` / `numerical` / `explained` / `medium`

Can the regeneration comparator detect any change at all in `declared_quadrature_bound_J`, `boundary_port_flow_cancellation_floor_J` or `endpoint_store_cancellation_floor_J`, given that 10775 of the 20236 committed values in those columns are smaller than its declared absolute tolerance of 1e-12?

Coverage: sec:networks, loaded transformer and frame correspondence. Contextual unless it concerns dynamic analogy, finite loaded readouts, frame stores or missing ports. Pure gear kinematics, tooth counts and their dedicated hardware study are outside derivative-order focus.

## OP-IDP-01: Determine the effective-order and Laurent-closure boundary

Source: opb-idp-01.md

`resolved` / `model_realization` / `bounded` / `medium`

What is the effective-order and Laurent/rational closure boundary, including exact-divisibility exceptions and leading-coefficient zero surfaces?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-02: Certify mirror-lattice identities and support arithmetic

Source: opb-idp-01.md

`resolved` / `model_realization` / `bounded` / `medium`

Which duality, unit, reference, anchor-shift, support and cancellation identities hold for the mirror lattice?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-03: Define the initial-data manifest and construction labels

Source: opb-idp-01.md

`resolved` / `coverage` / `bounded` / `medium`

Can one validated manifest distinguish numerical jets, compatible solutions, realization images and physical preparations without using energy for selection?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-04: Separate operator and initial-map effects in Volume I Chapter 9

Source: opb-idp-01.md

`resolved` / `model_realization` / `bounded` / `medium`

How do operator-compatible manufactured solutions and the three Volume I Chapter 9 initial maps separate operator error from initial-map error?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-BAT-01: Map relaxed battery states into finite initial support

Source: opb-idp-01.md

`resolved` / `identifiability` / `bounded` / `medium`

Does the relaxed battery state have finite shared integer initial support on the declared spectrum paths, and what state freedom remains hidden?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-COL-01: Map collision elimination into the mirror family

Source: opb-idp-01.md

`resolved` / `model_realization` / `bounded` / `medium`

Does the exact collision elimination obey the predicted support and duality maps on independent parameter coordinates?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-EVT-01: Certify event-side transport and order-changing switches

Source: opb-idp-01.md

`resolved` / `physical_port` / `bounded` / `medium`

How must jets and stores be transported across event sides, order changes, reset laws and impulsive limits?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-HIST-01: Realize negative orders as initialized histories

Source: opb-idp-01.md

`resolved` / `model_realization` / `bounded` / `medium`

Which negative-order data require initialized histories, and when does multiplying by a derivative admit spurious polynomial modes?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-LIFT-01: Compare controlled order-raising lifts

Source: opb-idp-01.md

`resolved` / `model_realization` / `bounded` / `medium`

How do the four controlled lifts behave when a row model raises effective differential order?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-PREP-01: Realize finite RF initial-state preparation

Source: opb-idp-01.md

`resolved` / `physical_port` / `bounded` / `medium`

What finite preparation paths, signed port works and endpoint stores realize the selected RF initial states?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-REAL-01: Audit realization images and hidden states

Source: opb-idp-01.md

`resolved` / `identifiability` / `bounded` / `medium`

Which manufactured jets lie in each physical-state image, and which prepared states remain unobservable?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-IDP-ROB-01: Refine cross-domain initial-data robustness

Source: opb-idp-01.md

`numerically_limited` / `numerical` / `bounded` / `medium`

Which conclusions survive the declared parameter, initial-state, event and numerical-refinement controls?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-NUM-IDP-ROB-01: Converge Roadmap 3 Step 12 short RF preparation port-work method disagreement

Source: opb-idp-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Does the Step 12 short RF preparation port-work method disagreement population converge below 0.0002 J without a hidden sign or method disagreement?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-NUM-IDP-ROB-02: Converge Roadmap 3 Step 12 coincident event timing energy-balance residual

Source: opb-idp-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Does the Step 12 coincident event timing energy-balance residual population converge below 0.0002 J without a hidden sign or method disagreement?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-NUM-IDP-ROB-03: Converge Roadmap 3 Step 12 long history-base compatibility residual

Source: opb-idp-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Does the Step 12 long history-base compatibility residual population converge below 2e-07 1 without a hidden sign or method disagreement?

Coverage: sec:initial; sec:histories; sec:reset; sec:limits. Relevant initial-data issue; exact algebra and the remaining physical/preparation limits are separate.

## OP-HW-LR01-01: Validate Step 15 battery sensor requirements in hardware

Source: opb-lr-01.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated battery hardware measurements reproduce the bounded Step 15 normalized-map identifiability and sensor requirements?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR01-01: Identify coalesced and port-hidden battery states

Source: opb-lr-01.md

`resolved` / `identifiability` / `supported` / `medium`

Can a bounded test or proof resolve terminal identifiability of coalesced difference states and independently prepared port-hidden activity?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR01-02: Realize finite battery preparation and reset

Source: opb-lr-01.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve a finite battery preparation and reset circuit?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR01-03: Assign scheduled-cutoff coil energy

Source: opb-lr-01.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve a cutoff topology that assigns the removed coil energy to explicit transfer ports or stores?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR01-04: Bound noisy battery order recovery

Source: opb-lr-01.md

`open` / `identifiability` / `bounded` / `medium`

Can a bounded test or proof resolve order recovery and observability for arbitrary branchwise states and noisy data?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR01-05: Bound broader battery model transfer

Source: opb-lr-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve transfer beyond twelve branches and to continuous spectra, temperature, aging, finite switching, reverse recovery, and hardware?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR01-06: Keep fixed-state and relaxed limits distinct

Source: opb-lr-01.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve the distinction between the nonunique fixed-state and relaxed vanishing limits?

Coverage: sec:battery; sec:initial; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR02-01: Use an adaptive or per-time-constant output mesh and continue sample-coun...

Source: opb-lr-02.md

`open` / `numerical` / `explained` / `high`

Can a bounded test or proof resolve use an adaptive or per-time-constant output mesh and continue sample-count convergence?

Coverage: sec:battery; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR02-02: The coarse uniform cross-check is not adequate across four decades of rel...

Source: opb-lr-02.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the coarse uniform cross-check is not adequate across four decades of relaxation time, and its discrepancy must not be reclassified as physical gain or deficit?

Coverage: sec:battery; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR03-01: The mathematical release closes the declared storage boundary, but every...

Source: opb-lr-03.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve the mathematical release closes the declared storage boundary, but every force-zero row retains an unassigned fracture/acoustic/thermal/fixture destination?

Coverage: eq:release; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR03-02: Criterion choice is constitutive and remains unresolved

Source: opb-lr-03.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve criterion choice is constitutive and remains unresolved?

Coverage: eq:release; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR04-01: Destination and constitutive restitution law remain unidentified

Source: opb-lr-04.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve destination and constitutive restitution law remain unidentified?

Coverage: sec:collision; sec:work; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR04-02: Friction, plasticity, adhesion, thermal/acoustic release, motor ripple, m...

Source: opb-lr-04.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve friction, plasticity, adhesion, thermal/acoustic release, motor ripple, more than two re-engagements, wider gaps/edges/damping and hardware are untested?

Coverage: sec:collision; sec:work; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR05-01: The noncoincidence rejects a one-to-one internal-zero interpretation, but...

Source: opb-lr-05.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the noncoincidence rejects a one-to-one internal-zero interpretation, but no independent component realization is identified?

Coverage: eq:formal-work; sec:parts. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR05-02: The quantity/rate remains a mathematical identity

Source: opb-lr-05.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the quantity/rate remains a mathematical identity?

Coverage: eq:formal-work; sec:parts. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR06-01: Certify order-transition surfaces and nonuniform light/fixed approaches

Source: opb-lr-06.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve certify order-transition surfaces and nonuniform light/fixed approaches?

Coverage: sec:collision; sec:applications; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR06-02: Test noise, orders above four, other contact laws, wider ratios/speeds, m...

Source: opb-lr-06.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test noise, orders above four, other contact laws, wider ratios/speeds, more than two impacts, synchronized measurements and hardware?

Coverage: sec:collision; sec:applications; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR07-01: Refine cubic relaxation output mesh or use adaptive port work states and...

Source: opb-lr-07.md

`open` / `numerical` / `explained` / `high`

Can a bounded test or proof resolve refine cubic relaxation output mesh or use adaptive port work states and continue tolerance/event convergence?

Coverage: sec:collision; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR07-02: These signed numerical residuals are not evidence of physical gain or def...

Source: opb-lr-07.md

`open` / `numerical` / `explained` / `high`

Can a bounded test or proof resolve these signed numerical residuals are not evidence of physical gain or deficit?

Coverage: sec:collision; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-HW-LR08-01: Validate Step 15 collision sensor requirements in hardware

Source: opb-lr-08.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated collision hardware measurements reproduce the bounded Step 15 normalized-map identifiability and sensor requirements?

Coverage: eq:collision-jet; eq:information; sec:collision. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR08-01: Terminal hammer data remain ill-conditioned for assigning contact versus...

Source: opb-lr-08.md

`open` / `identifiability` / `bounded` / `medium`

Can a bounded test or proof resolve terminal hammer data remain ill-conditioned for assigning contact versus boundary coefficients, and added anvil data do not fully resolve the frequency-dependent row?

Coverage: eq:collision-jet; eq:information; sec:collision. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR08-02: Test noise/calibration, more modes, wider bands, other passive rational b...

Source: opb-lr-08.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test noise/calibration, more modes, wider bands, other passive rational boundary models and synchronized hardware?

Coverage: eq:collision-jet; eq:information; sec:collision. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR09-01: Attribute the historical nonreciprocal residual

Source: opb-lr-09.md

`resolved` / `coverage` / `explained` / `medium`

Can a bounded test or proof resolve whether the stated nonreciprocal model assumption accounts for the residual without an unexplained remainder?

Coverage: eq:moving-inductance; eq:transducer-work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR10-01: Resolve the historical comparison mismatch

Source: opb-lr-10.md

`resolved` / `coverage` / `explained` / `medium`

Can a bounded test or proof resolve whether the preserved historical value is a like-for-like discrepancy given the 5.8e-11 A maximum matching error?

Coverage: eq:moving-inductance; eq:error-partition. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR11-01: Finer tolerance is required if more than the documented precision is need...

Source: opb-lr-11.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve finer tolerance is required if more than the documented precision is needed near the event branch?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR11-02: This is retained as numerical sensitivity, not explained away as an equat...

Source: opb-lr-11.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve this is retained as numerical sensitivity, not explained away as an equation identity?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR12-01: Acquire calibrated multi-device VNA traces

Source: opb-lr-12.md

`open` / `hardware` / `inconclusive` / `low`

Can a bounded test or proof resolve acquire calibrated multi-device VNA traces?

Coverage: sec:rf; sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR12-02: Replace empirical frequency-dependent loss with a causal state realization

Source: opb-lr-12.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve replace empirical frequency-dependent loss with a causal state realization?

Coverage: sec:rf; sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR12-03: Require a passive realization before interpreting polynomial-surrogate st...

Source: opb-lr-12.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve require a passive realization before interpreting polynomial-surrogate stores?

Coverage: sec:rf; sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR12-04: The original dimensional shorted-line field/radiation and termination rea...

Source: opb-lr-12.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve the original dimensional shorted-line field/radiation and termination realization remains unaudited?

Coverage: sec:rf; sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR13-01: Continue the high-frequency dispersive near-open corner beyond N=48 and b...

Source: opb-lr-13.md

`open` / `numerical` / `bounded` / `high`

Can a bounded test or proof resolve continue the high-frequency dispersive near-open corner beyond `N=48` and between sampled frequencies/positions?

Coverage: sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR13-02: Resolve the finite 8 s reflection tail by longer-time and mesh continuation

Source: opb-lr-13.md

`open` / `numerical` / `bounded` / `high`

Can a bounded test or proof resolve resolve the finite `8 s` reflection tail by longer-time and mesh continuation?

Coverage: sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR13-03: Implement ideal open/short separately

Source: opb-lr-13.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve implement ideal open/short separately?

Coverage: sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR13-04: Add radiation/exterior-field ports, causal material loss, measured termin...

Source: opb-lr-13.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve add radiation/exterior-field ports, causal material loss, measured terminations, discontinuous edges and hardware?

Coverage: sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR13-05: Do not assign finite-ladder stores to Taylor/A or bare Padé terms

Source: opb-lr-13.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve do not assign finite-ladder stores to Taylor/`A` or bare Padé terms?

Coverage: sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-HW-LR14-01: Validate Step 15 rf sensor requirements in hardware

Source: opb-lr-14.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated rf hardware measurements reproduce the bounded Step 15 normalized-map identifiability and sensor requirements?

Coverage: sec:rf; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR14-01: Measured terminal data cannot identify these internal sums without topolo...

Source: opb-lr-14.md

`resolved` / `identifiability` / `supported` / `medium`

Can a bounded test or proof resolve measured terminal data cannot identify these internal sums without topology or internal probes?

Coverage: sec:rf; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR14-02: Synthesize port-equivalent realizations of the actual BVD and inductor po...

Source: opb-lr-14.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve synthesize port-equivalent realizations of the actual BVD and inductor ports, include nonideal transformer bandwidth/loss and bound stress under component tolerances?

Coverage: sec:rf; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR14-03: The Volume I Chapter 11 generic construction narrows the interpretation but does n...

Source: opb-lr-14.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the Volume I Chapter 11 generic construction narrows the interpretation but does not supply those RF-specific bounds?

Coverage: sec:rf; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR15-01: Synthesize the certified signed-residue positive-real rays as physical pa...

Source: opb-lr-15.md

`open` / `model_realization` / `bounded` / `medium`

Can a bounded test or proof resolve synthesize the certified signed-residue positive-real rays as physical passive RLC networks and map the full correlated signed-residue coefficient region?

Coverage: eq:pr-polynomial; eq:signed-ray. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR15-02: Until then these ports have no assigned component stores or powers

Source: opb-lr-15.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve until then these ports have no assigned component stores or powers?

Coverage: eq:pr-polynomial; eq:signed-ray. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR16-01: Construct and reduce passive RLC realizations for the signed region, dist...

Source: opb-lr-16.md

`open` / `model_realization` / `bounded` / `medium`

Can a bounded test or proof resolve construct and reduce passive RLC realizations for the signed region, distinguish algebraic state dimension from independent physical reactive stores, and certify whether the `N` lower bound is attainable at and inside each boundary?

Coverage: sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR17-01: Derive available/required-storage bounds over all minimal passive realiza...

Source: opb-lr-17.md

`open` / `model_realization` / `bounded` / `medium`

Can a bounded test or proof resolve derive available/required-storage bounds over all minimal passive realizations and bound the resistor-loss partition?

Coverage: eq:storage-inequality; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR17-02: Nonminimal independently prepared hidden stores remain arbitrarily large...

Source: opb-lr-17.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve nonminimal independently prepared hidden stores remain arbitrarily large and are excluded from the zero-state comparison?

Coverage: eq:storage-inequality; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR18-01: Impose nonideal transformer bandwidth, winding resistance, saturation, in...

Source: opb-lr-18.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve impose nonideal transformer bandwidth, winding resistance, saturation, insulation and component-tolerance constraints to obtain finite engineering bounds?

Coverage: eq:transformer-family; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR18-02: A rational terminal port alone supplies none

Source: opb-lr-18.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve a rational terminal port alone supplies none?

Coverage: eq:transformer-family; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR19-01: Perturb atom values independently to separate graph-generic motifs from e...

Source: opb-lr-19.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve perturb atom values independently to separate graph-generic motifs from exact equal-value pole-zero cancellation?

Coverage: eq:grammar; eq:descriptor. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR19-02: Bridge and other non-series-parallel graphs, transformer/gyrator coupling...

Source: opb-lr-19.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve bridge and other non-series-parallel graphs, transformer/gyrator coupling, multi-store atoms and more than six stores remain untested?

Coverage: eq:grammar; eq:descriptor. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR20-01: Materialize the full joint placement sweep on the other 2,006 graph class...

Source: opb-lr-20.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve materialize the full joint placement sweep on the other 2,006 graph classes, repeat with generic unequal components and grounded common-mode ports, and test bridge, feedback, transformer and gyrator motifs?

Coverage: sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR20-02: Normalized readout cancellation must not be interpreted as absence of an...

Source: opb-lr-20.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve normalized readout cancellation must not be interpreted as absence of an internal state?

Coverage: sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR21-01: Enumerate other nondimensional coscalings and regularize incompatible pre...

Source: opb-lr-21.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve enumerate other nondimensional coscalings and regularize incompatible prepared states to determine impulse work, endpoint stores, physical absolute sums and `r_E`?

Coverage: sec:passive; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR21-02: The present zero-state smooth transient does not resolve path-dependent s...

Source: opb-lr-21.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve the present zero-state smooth transient does not resolve path-dependent switching work?

Coverage: sec:passive; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR22-01: Construct reciprocity- and passivity-constrained matrix fits, determine w...

Source: opb-lr-22.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve construct reciprocity- and passivity-constrained matrix fits, determine which observables transfer together, and test calibrated two-port measurements?

Coverage: eq:abcd; eq:transfers. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR22-02: A small error in one transfer quantity does not validate the other two

Source: opb-lr-22.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve a small error in one transfer quantity does not validate the other two?

Coverage: eq:abcd; eq:transfers. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR23-01: Bound hidden prepared energy from terminal uncertainty and test multiple...

Source: opb-lr-23.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve bound hidden prepared energy from terminal uncertainty and test multiple nearly cancelled modes, nonideal transformers and noisy observations?

Coverage: eq:hidden-rc; eq:hidden-discharge. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR23-02: Exact port cancellation does not establish absence of an internal prepare...

Source: opb-lr-23.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve exact port cancellation does not establish absence of an internal prepared mode?

Coverage: eq:hidden-rc; eq:hidden-discharge. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR24-01: Prohibit unguarded transient use

Source: opb-lr-24.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve prohibit unguarded transient use?

Coverage: sec:rf; eq:error-partition. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR24-02: Fit stable/passive rational states rather than polynomial impedance, cert...

Source: opb-lr-24.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve fit stable/passive rational states rather than polynomial impedance, certify a finite active band, and repeat with explicit preparation switches and broadband inputs?

Coverage: sec:rf; eq:error-partition. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR25-01: Realize finite-time charging/energizing and source-clamp circuits, integr...

Source: opb-lr-25.md

`open` / `physical_port` / `bounded` / `high`

Can a bounded test or proof resolve realize finite-time charging/energizing and source-clamp circuits, integrate their source/loss/switch ports and any regularized impulse, and test sensitivity to clamp time and prehistory?

Coverage: eq:preparation; sec:initial. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR26-01: Vary inertia and contact groups independently and determine which observa...

Source: opb-lr-26.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve vary inertia and contact groups independently and determine which observables require the two unrepresented coordinates?

Coverage: sec:family; eq:collision-groups. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR26-02: The count permits dependence but does not prove that every coefficient us...

Source: opb-lr-26.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the count permits dependence but does not prove that every coefficient uses every group?

Coverage: sec:family; eq:collision-groups. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR27-01: The failure is explained by the independent eta coordinate, but it falsif...

Source: opb-lr-27.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the failure is explained by the independent `eta` coordinate, but it falsifies a `rho`-only collapse for the full collision coefficients?

Coverage: sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR27-02: Other fixed-rho values and the two unrepresented collision Pi groups rema...

Source: opb-lr-27.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve other fixed-`rho` values and the two unrepresented collision Pi groups remain untested?

Coverage: sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR28-01: Extend the geometric path or use certified asymptotic bounds until the fi...

Source: opb-lr-28.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve extend the geometric path or use certified asymptotic bounds until the finite-window slope estimate converges?

Coverage: eq:hankel; sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR28-02: The present result does not require a non-integer exponent, but the non-i...

Source: opb-lr-28.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the present result does not require a non-integer exponent, but the non-integer endpoint estimate is retained rather than rounded?

Coverage: eq:hankel; sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR29-01: Rerun the full five-order selector with dual-transported or dual-closed c...

Source: opb-lr-29.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve rerun the full five-order selector with dual-transported or dual-closed candidate labels and separate physical relabelling from a fixed-label reference substitution?

Coverage: eq:lattice-dual; sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR29-02: The current mismatch is preserved even though Volume I Chapter 8 intentionally sel...

Source: opb-lr-29.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the current mismatch is preserved even though Volume I Chapter 8 intentionally selected by power rather than exact coefficient error?

Coverage: eq:lattice-dual; sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR30-01: Expand the physical condition manifold and acquire calibrated repetitions

Source: opb-lr-30.md

`open` / `hardware` / `inconclusive` / `low`

Can a bounded test or proof resolve expand the physical condition manifold and acquire calibrated repetitions?

Coverage: sec:identification; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR30-02: The present support is not stable enough to interpret as a physical absen...

Source: opb-lr-30.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the present support is not stable enough to interpret as a physical absence, and a full split-by-noise Cartesian product remains untested?

Coverage: sec:identification; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-HW-LR31-01: Validate Step 15 row sensor requirements in hardware

Source: opb-lr-31.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated row hardware measurements reproduce the bounded Step 15 normalized-map identifiability and sensor requirements?

Coverage: eq:information; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR31-01: Vary multiple independent physical coordinates and correlated/colored unc...

Source: opb-lr-31.md

`open` / `identifiability` / `bounded` / `medium`

Can a bounded test or proof resolve vary multiple independent physical coordinates and correlated/colored uncertainty?

Coverage: eq:information; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR31-02: Numerical rank three does not make the small row practically identifiable...

Source: opb-lr-31.md

`open` / `identifiability` / `bounded` / `medium`

Can a bounded test or proof resolve numerical rank three does not make the small row practically identifiable, and the full error covariance of a real fixture is unknown?

Coverage: eq:information; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR32-01: Add trigger-offset, colored sensor noise, nonlinear contact and calibrate...

Source: opb-lr-32.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve add trigger-offset, colored sensor noise, nonlinear contact and calibrated anti-alias models?

Coverage: eq:collision-jet; eq:lift-amplitude. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR32-02: Stability of the coefficients does not bound the trajectory error caused...

Source: opb-lr-32.md

`resolved` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve stability of the coefficients does not bound the trajectory error caused by a corrupted higher initial derivative?

Coverage: eq:collision-jet; eq:lift-amplitude. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR33-01: Conclusions must remain labelled by objective, normalization and sampled...

Source: opb-lr-33.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve conclusions must remain labelled by objective, normalization and sampled operator?

Coverage: sec:identification; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR33-02: Jointly cross split, noise, phase, fixture, estimator and threshold block...

Source: opb-lr-33.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve jointly cross split, noise, phase, fixture, estimator and threshold blocks, and test against real synchronized traces?

Coverage: sec:identification; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR34-01: Certify general multi-row root surfaces, repeated roots and crossings out...

Source: opb-lr-34.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve certify general multi-row root surfaces, repeated roots and crossings outside this cubic control?

Coverage: eq:lift; sec:work; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR34-02: Every tested unstable root is retained in rootboundarycontinuation.csv, b...

Source: opb-lr-34.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve every tested unstable root is retained in `root_boundary_continuation.csv`, but arbitrary six-term combinations are not covered?

Coverage: eq:lift; sec:work; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR35-01: Refine interval endpoints with certified real-part roots, apply a full po...

Source: opb-lr-35.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve refine interval endpoints with certified real-part roots, apply a full pole-relocating vector fit with passivity enforcement, and test the right-half-plane interior?

Coverage: sec:rf; sec:passive; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR35-02: The present unconstrained candidates must not receive passive physical st...

Source: opb-lr-35.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the present unconstrained candidates must not receive passive physical stores?

Coverage: sec:rf; sec:passive; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR36-01: Establish which lossless synthesis or dispersion assumptions make Foster...

Source: opb-lr-36.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve establish which lossless synthesis or dispersion assumptions make Foster monotonicity an appropriate requirement for each damped port?

Coverage: sec:rf; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR36-02: A negative slope is preserved but is not by itself a positive-real, work...

Source: opb-lr-36.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve a negative slope is preserved but is not by itself a positive-real, work or energy failure?

Coverage: sec:rf; sec:passive. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR37-01: Model physical preparation and reset ports for any proposed realization...

Source: opb-lr-37.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve model physical preparation and reset ports for any proposed realization, test sensitivity to preparation length and history uncertainty, and do not infer a DC response or stored energy from `(j omega)^k` alone?

Coverage: sec:histories; sec:initial. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR38-01: Intermediate rho, other real r, other signed six-term combinations, value...

Source: opb-lr-38.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve intermediate `rho`, other real `r`, other signed six-term combinations, values outside `x=1e-6..1e6`, extended-precision repeats and the full right-half-plane positive-real domain remain untested?

Coverage: sec:array; eq:conditioning; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR38-02: The extreme finite dynamic range is not a conditioning certificate

Source: opb-lr-38.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the extreme finite dynamic range is not a conditioning certificate?

Coverage: sec:array; eq:conditioning; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR39-01: Rerun selection with transported or dual-closed (r,s) windows and a fully...

Source: opb-lr-39.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve rerun selection with transported or dual-closed `(r,s)` windows and a fully mapped topology/port dataset?

Coverage: eq:reference; sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR39-02: No failure of physical analogy is claimed from candidate-set non-closure...

Source: opb-lr-39.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve no failure of physical analogy is claimed from candidate-set non-closure alone?

Coverage: eq:reference; sec:identification. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-01: Certify Q1--Q3 offset brackets

Source: opb-lr-40.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve outward certification of the numerical Q1--Q3 offset brackets?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-02: Extend Q1--Q3 load-phase coverage

Source: opb-lr-40.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve Q1--Q3 transfer to the retained passive and active load-phase regions?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-03: Extend Q1--Q3 initial-state coverage

Source: opb-lr-40.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve Q1--Q3 transfer beyond the strength-two initial-state design and retained magnitude bounds?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-04: Resolve Q1--Q3 exact DAE boundaries

Source: opb-lr-40.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the r=0, k=1, and exact open/short DAE boundaries?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-05: Continue Q1--Q3 surfaces and folds

Source: opb-lr-40.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve surface continuation away from r=19, disappearing surfaces, and untraced folds?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-06: Refine the signed Q3 stiff-edge residual

Source: opb-lr-40.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve the signed Q3 -7.94e-10 J stiff-edge residual?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-07: Refine the signed legacy branch residual

Source: opb-lr-40.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve the signed legacy +3.07e-6 J branch residual?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR40-08: Test Q1--Q3 load and state interactions

Source: opb-lr-40.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve Q1--Q3 load-phase and initial-state interactions?

Coverage: eq:coupled-halfcycle; eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR41-01: Step-11 threshold enclosures themselves, the continuous regions r<=1.01...

Source: opb-lr-41.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve Step-11 threshold enclosures themselves, the continuous regions `r<=1.01`, `r>20`, `k>0.99`, regions between the discrete Step-13 ratios/states, terminal continuation slivers, tangent/multiple roots and any untraced physical folds remain unresolved?

Coverage: eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR41-02: K=1 is an inconsistent exact DAE for the canonical state rather than a ce...

Source: opb-lr-41.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve `k=1` is an inconsistent exact DAE for the canonical state rather than a certified finite-ODE boundary?

Coverage: eq:crossing-boundaries; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR42-01: Model explicit physical preparation and reset ports for the circulating c...

Source: opb-lr-42.md

`resolved` / `physical_port` / `supported` / `high`

Can a bounded test or proof resolve model explicit physical preparation and reset ports for the circulating common-mode current, and extend admissible physical preparations—not arbitrary observer translations—to Q2 and Q3?

Coverage: sec:networks; eq:preparation. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR42-02: Their preparation-energy ranges and word changes remain untested

Source: opb-lr-42.md

`open` / `physical_port` / `inconclusive` / `high`

Can a bounded test or proof resolve their preparation-energy ranges and word changes remain untested?

Coverage: sec:networks; eq:preparation. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR43-01: Step 15 names the physical-winding Astate sensor and proves terminal nono...

Source: opb-lr-43.md

`open` / `identifiability` / `inconclusive` / `medium`

Can a bounded test or proof resolve Step 15 names the physical-winding `A_state` sensor and proves terminal nonobservability for one two-branch control, but finite transformer/gyrator bandwidth, loss, saturation and calibration remain open?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR43-02: Raw equal-weight Astate must not be promoted as representation invariant

Source: opb-lr-43.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve raw equal-weight `A_state` must not be promoted as representation invariant?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR44-01: Validate simultaneous branch probes in hardware

Source: opb-lr-44.md

`open` / `hardware` / `inconclusive` / `low`

Can a bounded test or proof resolve a branch-probe hardware protocol covering initial-flux references, calibration drift, correlation, saturation, and non-Gaussian noise?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR44-02: Cover omitted Volume II Chapter 3 settings and waveforms

Source: opb-lr-44.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the 58,004 omitted simultaneous interior-sensor settings and external waveforms?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR44-03: Bound Volume II Chapter 3 terminal identifiability

Source: opb-lr-44.md

`open` / `identifiability` / `inconclusive` / `medium`

Can a bounded test or proof resolve terminal identifiability of internal A_state and component rating without topology or probes?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR44-04: Realize surveyed Volume II Chapter 3 spatial geometry

Source: opb-lr-44.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve a spatial realization with surveyed windings, conductors, and magnetic materials instead of one finite-core dipole radius?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR44-05: Continue Volume II Chapter 3 finite-domain meshes

Source: opb-lr-44.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve continuation beyond R/a=12 with local or adaptive meshes and core-radius and exterior geometry or orientation grids?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR44-06: Resolve retained Volume II Chapter 3 finite-domain residuals

Source: opb-lr-44.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve the signed 1.98855e-6 J outer-shell increment and retained numerical and model residuals as finite-domain or model uncertainties?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR45-01: No tested winding number survives all declared transforms

Source: opb-lr-45.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve no tested winding number survives all declared transforms?

Coverage: sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR45-02: Investigate closed cycles avoiding the reference and homotopy classes onl...

Source: opb-lr-45.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve investigate closed cycles avoiding the reference and homotopy classes only if a physical frame/orientation is fixed?

Coverage: sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR45-03: The orthant word remains event data but is itself frame/modal dependent

Source: opb-lr-45.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the orthant word remains event data but is itself frame/modal dependent?

Coverage: sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR46-01: Require machine-readable orientation maps at every topology and sensor bo...

Source: opb-lr-46.md

`open` / `measurement` / `inconclusive` / `medium`

Can a bounded test or proof resolve require machine-readable orientation maps at every topology and sensor boundary?

Coverage: sec:networks; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR46-02: Extend the control to mutual, polyphase and spatial field graphs where a...

Source: opb-lr-46.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve extend the control to mutual, polyphase and spatial field graphs where a fixed label can create higher-rank false residuals?

Coverage: sec:networks; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR47-01: Derive incidence matrices from the full winding/switch/arc/clamp netlist...

Source: opb-lr-47.md

`resolved` / `model_realization` / `supported` / `medium`

Can a bounded test or proof resolve derive incidence matrices from the full winding/switch/arc/clamp netlist rather than either declared reduced snapshot?

Coverage: sec:networks; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR47-02: Include arc ignition/restrike and clamp release graphs and state projections

Source: opb-lr-47.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve include arc ignition/restrike and clamp release graphs and state projections?

Coverage: sec:networks; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR47-03: Do not pair voltages and currents from different graph sides without a pr...

Source: opb-lr-47.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve do not pair voltages and currents from different graph sides without a proved common refinement?

Coverage: sec:networks; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR48-01: The port partitions and Q7 release work are demonstrably edge-shape depen...

Source: opb-lr-48.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve the port partitions and Q7 release work are demonstrably edge-shape dependent?

Coverage: eq:clamp-state; eq:clamp-work; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR48-02: No unique instantaneous partition is claimed

Source: opb-lr-48.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve no unique instantaneous partition is claimed?

Coverage: eq:clamp-state; eq:clamp-work; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR48-03: Measured switch/gap laws, arc ignition/restrike, clamp release, winding c...

Source: opb-lr-48.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve measured switch/gap laws, arc ignition/restrike, clamp release, winding capacitance and the full release netlist are missing?

Coverage: eq:clamp-state; eq:clamp-work; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR48-04: Exact-degenerate inconsistent states require a named parasitic path

Source: opb-lr-48.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve exact-degenerate inconsistent states require a named parasitic path?

Coverage: eq:clamp-state; eq:clamp-work; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR48-05: Cp=0, tau=0, other coupling orientations, continuous limiting-ratio surfa...

Source: opb-lr-48.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve `C_p=0`, `tau=0`, other coupling orientations, continuous limiting-ratio surfaces and ratios outside `10^-3..10^3` remain untested?

Coverage: eq:clamp-state; eq:clamp-work; sec:reset. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR49-01: The trajectories, sampled derating and resets are controlled finite model...

Source: opb-lr-49.md

`open` / `physical_port` / `inconclusive` / `high`

Can a bounded test or proof resolve the trajectories, sampled derating and resets are controlled finite models, not autonomous hardware paths?

Coverage: sec:driven; sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR49-02: Missing source/switch/converter/battery/arc laws and Questions 2–6 prepar...

Source: opb-lr-49.md

`open` / `physical_port` / `bounded` / `high`

Can a bounded test or proof resolve missing source/switch/converter/battery/arc laws and Questions 2–6 preparation/reset paths remain open?

Coverage: sec:driven; sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR49-03: Resolve the 72 near-neutral rows and continue runaway/self-limiting bound...

Source: opb-lr-49.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve resolve the 72 near-neutral rows and continue runaway/self-limiting boundaries below `G/G_0=0.02`, above `2` and between samples?

Coverage: sec:driven; sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR49-04: Test alpha, ambient, nonlinear resistance/radiation and intra-cycle contr...

Source: opb-lr-49.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test `alpha`, ambient, nonlinear resistance/radiation and intra-cycle control outside the grid?

Coverage: sec:driven; sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR49-05: All tested deratings stay above the two Astate=Astate,0 root-loss bracket...

Source: opb-lr-49.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve all tested deratings stay above the two `A_state=A_state,0` root-loss brackets, so crossing loss remains outside the tested fixed-point region?

Coverage: sec:driven; sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR50-01: Add a damped rho>0 collision/circuit pair and transport preparation, rela...

Source: opb-lr-50.md

`open` / `physical_port` / `inconclusive` / `high`

Can a bounded test or proof resolve add a damped `rho>0` collision/circuit pair and transport preparation, relaxation and reset ports?

Coverage: sec:family; eq:canonical-pair. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR50-02: Verify rho->1/rho and finite taus away from the lossless boundary before...

Source: opb-lr-50.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve verify `rho->1/rho` and finite `tau*s` away from the lossless boundary before generalizing the regression?

Coverage: sec:family; eq:canonical-pair. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR51-01: The counterexamples resolve only the wider factor-three claim, not a univ...

Source: opb-lr-51.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the counterexamples resolve only the wider factor-three claim, not a universal `N`-state maximum?

Coverage: eq:graph; eq:ellipsoid; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR51-02: N>12, disconnected, bridge/multigraph/polyphase/driven/feedback topologie...

Source: opb-lr-51.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve `N>12`, disconnected, bridge/multigraph/polyphase/driven/feedback topologies, other ratio patterns, mutual coupling, nonuniform stiffness/damping, initial gaps, preparation/reset and hardware remain untested?

Coverage: eq:graph; eq:ellipsoid; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR51-03: Dense/nonminimal eliminations have not been reduced to topology-minimal s...

Source: opb-lr-51.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve dense/nonminimal eliminations have not been reduced to topology-minimal scalar laws?

Coverage: eq:graph; eq:ellipsoid; sec:networks. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-HW-LR52-01: Validate Step 15 polyphase sensor requirements in hardware

Source: opb-lr-52.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated polyphase hardware measurements reproduce the bounded Step 15 normalized-map identifiability and sensor requirements?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR52-01: Terminal observations do not identify internal common/differential or par...

Source: opb-lr-52.md

`resolved` / `identifiability` / `supported` / `medium`

Can a bounded test or proof resolve terminal observations do not identify internal common/differential or parasitic branch sums without calibrated physical branch sensors?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR52-02: Raw coordinate stress sums are not component ratings

Source: opb-lr-52.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve raw coordinate stress sums are not component ratings?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR52-03: No tested passive parasitic reduction preserves physical internal Astate

Source: opb-lr-52.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve no tested passive parasitic reduction preserves physical internal `A_state`?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR52-04: Test phase counts outside 3,4,6, imbalance outside the declared grid, int...

Source: opb-lr-52.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test phase counts outside `3,4,6`, imbalance outside the declared grid, interharmonics/noncommensurate mixtures, harmonic orders outside `1,3,5,7`, alternative port placements, frequencies between/outside named bands, nonlinear/saturating/asymmetric parasitics, active control and hardware?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR53-01: Regularize finite contact duration and integrate contact power

Source: opb-lr-53.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve regularize finite contact duration and integrate contact power?

Coverage: eq:rigid-map; eq:effective-mass; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR53-02: Test friction, restitution below one and its heat/deformation port, simul...

Source: opb-lr-53.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test friction, restitution below one and its heat/deformation port, simultaneous/multiple contacts, deformable bodies, other mass/speed/angle ranges, fixtures, sensor bandwidth and hardware?

Coverage: eq:rigid-map; eq:effective-mass; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR53-03: Frame-dependent kinetic stores and raw coordinate stress must not be mist...

Source: opb-lr-53.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve frame-dependent kinetic stores and raw coordinate stress must not be mistaken for externally transferred work or invariant component load?

Coverage: eq:rigid-map; eq:effective-mass; sec:work. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR54-01: Event-split/adaptive contact-power and graph-cut quadrature are still req...

Source: opb-lr-54.md

`open` / `numerical` / `explained` / `high`

Can a bounded test or proof resolve event-split/adaptive contact-power and graph-cut quadrature are still required?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR54-02: Initially touching far-edge activations can remain coincident with a samp...

Source: opb-lr-54.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve initially touching far-edge activations can remain coincident with a sampled bracket?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR54-03: The rigid-impact limit, nonzero initial gaps, restitution/plasticity, fix...

Source: opb-lr-54.md

`open` / `physical_port` / `inconclusive` / `high`

Can a bounded test or proof resolve the rigid-impact limit, nonzero initial gaps, restitution/plasticity, fixture/contact impulses, branched contacts, actuator ports and hardware measurements remain unmodelled?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR54-04: The switched contact graph has no single global scalar elimination

Source: opb-lr-54.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the switched contact graph has no single global scalar elimination?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR54-01: Converge the 82 unilateral-contact quadrature warnings

Source: opb-lr-54.md

`resolved` / `numerical` / `explained` / `high`

Do event-split contact-power and graph-cut impulse quadrature discrepancies converge below the declared threshold on the exact affected rows?

Coverage: sec:networks; sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR55-01: Useful bands do not imply global transfer and terminal matching does not...

Source: opb-lr-55.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve useful bands do not imply global transfer and terminal matching does not identify realization states or stores?

Coverage: eq:driven-modes; eq:counterflow-duty; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR55-02: Settling-tail and signed common leakage require tolerance/time-window con...

Source: opb-lr-55.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve settling-tail and signed common leakage require tolerance/time-window continuation?

Coverage: eq:driven-modes; eq:counterflow-duty; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR55-03: Test exact k=+/-1, DC/infinite-frequency and open-load boundaries, unequa...

Source: opb-lr-55.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test exact `k=+/-1`, DC/infinite-frequency and open-load boundaries, unequal/nonreciprocal winding parameters, other bases and orders above six, nonlinear saturation/hysteresis, finite switching slew, noncommensurate and other broadband waveforms, feedback, sensor noise and hardware?

Coverage: eq:driven-modes; eq:counterflow-duty; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR55-01: Converge the 887 driven-CRL physical-audit warnings

Source: opb-lr-55.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Do driven-CRL physical settling and measurement work integration discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:driven-modes; eq:counterflow-duty; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR55-02: Converge the 791 driven-CRL surrogate-audit warnings

Source: opb-lr-55.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Do driven-CRL surrogate settling work integration discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:driven-modes; eq:counterflow-duty; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR56-01: The earlier non-sinusoidal/multitone/stochastic drive exclusion is narrow...

Source: opb-lr-56.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the earlier `non-sinusoidal/multitone/stochastic drive` exclusion is narrowed only to the four declared finite waveform families?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR56-02: The coordinate bursts are explained by the declared metric but require ha...

Source: opb-lr-56.md

`open` / `identifiability` / `inconclusive` / `medium`

Can a bounded test or proof resolve the coordinate bursts are explained by the declared metric but require hardware-coordinate/store identification before physical interpretation?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR56-03: Correlated fitted-normal p values are descriptive and the finite-mode nul...

Source: opb-lr-56.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve correlated fitted-normal `p` values are descriptive and the finite-mode null departures remain unresolved?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR56-04: Continue sample rate and quadrature, window length, mode count/band, inde...

Source: opb-lr-56.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve continue sample rate and quadrature, window length, mode count/band, independent path count and non-Gaussian/colored drives?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR56-05: Test coincident eigenvectors, pole coalescence, infinite conditioning, re...

Source: opb-lr-56.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test coincident eigenvectors, pole coalescence, infinite conditioning, relaxation beyond 6 s, nonlinear/time-varying plants, feedback and hardware?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR56-01: Converge the 1,455 stochastic operation port-quadrature warnings

Source: opb-lr-56.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Do stochastic-CRL operation port quadrature discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR56-02: Converge the 520 stochastic operation energy-balance warnings

Source: opb-lr-56.md

`resolved` / `numerical` / `explained` / `high`

Do stochastic-CRL operation endpoint energy balance discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR56-03: Converge the 72 stochastic relaxation port-quadrature warnings

Source: opb-lr-56.md

`resolved` / `numerical` / `explained` / `high`

Do stochastic-CRL relaxation port quadrature discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR56-04: Converge the 72 stochastic relaxation energy-balance warnings

Source: opb-lr-56.md

`resolved` / `numerical` / `explained` / `high`

Do stochastic-CRL relaxation endpoint energy balance discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:nonnormal; eq:rice; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-01: Identify the nonlinear material law

Source: opb-lr-57.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve material identification using measured thermodynamically admissible hysteresis models and longer periodic settling?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-02: Continue parametric Floquet boundaries

Source: opb-lr-57.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve Floquet-tongue continuation over phase, depth, frequency, and separate negative and zero parameter boundaries?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-03: Refine active-supply quadratures

Source: opb-lr-57.md

`open` / `numerical` / `inconclusive` / `high`

Can a bounded test or proof resolve convergence of the fourteen active-supply relaxation quadratures?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-04: Construct feedback-aware passive reduction

Source: opb-lr-57.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a bounded test or proof resolve a feedback-aware passive reduction selected without work or energy?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-05: Extend feedback-delay coverage

Source: opb-lr-57.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve feedback behavior for delays above 0.08 s?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-06: Bound broader controller transfer

Source: opb-lr-57.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve nonlinear-observer uncertainty and MIMO or adaptive control?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR57-07: Realize thermal and sensor ports

Source: opb-lr-57.md

`open` / `physical_port` / `bounded` / `high`

Can a bounded test or proof resolve explicit thermal and sensor ports and hardware validation?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR57-01: Converge the 14 feedback controller-supply quadrature warnings

Source: opb-lr-57.md

`resolved` / `numerical` / `explained` / `high`

Do feedback controller-supply and controller-loss relaxation quadrature discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:material; eq:parametric; sec:driven. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-HW-LR58-01: Validate Step 15 absorber sensor requirements in hardware

Source: opb-lr-58.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated absorber hardware measurements reproduce the bounded Step 15 normalized-map identifiability and sensor requirements?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR58-01: Terminal reaction cannot identify internal coupling stress

Source: opb-lr-58.md

`resolved` / `identifiability` / `supported` / `medium`

Can a bounded test or proof resolve terminal reaction cannot identify internal coupling stress?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR58-02: Extend internal sensors and hardware

Source: opb-lr-58.md

`open` / `identifiability` / `bounded` / `medium`

Can a bounded test or proof resolve extend internal sensors and hardware?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR58-03: Continue fit structures and disjoint bands

Source: opb-lr-58.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve continue fit structures and disjoint bands?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR58-04: Resolve the nonuniform zero-mass/zero-damping resonance analytically and...

Source: opb-lr-58.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve resolve the nonuniform zero-mass/zero-damping resonance analytically and test other co-scalings?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR58-05: Increase settling duration and long-interval quadrature density

Source: opb-lr-58.md

`open` / `numerical` / `bounded` / `high`

Can a bounded test or proof resolve increase settling duration and long-interval quadrature density?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR58-06: Test mass/tuning/damping/coupling outside the declared grid, nonlinear/co...

Source: opb-lr-58.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test mass/tuning/damping/coupling outside the declared grid, nonlinear/contact absorbers, base acceleration constraints and nonideal switching?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR58-01: Converge the 92 tuned-absorber settling-quadrature failures

Source: opb-lr-58.md

`resolved` / `numerical` / `explained` / `high`

Do tuned-absorber finite-window settling quadrature discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:absorber-state; eq:absorber-singular; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR59-01: The 66 unstable and 474 nonpassive controls are deliberately incomplete m...

Source: opb-lr-59.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the 66 unstable and 474 nonpassive controls are deliberately incomplete models, not passive transducers?

Coverage: eq:transducer-cubic; eq:transducer-work; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR59-02: The explicit controller closes the tested positive-store boundary but its...

Source: opb-lr-59.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve the explicit controller closes the tested positive-store boundary but its physical bias/supply realization is unidentified?

Coverage: eq:transducer-cubic; eq:transducer-work; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR59-03: Continue unstable-prefix precision with relative as well as absolute tole...

Source: opb-lr-59.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve continue unstable-prefix precision with relative as well as absolute tolerances, do not extrapolate it to steady state, and test effective coupling outside `0.1..0.9`, `Q` outside `2..10`, other loads and `m/L`, bias dynamics, nonlinear saturation/hysteresis, thermal ports, finite switching, feedback, multi-axis transducers, calibrated cross-domain sensors and hardware?

Coverage: eq:transducer-cubic; eq:transducer-work; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR59-01: Converge the four unstable-transducer finite-prefix audit failures

Source: opb-lr-59.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Do unstable-transducer finite-prefix solver, quadrature, model, and energy audit discrepancies converge below the declared threshold on the exact affected rows?

Coverage: eq:transducer-cubic; eq:transducer-work; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-NUM-LR59-02: Converge the Step 13 finite transducer supply ledgers

Source: opb-lr-59.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Do the Step 13 thermal endpoint solver, Simpson–GK quadrature, interval r_E, and integrated DC-link subledger discrepancies converge below their frozen gates?

Coverage: eq:transducer-cubic; eq:transducer-work; sec:applications. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR60-01: The principal finite-band approximation does not certify nonprincipal pat...

Source: opb-lr-60.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve the principal finite-band approximation does not certify nonprincipal paths or an infinite-order limit?

Coverage: eq:fractional; sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR60-02: Explain the 28 nonmonotone order continuations, extend quadrature/order/b...

Source: opb-lr-60.md

`open` / `numerical` / `bounded` / `high`

Can a bounded test or proof resolve explain the 28 nonmonotone order continuations, extend quadrature/order/band placement, use certified positive-real approximation bounds, test measured dispersive materials and hardware, and never assign the finite Foster stores to the bare fractional or Taylor expressions?

Coverage: eq:fractional; sec:distributed. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR61-01: No finite family is a uniform infinite-band delay and arbitrary history h...

Source: opb-lr-61.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve no finite family is a uniform infinite-band delay and arbitrary history has no certified unique Taylor/Padé/line state map?

Coverage: eq:delay-roots; eq:pade-delay; sec:histories. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR61-02: Continue order and bandwidth, histories beyond 4T, gains through and beyo...

Source: opb-lr-61.md

`open` / `coverage` / `bounded` / `medium`

Can a bounded test or proof resolve continue order and bandwidth, histories beyond `4T`, gains through and beyond `abs(g)=1`, prepared line fields, exterior/radiation ports, discontinuous terminations, measured delay hardware and exact stability boundaries?

Coverage: eq:delay-roots; eq:pade-delay; sec:histories. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR61-03: No store belongs to the bare delay, Taylor or Padé expression

Source: opb-lr-61.md

`resolved` / `coverage` / `supported` / `medium`

Can a bounded test or proof resolve no store belongs to the bare delay, Taylor or Padé expression?

Coverage: eq:delay-roots; eq:pade-delay; sec:histories. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR62-01: All five cases share a reduced two-store flow template and therefore do n...

Source: opb-lr-62.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve all five cases share a reduced two-store flow template and therefore do not revalidate their full chapter plants?

Coverage: sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR62-02: The 20 tested vertices are not the full 512-vertex or a certified continu...

Source: opb-lr-62.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve the 20 tested vertices are not the full 512-vertex or a certified continuous enclosure?

Coverage: sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR62-03: Test full-factorial/adversarial corners, tail-focused measures, component...

Source: opb-lr-62.md

`open` / `coverage` / `inconclusive` / `medium`

Can a bounded test or proof resolve test full-factorial/adversarial corners, tail-focused measures, component-temperature-aging and geometry/material joint laws, nonlinear switching/contact/saturation, correlated preparation states, hardware-derived distributions and cross-domain calibration data?

Coverage: sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR63-01: Polarity prior and threshold are illustrative rather than hardware-identi...

Source: opb-lr-63.md

`open` / `measurement` / `inconclusive` / `medium`

Can a bounded test or proof resolve polarity prior and threshold are illustrative rather than hardware-identified?

Coverage: sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-LR63-02: Test channel-specific polarity faults, correlated gain/phase and timing e...

Source: opb-lr-63.md

`open` / `measurement` / `inconclusive` / `medium`

Can a bounded test or proof resolve test channel-specific polarity faults, correlated gain/phase and timing error, bandwidth/noise/quantization, multi-port placement covariance, store-sensor calibration, Bayesian or certified measurement intervals and synchronized hardware?

Coverage: sec:limits. Relevant; retained as an exact result with stated scope or an unresolved limitation. Numerical child questions become symbolic consistency/uncertainty questions, with no numerical output asserted.

## OP-REG-BACKFILL-01: Machine-written not_evaluated closure outcomes need provenance audit

Source: opb-migration-01.md

`resolved` / `coverage` / `supported` / `high`

Which frozen active closure.outcome=not_evaluated labels are truly unrun under their current protocol, and which are stale backfill defaults that disagree with their own evidence or required outputs?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR01-01: Recover source provenance for legacy row 01

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 01 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR02-01: Recover source provenance for legacy row 02

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 02 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR03-01: Recover source provenance for legacy row 03

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 03 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR04-01: Recover source provenance for legacy row 04

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 04 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR05-01: Recover source provenance for legacy row 05

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 05 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR06-01: Recover source provenance for legacy row 06

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 06 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR07-01: Recover source provenance for legacy row 07

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 07 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR08-01: Recover source provenance for legacy row 08

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 08 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR09-01: Recover source provenance for legacy row 09

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 09 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR10-01: Recover source provenance for legacy row 10

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 10 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR11-01: Recover source provenance for legacy row 11

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 11 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR12-01: Recover source provenance for legacy row 12

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 12 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR13-01: Recover source provenance for legacy row 13

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 13 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR14-01: Recover source provenance for legacy row 14

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 14 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR15-01: Recover source provenance for legacy row 15

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 15 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR16-01: Recover source provenance for legacy row 16

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 16 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR17-01: Recover source provenance for legacy row 17

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 17 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR18-01: Recover source provenance for legacy row 18

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 18 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR19-01: Recover source provenance for legacy row 19

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 19 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR20-01: Recover source provenance for legacy row 20

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 20 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR21-01: Recover source provenance for legacy row 21

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 21 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR22-01: Recover source provenance for legacy row 22

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 22 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR23-01: Recover source provenance for legacy row 23

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 23 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR24-01: Recover source provenance for legacy row 24

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 24 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR25-01: Recover source provenance for legacy row 25

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 25 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR26-01: Recover source provenance for legacy row 26

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 26 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR27-01: Recover source provenance for legacy row 27

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 27 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR28-01: Recover source provenance for legacy row 28

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 28 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR29-01: Recover source provenance for legacy row 29

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 29 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR30-01: Recover source provenance for legacy row 30

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 30 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR31-01: Recover source provenance for legacy row 31

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 31 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR32-01: Recover source provenance for legacy row 32

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 32 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR33-01: Recover source provenance for legacy row 33

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 33 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR34-01: Recover source provenance for legacy row 34

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 34 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR35-01: Recover source provenance for legacy row 35

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 35 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR36-01: Recover source provenance for legacy row 36

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 36 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR37-01: Recover source provenance for legacy row 37

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 37 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR38-01: Recover source provenance for legacy row 38

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 38 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR39-01: Recover source provenance for legacy row 39

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 39 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR40-01: Recover source provenance for legacy row 40

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 40 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR41-01: Recover source provenance for legacy row 41

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 41 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR42-01: Recover source provenance for legacy row 42

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 42 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR43-01: Recover source provenance for legacy row 43

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 43 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR44-01: Recover source provenance for legacy row 44

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 44 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR45-01: Recover source provenance for legacy row 45

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 45 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR46-01: Recover source provenance for legacy row 46

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 46 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR47-01: Recover source provenance for legacy row 47

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 47 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR48-01: Recover source provenance for legacy row 48

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 48 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR49-01: Recover source provenance for legacy row 49

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 49 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR50-01: Recover source provenance for legacy row 50

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 50 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR51-01: Recover source provenance for legacy row 51

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 51 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR52-01: Recover source provenance for legacy row 52

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 52 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR53-01: Recover source provenance for legacy row 53

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 53 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR54-01: Recover source provenance for legacy row 54

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 54 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR55-01: Recover source provenance for legacy row 55

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 55 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR56-01: Recover source provenance for legacy row 56

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 56 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR57-01: Recover source provenance for legacy row 57

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 57 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR58-01: Recover source provenance for legacy row 58

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 58 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR59-01: Recover source provenance for legacy row 59

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 59 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR60-01: Recover source provenance for legacy row 60

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 60 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR61-01: Recover source provenance for legacy row 61

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 61 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR62-01: Recover source provenance for legacy row 62

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 62 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-PROV-LR63-01: Recover source provenance for legacy row 63

Source: opb-provenance-01.md

`open` / `coverage` / `inconclusive` / `medium`

Can every legacy-manual numeric claim in row 63 be recovered from a stable committed producer artifact and case key?

Coverage: Context-only. Register migration/provenance administration; no additional substantive higher-order ODE result.

## OP-TMPL-BACKFILL-01: Phase 5 backfill validity is verified

Source: opb-tmpl-01.md

`resolved` / `coverage` / `supported` / `high`

Which published Phase 5 rows are genuine template-closure results, which are mislabeled energy-balance audits, and which origins remain only producer-level surface-audit targets?

Coverage: eq:template-residual; sec:limits. Scientific residual interpretation retained; bookkeeping/coverage administration is not an article result.

## OP-TMPL-EPI-01: Leadout template-closure fit gap is blocked by the missing epicyclic hardware campaign

Source: opb-tmpl-01.md

`open` / `hardware` / `inconclusive` / `high`

Can the port-projection-sensitive leadout template-closure pilot be compared against a measured grounded/carrier readout and co-located port-work campaign, and what blocks that today?

Coverage: eq:template-residual; sec:limits. Scientific residual interpretation retained; bookkeeping/coverage administration is not an article result.

## OP-TRF-01: Physical reference attachments are outside the transformer gauge audit

Source: opb-trf-01.md

`open` / `physical_port` / `inconclusive` / `high`

How do a real ground bond, probe common-mode return and interwinding/chassis capacitances change each signed port-work integral and endpoint store?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-02: Opening windings and changing taps lack a switching-port audit

Source: opb-trf-01.md

`open` / `physical_port` / `inconclusive` / `high`

Where do the signed transfers go during actual primary opening, clamp conduction, physical tap commutation and capacitor charge sharing? In particular, what changes when the b-a readout return is physically commutated to c at nonzero winding current or capacitor voltage?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-03: Nonlinear core and thermal model discrepancies remain unquantified

Source: opb-trf-01.md

`open` / `model_realization` / `inconclusive` / `medium`

How do independently specified nonlinear magnetic and thermal states change signed source, load and loss work relative to the published linear model?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-04: Singular transformer limits need distinct constrained models

Source: opb-trf-01.md

`open` / `model_realization` / `inconclusive` / `medium`

Which finite-transformer work and state limits exist at perfect coupling, zero output capacitance, zero source resistance, an exact output short and zero turns ratio?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-05: Preparation, reset and control-supply work leave the transformer cycle open

Source: opb-trf-01.md

`open` / `physical_port` / `inconclusive` / `high`

What are the separately integrated preparation, operation, switching, relaxation and reset works for the imposed initial states when all real controller supplies are included?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-06: Interacting transformer parameters and solver coverage remain unswept

Source: opb-trf-01.md

`open` / `coverage` / `inconclusive` / `medium`

Which sign changes, stored-energy changes, switching sensitivities or unexplained residuals occur when load, probe, frequency and initial-state controls are crossed systematically?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-07: Transformer model discrepancy has no calibrated hardware measurement

Source: opb-trf-01.md

`open` / `hardware` / `inconclusive` / `medium`

Do calibrated simultaneous voltage/current integrals and independent endpoint-state measurements agree with the declared transformer model within their independently established uncertainty?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-08: Sampled quadrature sensitivity exceeds the decision threshold on 98 transformer intervals

Source: opb-trf-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Can the numerical work uncertainty on the 98 identified intervals be brought below the existing decision threshold with a justified estimate independent of the small balance residual?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-09: The planet-axle correspondence has no complete loaded dynamic transformer realization

Source: opb-trf-01.md

`open` / `model_realization` / `inconclusive` / `high`

Can a physically specified transformer network reproduce the planet axle, carrier, ring and sun readouts together with their loaded port powers and independent stores during acceleration and reference changes?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-10: Paired physical readouts retain unresolved work and voltage-integral uncertainty

Source: opb-trf-01.md

`numerically_limited` / `numerical` / `inconclusive` / `high`

Can justified work and voltage-integral uncertainty be brought below their separately declared thresholds on the 45 work and 94 readout intervals?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.

## OP-TRF-11: Compound circulating-power ratios lack an electrical reference counterpart

Source: opb-trf-01.md

`open` / `model_realization` / `inconclusive` / `medium`

Can a specified transformer network reproduce OP-EPI-08's compound-train circulating/throughput ratios across corresponding electrical references, while distinguishing reference-dependent terminal contributions from complete physical port powers and independently auditing signed work and stores?

Coverage: eq:finite-transformer; eq:transformer-integrals; sec:networks; sec:limits. Relevant finite third-order realization and its reference, loading, singular, preparation and physical limits.
