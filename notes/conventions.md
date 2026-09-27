# Article conventions

Title: Third- and Higher-Order ODEs.
Subtitle: Coefficient synthesis, identification, and physical realization.
Date: 2026-09-27.
The literal shared front-matter template supplies the author line “Hob Nilre & Bo C. Herlin.”

## Review 5 focus and added constructions

- Coefficient synthesis is the primary objective. Physical state dimension, initialization, realizability and signed work establish its interpretation and limits; they do not replace the synthesis argument.
- A complete monomial classification is restricted to the positive reference triple and its two dimensional constraints. General dimensionless functions F_k are not automatically finite Laurent sums. Constant weights are defined on a declared parameter domain, with a fixed exponent dictionary and normalization.
- The collision's exact support now belongs to sec:collision-support. Its full-coordinate normalization is P/k_c with forcing N/k_c; its restricted seven/nine-atom normalization is gamma P with forcing gamma N. The omitted damping-product atom is (k,r,s)=(2,0,1), not the literal ninth position in the displayed table.
- The constructive branch recurrence keeps L and R_Sigma fixed while adding independently specified positive R_(N+1), tau_(N+1). Q_0=1, P_0=Ls+R_Sigma. Zero coefficients outside polynomial ranges define the coefficient recurrences. The unreduced leading coefficient is L times the product of branch times.
- The branch-family chart requires N>=1 and R_Sigma>0, with (a,b,c)=(L,R_Sigma,1/C_1), tau_0=L/R_Sigma, rho=R_Sigma^2 C_1/L, mu_j=R_j/R_Sigma, chi_j=C_j/C_1, chi_1=1 and alpha_j=mu_j chi_j rho. Current coefficients use A^(i)_(r,k)=A_(r,k+1); this index shift adds no physical state. The original recurrence also applies at R_Sigma=0, where the divided chart fails.
- Source placement is part of the forced equation. A voltage offset in the parallel network's inductor branch gives lambda_dot=V+V_g, capacitor voltage V=lambda_dot-V_g and forcing C V_g_dot+V_g/R. Its mechanical counterpart uses the common spring/damper force p_dot-Q_g; uniform gravity on two freely falling bodies has Q_g=0 in their relative coordinate. Source work uses the conjugate branch current or relative velocity, and endpoint stores retain the source offset.
- The finite Laurent-support uniqueness lemma assumes independent coordinates on a nonempty open positive domain. A constrained path or finite observation set requires its own rank check. The evidence table separates representation, recovery, independent prediction and realization.
- The rational-series recurrence assumes a nonzero denominator constant term and applies inside the Taylor disk. Increasing its expansion index does not increase physical state dimension.

## Mathematical conventions

- Order means derivative order. D is d/dt. A finite scalar operator has order equal to its highest combined nonzero derivative coefficient at the parameter point.
- The generic references a,b,c are strictly positive; S=b²/a, τ=a/b, ρ=b²/(ac). Zero component/reference boundaries are derived separately.
- A(r,k)=S τ^k ρ^(-r); integer exponents specify a Laurent class, not all dimensionally valid possibilities.
- Coefficient duality uses r'=-r-k and prefactor ac/b⁴. Its alternative normalization uses 1-r-k and b⁻². Initial-basis duality uses q'=j-q.
- Fixed reference changes are different from physical parameter changes. Supports and weights must be transported together.
- y is an observation, x a physical or explicitly mathematical state. Y is an independent observation scale. The affine state-to-jet baseline is retained.
- Laplace variable s, angular frequency ω, and normalized RF frequency x=ωτ are local symbols. The RF passive reference uses q as a dimensionless Laplace variable; it is explicitly local and distinct from electrical charge.
- β is the cubic-contact strength locally, and k_c/k_j in the independent collision-group chart. Δ is the collision reconstruction determinant locally and the inductance determinant in the clamp subsection. These definitions are scoped explicitly.
- d_c,d_j denote physical viscous dampings, avoiding conflict with the generic template coefficient c. R denotes support reaction only in the absorber subsection.
- Norms and ratios with zero denominators are undefined unless a separately derived extension is stated.
- Minimal zero-state transfer degree is separate from observable free-response order and physical state dimension. The six-store cancellation has degree zero but generally one observable initialized decay.
- Peak phasors are used throughout: complex power is VI*/2 and reactive power is Im(VI*)/2; RMS quantities are explicitly named.
- The hidden RC example uses secondary-to-primary voltage ratio ν; the passive synthesis uses primary-to-secondary ratio n=1/ν. The ν=0 endpoint is a decoupled port with a closed internal RC discharge loop.
- B_v acts from edge coordinates to vertex linkages in the conservative graph; B_e is a physical node-branch incidence matrix for branch linkages. Their invariant conditions are B_v^T h=0 and B_e h=0, respectively.
- Battery diode current is nonnegative in the declared orientation. A blocked interval requires Voc+sum(v_j)>=0 throughout; otherwise conduction can restart. Open-switch relaxation is distinguished from diode blocking.

