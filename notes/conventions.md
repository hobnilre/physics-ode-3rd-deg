# Article conventions

Title: Third- and Higher-Order ODEs.
Subtitle: Coefficient families, physical realizations, identification, and initial data.
Date: 2026-09-26.
The literal shared front-matter template supplies the author line “Hob Nilre & Bo C. Herlin.”

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

## Physical signs and boundaries

Positive power enters a declared boundary. Each port is conjugate effort times flow. Component resistor/damper heat leaves the reactive-store boundary and is negative there. Individual signed works are integrated before summation. Initial and final stores are independently constitutive evaluations.

The generic residual is ΔE minus the sum of signed works. Numerical integration residual is exactly zero for the exact analyses. Missing physical constitutive, switching, thermal, acoustic, field, supply, and sensor effects remain an unknown model residual. No work/energy criterion chooses order, weights, preparation, or controls.

Collision transfer powers are positive out of the hammer, into the anvil, into contact deformation, and into the joint as individually defined. Coil-to-battery current enters the positive battery terminal. Two-port transformer current orientations and reciprocal-transducer mechanical-force orientation are stated locally. Frame transformations transport stores and each port; physical preparation is not an observer shift.

## Exact illustrative values

- Collision: J_h=1/6250 and J_a=1/10000 kg m²; k_c=k_j=1500 N m; d_c=1/100 and d_j=1/50 N m s; initial hammer rate 600 s⁻¹. Reduced inertia 1/16250; initial kinetic store 144/5 J. Alternative joint stiffness 1000 or 2200 and speeds 400 or 800 are parameter choices, not reported measurements.
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
- Every other displayed value is an exact definition or a derived rational/closed form. There are no measured or simulated outputs.

## Figures and typography

Figures are standalone vector TikZ PDFs. Blue denotes the primary object/boundary (hammer in the mechanical schematic); orange the second object (anvil); green the contact/realization/invariant; purple the joint/observation center. Gray denotes axes, external fixture and diagram boundaries. Abstract logical figures reuse this palette for corresponding roles, without assigning physical components to formal coefficients.

The manuscript uses numbered raw equation/align environments, an unnumbered bibliography, the shared fonts and running title. Appendices retain the complete coefficient array and long identities. Build and inspection output stays in ignored build/.