## Physical signs and boundaries

Positive power enters a declared boundary. Each port is conjugate effort times flow. Component resistor/damper heat leaves the reactive-store boundary and is negative there. Individual signed works are integrated before summation. Initial and final stores are independently constitutive evaluations.

The generic residual is ΔE minus the sum of signed works. Numerical integration residual is exactly zero for the exact analyses. Missing physical constitutive, switching, thermal, acoustic, field, supply, and sensor effects remain an unknown model residual. No work/energy criterion chooses order, weights, preparation, or controls.

Exact integration does not imply zero balance residual for an incomplete boundary. Deleting a contact store with continuous other states and no event transfer gives r_E,event=-U_c. Its removed-store magnitude is positive. The listed transducer ports leave r_E,listed=integral((g_m-g_e) i v dt); this is unassigned coupling work until a physical account is independently established. A hypothetical closing work is not an identified transfer.

In the finite supply, P_a=i_b A is positive from the bias subsystem into the plant. The bias coil receives -P_a. The converter coil-terminal power is u_b i_b, distinct from charger-terminal power V_b j and ideal-source power U j. Turning U off leaves the source resistance/limiter attached; a separately stated off converter has u_b=0. DC-link demand contains coil-terminal, sensor and logic powers only. Converter/actuator exchange already enters the coil subledger. The combined seven states are (i,x,v,i_b,V_b,z,E_theta), with operation domain V_b>0 and prescribed mode changes; continuous finite switches have no imposed state jump.

The conditional supply has sensor voltage h=a_i i+a_v v with dimensioned conversion factors, sensor current j_s=C_s zdot+G_s z, sensor power z j_s, and separately specified nonnegative logic loss. Thermal energy E_theta and outward ambient heat Q_amb=gamma_theta E_theta are separate from reactive stores. The illustrative temperature assignment is Theta=Theta_a+E_theta/C_theta. It does not claim measured thermal properties.

Collision transfer powers are positive out of the hammer, into the anvil, into contact deformation, and into the joint as individually defined. Coil-to-battery current enters the positive battery terminal. Two-port transformer current orientations and reciprocal-transducer mechanical-force orientation are stated locally. Frame transformations transport stores and each port; physical preparation is not an observer shift.

## Exact illustrative values

- Collision: J_h=1/6250 and J_a=1/10000 kg m²; k_c=k_j=1500 N m; d_c=1/100 and d_j=1/50 N m s; initial hammer rate 600 s⁻¹. Reduced inertia 1/16250; initial kinetic store 144/5 J. Alternative joint stiffness 1000 or 2200 and speeds 400 or 800 are parameter choices, not reported measurements.
- The common contact normalization is γ=J_*²/(k_c J_h J_a), J_*=J_h J_a/(J_h+J_a). The illustrative economical weights are (40/169,120/169,3151/1950,29/13,1); the last entry is a normalization.
- Exceptional collision: normalized J_h=J_a=k_c=d_c=k_j=1,d_j=2. The common pole is -1.
- Cubic contact: β=1/5, δ*=1/25, illustrative only.
- RF inductor: L=100 nH,R=3/5 Ω,C_p=1/4 pF.
- Quartz: R_m=30 Ω,L_m=11/500 H,C_m=9/500 pF,C_0=9/2 pF; C_0/C_m=250. The frequency formula, not a rounded “8 MHz,” defines the model.
- Shorted line: Z_0=50 Ω,t_d=5 ns; first pole frequency 50 MHz. Reference R=Z_0 is not loss.
- Battery: illustrative L=1 mH,I_0=100 A,V_oc=12 V; ideal cutoff 1/120 s, ideal OCV work 5 J. Three optional (R,τ) pairs are (3/200,1/5000),(3/100,1/1000),(3/50,1/200); coil resistance 3/100 and battery ohmic resistance 1/50 Ω.
- Passive RC family: R∞=7/20 Ω; τ=(2/25,9/50,21/50,19/20,21/10,24/5) s, R=(7/10,11/20,43/100,17/50,27/100,11/50) Ω. Signed boundaries are exact variational/polynomial characterizations, with no decimal output retained.
- Passive resonator reference: ω=(7/10,2,6),ζ=(2/25,3/20,3/10),a=(9/10,3/5,7/20),series resistance9/50.
- Mechanical pair: masses1,19 kg, initial velocities10,0 m/s,k=19/20 N/m, interval[0,π]s. The successive-contact example adds mass361 kg.
- Reset example: C1=C2=1 F,difference voltage2 V. Complete equalization dissipates1 J.
- Geometry figure: y1²/4+y2²≤1,y1+y2=1; center(4/5,1/5),endpoints(0,1),(8/5,-3/5).
- Diode restart counterexample: Voc=V_b>0, initial polarization (8V_b,-8V_b), time constants (T_b,2T_b), T_b>0.
- New source-off transducer illustration: L=1 H, m=1 kg, k=1 N/m, R=1 ohm, d=1 N s/m, g_e=-2 V s/m, g_m=3 N/A, both listed drives zero. On t in [0,ln(2) s], i=exp(t/1 s) A, x=exp(t/1 s) m, v=exp(t/1 s) m/s. Initial/final stores are 3/2 and 6 J; increase 9/2 J; separate resistor and damper works -3/2 J each; listed-port residual +15/2 J. This is a new assumed exact example, not a source numerical result.
- Bias-loss family: ell(P)=epsilon_ell P²/(P_*+abs(P)); epsilon_ell>=0 and P_*>0. The illustrative epsilon_ell=1/50 and P_*=1 W reproduce the previously stated loss law. Divided effort v_ell=epsilon_ell i_b A²/(P_*+abs(i_b A)) is continuous and zero at i_b=0.
- Hidden-store bound assumes the true initial terminal current is bounded by epsilon_i, with V_p=0 and finite known secondary-to-primary ratio nu>0. E0<=C R² epsilon_i²/(2 nu²); the uncertain-component bound uses C_max, R_max and a positive nu_min.
- The signed finite-sum integration control has f(t)=a t², a>0, n positive integer, T>0; its exact excess is a T³/(6n²). This is an algebraic identity, not a performed numerical integration.
- Every other displayed value is an exact definition or a derived rational/closed form. There are no measured or simulated outputs.

## Review 3 additions

- Double collision cancellation: normalized J_h=1, J_a=2, k_c=d_c=k_j=1, d_j=3. Transfer 2/(2s²+2s+1); observability and controllability ranks three; initialized output annihilator (D+1)(2D²+2D+1). The state (1,-1,0,1) gives theta_h=e^-t, theta_a=t e^-t.
- Hidden three-state loop: i=0, v1=-v2=V0 exp(-t/RC), physical states (i,v1,v2). Assumed R=1000 ohm, C=1/1000 F, V0=1 V, T=1 s. Each resistor work is -(1-e^-2)/2000 J; endpoint stores are 1/1000 and e^-2/1000 J.
- Assumed calibration, not achieved performance: C error 1/100000 F, voltage error 1/1000 V, resistor-current error 1/10^6 A; observed voltage/current bounds 11/10 V and 11/10000 A. Four capacitor endpoint errors plus two resistor works give 1652401/50000000000 J. Other errors remain separately bounded, never silently zero.
- Reciprocal actuator control: g=3 N/A, K=5 V s/m, u_c=K v; reduced g_e=g-K=-2 and g_m=g=3. State amplitude 1/100 scales every work/store by 1/10000. Controller output work is 3/4000 J and plant store increase 9/20000 J. This is not the bias-dependent seven-state model.
- Winding orientation sigma=±1 is present in every ideal-ratio comparison: v2=sigma*n*v1 and Psi2-sigma*n*Psi1. This is a volt-second quantity, not work.
- Reference cell: C=J/alpha², w=V_A-V_R, I_tau=tau/alpha, I_r=-C V_R_dot. Compensation work w I_r belongs to an actual source port. Net floating bias current is zero; individual compensation work is not.
- Reference-ramp assumptions: C_d=1/1000 F, R_d=100 ohm, delta r=1 V, r_-=0. At T=1 s, source work 3/5000 J and heat -1/10000 J; at T=1/2 s, 7/10000 and -1/5000 J. Both final stores are 1/2000 J. Separate unit-scale acceleration control uses C_d=1/200 F, R_d=3/4 ohm, r=2t, T=1 s: driver source 403/40000 J, heat -3/40000 J and store change 1/100 J, distinct from receiver compensation work 2 J.
- Compound electrical/mechanical map: v=alpha omega, z=L i/alpha, J=alpha² C, K=alpha² L^-1, mobility R/alpha². Branches A→C, P→C, B→C, P→C; positive incidence at origin. h_A,h_B are signed nonzero ratios. All-dynamic receiver has eight states; an ideal compatible held-node constraint gives seven.
- Nonideal reference realization: receiver eight + sensors nine + actuator currents eight + command capacitor one + driver capacitor one + rail one = 28 states. Eighteen algebraic converters add no states. The 41 heat exports are not a state count. Finite sensor/holding error remains; current sensing requires beta in V/A.
- Rail operation requires V_s>=V_c>0. Zero-drive rest gives q=V0² exp(-2G_q t/C_s). At C_s=1 F,V_c=1/100 V, remaining store is 1/20000 J. Active cutoff retains other states too.
- Rigid family: L0=ell0/epsilon, kappa=1-epsilon², R0=r0 epsilon², C=epsilon C0. Appendix-local s_c,d_c are common/differential currents, distinct from contact damping. Lplus=ell0(2-epsilon²)/epsilon and Lminus=ell0 epsilon. Prepared s_c=s_* epsilon^p has the stated finite/diverging store regimes without a small-parameter expansion.
- Event enclosures use exact convergent analytic identities and explicit Cauchy remainder bounds; no finite Taylor approximation is asserted to equal a trajectory. Linear event results do not certify nonlinear clipped-controller events. Normalized polynomial reversal profiles and their primitives are exact algebraic controls.

## Figures and typography

Figures are standalone vector TikZ PDFs. Blue denotes the primary object/boundary (hammer in the mechanical schematic); orange the second object (anvil); green the contact/realization/invariant; purple the joint/observation center. Gray denotes axes, external fixture and diagram boundaries. Abstract logical figures reuse this palette for corresponding roles, without assigning physical components to formal coefficients.

The manuscript uses numbered raw equation/align environments, an unnumbered bibliography, the shared fonts and running title. Appendices retain the complete coefficient array and long identities. Build and inspection output stays in ignored build/.
