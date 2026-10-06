---
title: "Third- and Higher-Order ODEs"
subtitle: "Coefficient synthesis, identification, and physical realization"
author: "Hob Nilre & Bo C. Herlin"
date: "2026-09-26"
abstract: |
  We construct coefficients of third- and higher-order ordinary differential equations from declared reference quantities and determining model information. Two dimensional constraints give a complete monomial family while leaving dimensionless coefficient functions free. An exact rotary impact-driver construction determines both the scalar and forcing operators, their full parameter dependence, and seven- and nine-atom constant-weight representations on specified restricted domains. A physical branch-addition recurrence constructs successive higher orders and identifies the extra component information required at each step. Functional independence, observation rank and calibrated prediction sets distinguish representation, recovery and prediction without refitting. Compatible preparation, cancellation and port assignment determine the equations' physical scope. The main text carries the construction and its limits; complete proofs, additional applications and signed physical accounts are retained in the appendices. The results are exact for their declared models, with physical measurements remaining proposed comparisons.
keywords:
  - higher-order ordinary differential equations
  - coefficient synthesis
  - dimensional analysis
  - parameter-dependent support
  - system identification
  - passive realization
  - initial conditions
  - signed work
  - hidden states
  - unresolved energy transfers
documentclass: article
classoption:
  - 11pt
geometry:
  - margin=1.1in
mainfont: "TeX Gyre Termes"
sansfont: "TeX Gyre Heros"
monofont: "TeX Gyre Cursor"
mathfont: "TeX Gyre Termes Math"
numbersections: true
secnumdepth: 3
indent: true
linestretch: 1.05
colorlinks: true
linkcolor: MidnightBlue
urlcolor: MidnightBlue
citecolor: MidnightBlue
---

\begingroup\scriptsize\noindent PDF created: \pdfbuildtimestamp\par\noindent Latest on GitHub: \url{https://github.com/hobnilre/physics-ode-3rd-deg}\par\endgroup

# The coefficient-synthesis problem
\label{sec:scope}

Given reference quantities and additional model information, how can the coefficients of third- and higher-order ordinary differential equations be constructed and justified? Dimensions supply admissible forms. Component laws and their connections can determine a particular coefficient law by elimination; informative observations can instead identify a law within a declared family. The resulting equation must carry its physical input, initialization and parameter domain as well as its derivative coefficients.

This article connects those steps through a rotary impact driver. A rotating hammer engages an anvil, loading the attached bit and tightened joint. The component laws determine a fourth-order equation for hammer motion. Changing the joint then asks a concrete question: can the same coefficient law predict the new configuration without refitting? A second construction adds physical relaxation states successively and derives coefficients at arbitrary finite order. Together they show both what the reference quantities permit and what additional information determines.

Throughout, $D=\mathrm d/\mathrm dt$ and order means derivative order. A cubic force law may occur in a second-order system; a linear observation equation may have fourth order. Coefficients are constant on each declared smooth interval unless stated otherwise. Choose the physical boundary, actual attachment, input $u$, observation $y$, and retained or eliminated states before choosing coefficients. A local constitutive law describes a component's response. An eliminated observation equation expresses the assembly's measured coordinate in terms of its input after other states have been removed algebraically. Those states still determine which initial values the observation can have.

| Determining information | Result |
|:--------------------------------|:------------------------------------------------------|
| Reference quantities and dimensions | Admissible coefficient family; dimensionless functions remain free |
| Component laws, connections and parameter domain | Exact coefficient and forcing operators |
| An additional physical state and its parameters | Constructive extension to a higher-order operator |
| Independent coordinates and informative observations | Recoverable coefficients and predictions on independent conditions |
| Compatible preparation and physical ports | Initialized order and domain of physical interpretation |

: The information that turns dimensional freedom into a specified synthesis.

The contribution is this connected construction and its explicit scope. Dimensional covariance classifies the family; realization and dissipativity supply established criteria for interpreting its equations [Kalman (1963)][kalman] and [Willems (1972)][willems]. Complete proofs, additional examples and physical accounts are organized in this article's appendices. The companion, [*Hidden States and Unassigned Work*][companion], develops the calibrated physical comparisons and extended measurement and implementation accounts. The results here are exact for declared models; no hardware measurements are reported.

# A dimensional family and what determines it
\label{sec:core-family}

Start from a positive reference triple $(a,b,c)$ having the dimensions of the coefficients in $a\ddot y+b\dot y+cy=f$. Thus $[a]=[c]T^2$ and $[b]=[c]T$, where $T$ denotes the dimension of time. Examples are $(m,d,k)$ for displacement under force and $(L,R,1/C)$ for charge under voltage: $m,d,k$ denote mass, damping and stiffness, while $L,R,C$ denote inductance, resistance and capacitance. Source attachment determines the physical forcing; the four mechanical/electrical variable maps and their source operators are derived in Appendix \ref{sec:family}.

A monomial $a^\alpha b^\beta c^\gamma$ multiplying the $k$th derivative $D^k y$ must have dimensions $[c]T^k$. Here $k$ is a nonnegative derivative index, with $D^0y=y$. Hence $\alpha+\beta+\gamma=1$ and $2\alpha+\beta=k$. Setting $r=\gamma$ gives every solution:
\begin{equation}
 A_{r,k}=a^{k-1+r}b^{2-k-2r}c^r
        =S\tau^k\rho^{-r},\quad
 S=\frac{b^2}{a},\quad \tau=\frac ab,\quad
 \rho=\frac{b^2}{ac}.
 \label{eq:family}
\end{equation}
The scale $S$ has the dimensions of $c$, $\tau$ is a reference time, and $\rho$ is dimensionless. Integer $r$ gives a Laurent family, allowing both positive and negative integer powers; real exponents are also admissible on positive references. The formula classifies monomials under those two dimensional constraints. It does not select an exponent, an integer class or a weight. For example $a^2/b$, $ab/c$ and $b^3/c^2$ all have the required third-order dimensions.

Let $B_k$ be the coefficient multiplying $D^k y$. If $\rho,\eta_1,\ldots,\eta_d$ are complete independent dimensionless coordinates, dimensional covariance more generally permits
\begin{equation}
 B_k=S\tau^k F_k(\rho,\eta_1,\ldots,\eta_d).
 \label{eq:coefficient-function}
\end{equation}
The additional ratios $\eta_j$ describe component information beyond the reference triple. The functions $F_k$ require further information. To specify a finite representation, choose a dictionary of monomials, called atoms. Its support $\mathcal R_k$ lists the exponent combinations used with nonzero weights. A finite support asserts the stronger form
\begin{equation}
 B_k=S\tau^k\sum_{(r,\mathbf p)\in\mathcal R_k}
 w_{r,\mathbf p,k}\rho^{-r}\prod_{j=1}^d\eta_j^{p_j}
 \quad\text{on a declared domain }\mathcal U.
 \label{eq:core-support}
\end{equation}
The weights are constants across $\mathcal U$. Constitutive laws may prove this identity, or observations may identify its weights within the chosen dictionary. Arbitrary dimensionless functions need not have finite support. Allowing the weights to be refitted independently at each configuration removes the predictive restriction. Changing which coordinates are independently variable changes the representation problem.

Write the complete law as $P(D)y=N(D)u$, where $P(s)=\sum_k B_ks^k$ and $s$ is a polynomial variable representing differentiation. Substituting $D$ for $s$ makes each polynomial a differential operator. The forcing operator $N(D)$ specifies which derivatives of the physical input drive the observed coordinate; the effective forcing need not equal $u$ itself. Multiplying the equation by a nonzero factor constant in time multiplies both operators and its initialized relation. A factor varying in time introduces product-rule terms. Monic normalization divides by the leading coefficient to make it one and fails where that coefficient vanishes. Zero reference values require the original equations or a different reference chart. Combine signed contributions and exact cancellations before assigning an effective order.

These declarations separate five claims: dimensional admissibility; exact representation on $\mathcal U$; recovery from observations; prediction under independent conditions; and realization by specified components and preparations. Reference transport changes the coordinates describing a law. Changing the attachment or adding a physical state changes the law itself. Appendix \ref{sec:family} supplies the complete transformation, support and convergence treatment; Appendix \ref{sec:array} gives the full coefficient array.

The dimensions tell us which coefficient forms are possible, while the component laws tell us which ones describe the chosen system. A fit becomes a prediction test only when the same law is carried to independently changed conditions.

# An exact construction from an impact driver
\label{sec:core-impact}

## Component laws and elimination

The dimensional family leaves the weights free. The impact driver shows how specified component laws fix them: first eliminate the unobserved anvil angle, then express the resulting coefficients in reference coordinates.

During one blow, the hammer closes the face clearance, loads the anvil through contact deformation, rebounds and separates. Choose a driver bit rigidly coupled to the anvil during this interval. Include all rigidly co-rotating output parts in the anvil inertia $J_a$; place resolved fastener, interface and workpiece deformation and loss in the joint law. A socket can replace the bit in an impact wrench. Its rigid inertia belongs in $J_a$, while separately resolved twist or inertia requires its own constitutive law or state. This allocation counts each component once. The impact-wrench mechanism studied by [Wettstein, Grauberger and Matthiesen (2021)][wettstein] supplies the hammer–anvil correspondence; a selected commercial tool requires its own calibration.

Observe hammer angle $\theta_h$ under applied torque $u$. Let $\theta_a$ be anvil angle and choose the active-contact origin so the current clearance is zero: $\delta=\theta_h-\theta_a$. On this smooth interval, take positive inertias $J_h,J_a$ and positive spring/damping constants $k_c,d_c,k_j,d_j$. The contact and joint torques obey
\begingroup\interdisplaylinepenalty=10000
\begin{align}
 J_{h}\ddot\theta_{h}&=u-\tau_{c},&
 J_{a}\ddot\theta_{a}&=\tau_{c}-\tau_{j},\nonumber\\
 \tau_{c}&=k_{c}\delta+d_{c}\dot\delta,&
 \tau_{j}&=k_{j}\theta_{a}+d_{j}\dot\theta_{a}.
 \label{eq:collision-state}
\end{align}
\endgroup
These laws concern a deforming tightened joint, not an anvil fixed by assumption. The four physical initial coordinates are both angles and both angular velocities. Engagement and release need separate event laws.

Define $K_c(s)=k_c+d_cs$ and $K_j(s)=k_j+d_js$. The body equations give
\begin{equation}
 \begin{pmatrix}J_hD^2+K_c(D)&-K_c(D)\\
 -K_c(D)&J_aD^2+K_c(D)+K_j(D)\end{pmatrix}
 \binom{\theta_h}{\theta_a}=\binom{u}{0}.
 \label{eq:core-impact-matrix}
\end{equation}
Apply the lower diagonal operator to the first equation and use the second to eliminate $\theta_a$. The constant-coefficient operators commute. Thus $N=J_as^2+K_c+K_j$ and $P=(J_hs^2+K_c)N-K_c^2$, giving
\begingroup\interdisplaylinepenalty=10000
\begin{align}
 P(D)\theta_{h}&=N(D)u,\qquad
 N(s)=J_{a} s^2+(d_{c}+d_{j})s+k_{c}+k_{j},\nonumber\\
 P(s)&=J_{h}J_{a} s^4+[J_{h}(d_{c}+d_{j})+J_{a} d_{c}]s^3\nonumber\\
 &\quad+[J_{h}(k_{c}+k_{j})+J_{a} k_{c}+d_{c}d_{j}]s^2
       +(d_{c}k_{j}+d_{j}k_{c})s+k_{c}k_{j}.
 \label{eq:collision-poly}
\end{align}
\endgroup
The $d_cd_j$ contribution is an interaction of the two damping regions. The physical hammer mobility, angular velocity per applied torque with zero initial physical states, is $sN/P$. This is the zero-state transfer; dropping $N$ changes the driven system. The initial jet is the list of angle derivatives at the starting time. Obtain these derivatives from the body equations, physical initial states and prescribed input. A scalar solution represents that preparation only when its initial jet agrees with those values. The full reconstruction and exceptional cases are in Appendix \ref{sec:collision}.

Combining the body equations into one equation changes how the motion is described. The applied drive and the starting state still belong to the same physical system and must travel with that description.

## Normalization, support and independent changes

Use joint references $(a,b,c)=(J_a,d_j,k_j)$ and the four independent ratios
\begin{equation}
 h=J_h/J_a,\qquad \beta=k_c/k_j,\qquad
 \eta=d_j/d_c,\qquad \rho=d_j^2/(J_ak_j).
 \label{eq:core-impact-coordinates}
\end{equation}
Together with positive $J_a$ and $\tau=J_a/d_j$, these reconstruct every component: $d_j=J_a/\tau$, $J_h=hJ_a$, $k_j=J_a/(\tau^2\rho)$, $k_c=\beta k_j$, $d_c=d_j/\eta$. Divide both operators by $k_c$. Each coefficient now has the reference dimensions, and direct substitution gives
\begin{align}
 B_{0}&=A_{1,0},\nonumber\\
 B_{1}&=A_{0,1}+\beta^{-1}\eta^{-1}A_{0,1},\nonumber\\
 B_{2}&=[1+h+h/\beta]A_{0,2}
             +\beta^{-1}\eta^{-1}A_{-1,2},\nonumber\\
 B_{3}&=\beta^{-1}[h+(h+1)\eta^{-1}]A_{-1,3},\nonumber\\
 B_{4}&=h\beta^{-1}A_{-1,4}.
 \label{eq:collision-groups}
\end{align}
The left side is $\sum_{k=0}^4B_kD^k\theta_h$ and the right side is $N(D)u/k_c$. Expanding the brackets gives a finite monomial representation with constant numerical weights in the four independent ratios. Each term now separates a dimensionally admissible atom from the component ratios that determine its contribution. The component laws determine the coefficients; dimensions alone would not determine these functions.

To predict changes of the joint with the same bodies and contact, hold $J_h,J_a,k_c,d_c$ fixed and let $k_j,d_j$ vary independently. Put
$J_*=J_hJ_a/(J_h+J_a)$ and $\gamma=J_*^2/(k_cJ_hJ_a)$, constant on that family. Choose the normalization $\gamma P$, carrying $\gamma N$ with it. With the same joint reference convention, represent its coefficients by $A_{r,k}\eta^\ell$, where $\ell$ is the exponent of the damping ratio. The necessary support is

| $k$ | Pairs $(r,\ell)$ for independently varying $k_j,d_j$ | Exponents $r$ when also $d_j=d_0$ is fixed |
|---:|:--------------------------------------|:----------------------------------|
| 0 | $(1,0)$ | $1$ |
| 1 | $(0,0),(1,1)$ | $0,1$ |
| 2 | $(0,0),(0,1),(1,2)$ | $0,1$ |
| 3 | $(0,1),(0,2)$ | $0$ |
| 4 | $(0,2)$ | $0$ |

: Nine atoms on the two-coordinate family and seven on its fixed-damping restriction, under the fixed normalization $\gamma$. Both use the forcing $\gamma N(D)u$.

For example, the damping interaction is
$\gamma d_cd_j=(\gamma d_c^2/J_a)A_{0,2}\eta$.
It requires its own ninth atom when damping varies; it combines with the constant $A_{0,2}$ contribution when damping is fixed. Substituting $d_j=d_c\eta$ and $k_j=d_c^2\eta^2/(J_a\rho)$ verifies all entries. Appendix \ref{sec:collision-support} gives every weight, their exact expansion and the complete minimality argument. Minimality concerns this dictionary, normalization, independent open domain and nonzero contributions. It is not a universal optimality claim among all constitutive laws or parameterizations.

The same law gives a direct prediction. Increase joint stiffness by an independently specified $\Delta k_j$, keeping the other components fixed and $k_j+\Delta k_j>0$. The unnormalized operators change exactly by
\begin{equation}
 P_{\rm new}-P=\Delta k_j(J_hs^2+d_cs+k_c),\qquad
 N_{\rm new}-N=\Delta k_j.
 \label{eq:core-joint-prediction}
\end{equation}
No weight is re-estimated. Use the new forcing operator and incoming physical state to predict motion and torque. A preload change counts as this experiment only after its changes in effective stiffness, damping and slip have been established. Independently varying damping requires the nine-atom law; independently changing contact requires the full chart or a newly declared constitutive model.

The number of terms needed depends on which parts are allowed to change independently. A compact coefficient list that works for one restricted family need not describe a wider set of joints or contacts.

# Constructing successive higher orders
\label{sec:core-recurrence}

The impact construction has a fixed set of physical states. To construct successive orders, we now enlarge a specified system one state at a time and carry both operators through each addition. A polarization branch supplies a concrete example: its capacitor voltage is an additional state, and its resistance and capacitance supply the new determining information.

Consider a coil $L>0$, series resistance $R_\Sigma\geq0$, and $N$ series polarization branches, each a parallel RC pair with $R_j,C_j>0$. With positive current into a battery terminal, imposed series voltage $u$, constant open-circuit voltage $V_{\rm oc}\geq0$ and branch voltages $v_j$, the smooth conducting-interval equations are
\begin{equation}
 L\dot i+R_\Sigma i+\sum_{j=1}^Nv_j=u-V_{\rm oc},\qquad
 (1+\tau_jD)v_j=R_ji,\qquad \tau_j=R_jC_j>0.
 \label{eq:core-branch-state}
\end{equation}
The independent physical states are $i,v_1,\ldots,v_N$. For a diode-constrained transfer this interval requires $i>0$; blocking and restart require the guard and state transport in Appendix \ref{sec:battery}. The construction below supplies a conducting-interval law, not a continuation through arbitrary current signs.

Let $Q_N(s)=\prod_{j=1}^N(1+\tau_js)$, with $Q_0=1$. This product contains every branch's relaxation factor. Applying $Q_N(D)$ to the coil equation and substituting each branch equation eliminates the voltages $v_j$ and gives
\begin{equation}
 \mathcal P_N=(Ls+R_\Sigma)Q_N+
 \sum_{j=1}^NR_j\frac{Q_N}{1+\tau_js},\qquad
 \mathcal P_N(D)i=Q_N(D)(u-V_{\rm oc}).
 \label{eq:core-branch-elimination}
\end{equation}
Every quotient in the sum is polynomial. Holding the old components fixed and adding $R_{N+1},\tau_{N+1}>0$, the old terms acquire the new factor and the new term is $R_{N+1}Q_N$. Therefore
\begin{align}
 Q_{N+1}(s)&=(1+\tau_{N+1}s)Q_N(s),\nonumber\\
 \mathcal P_{N+1}(s)&=(1+\tau_{N+1}s)\mathcal P_N(s)
                          +R_{N+1}Q_N(s),\nonumber\\
 Q_0(s)&=1,\qquad \mathcal P_0(s)=Ls+R_\Sigma.
 \label{eq:branch-synthesis}
\end{align}
This proves the step for arbitrary finite $N$ from the component laws. It is also the series polynomial-pair composition rule derived in Appendix \ref{sec:operator-composition}. If $Q_N=\sum_kq_k^{(N)}s^k$ and $\mathcal P_N=\sum_kp_k^{(N)}s^k$, with coefficients outside the ranges zero, comparison of powers gives
\begin{align}
 q_k^{(N+1)}&=q_k^{(N)}+\tau_{N+1}q_{k-1}^{(N)},\nonumber\\
 p_k^{(N+1)}&=p_k^{(N)}+\tau_{N+1}p_{k-1}^{(N)}
                             +R_{N+1}q_k^{(N)}.
 \label{eq:branch-coefficients}
\end{align}
The new state changes lower coefficients as well as the highest one. Induction gives $p_{N+1}^{(N)}=L\prod_j\tau_j>0$, so the unreduced degree is $N+1$. Already one branch gives $(R_\Sigma+R_1)+(L+R_\Sigma\tau_1)s+L\tau_1s^2$; a second gives a cubic. Equal time constants, common factors and hidden preparations can reduce an observed or zero-state transfer order. The branch initial voltages remain physical information even when a transfer factor cancels.

To connect the recurrence to the dimensional family, take $N\geq1$, $R_\Sigma>0$ and $(a,b,c)=(L,R_\Sigma,1/C_1)$. Put $\tau_0=L/R_\Sigma$, $\rho=R_\Sigma^2C_1/L$, $\mu_j=R_j/R_\Sigma$, $\chi_j=C_j/C_1$, with $\chi_1=1$. Then $\tau_j/\tau_0=\mu_j\chi_j\rho$. Current coefficients use the shifted atoms
\begin{equation}
 \mathcal A^{(i)}_{r,k}=A_{r,k+1}
       =R_\Sigma\tau_0^k\rho^{-r}.
 \label{eq:core-current-atoms}
\end{equation}
Here $q(t)$ denotes charge and $i=\dot q$: the $k$th current derivative is the $(k+1)$st charge derivative, which explains the index shift. This change of observation does not add a physical state. Put $\widehat p_k^{(N)}=p_k^{(N)}/(R_\Sigma\tau_0^k)$, $\widehat q_k^{(N)}=q_k^{(N)}/\tau_0^k$ and $\alpha_j=\tau_j/\tau_0$. These scaled coefficients are dimensionless. Dividing the coefficient recurrence gives
\begin{align}
 \widehat q_k^{(N+1)}&=\widehat q_k^{(N)}
                     +\alpha_{N+1}\widehat q_{k-1}^{(N)},\nonumber\\
 \widehat p_k^{(N+1)}&=\widehat p_k^{(N)}
                     +\alpha_{N+1}\widehat p_{k-1}^{(N)}
                     +\mu_{N+1}\widehat q_k^{(N)}.
 \label{eq:branch-normalized}
\end{align}
Starting from $\widehat q_0^{(0)}=\widehat p_0^{(0)}=\widehat p_1^{(0)}=1$, it produces finite polynomials in the independent ratios $\rho,\mu_j,\chi_2,\ldots,\chi_N$. Their monomial expansion has constant numerical weights across that domain. Appendix \ref{sec:construction} gives the full coordinate reconstruction and explicit support examples. At $R_\Sigma=0$ the original recurrence remains meaningful, but this divided chart fails.

Two other extensions must be distinguished. Multiplying an atom by $\tau$ extends a dimensional basis. Expanding one fixed rational response $U/V$ generates higher Taylor coefficients from the denominator without adding physical states. That expansion is limited by the nearest uncancelled pole and has an exact finite remainder; both are retained in Appendices \ref{sec:construction} and \ref{sec:rf}. Neither operation supplies the new resistance, capacitance or preparation required by the physical recurrence.

Adding a physical branch supplies both another state and the properties that determine its response. Merely writing a higher derivative supplies neither that component information nor its preparation.

# Identification and independent prediction
\label{sec:core-identification}

The constructions above start from known component laws. Identification asks the inverse question: which unknown coefficients or states can observations recover within a specified family? Representation establishes that a law has the stated form throughout its domain. Recovery determines its unknown quantities from observations. Prediction then uses that recovered law on independently specified conditions, keeping its weights fixed. Each step needs its own assumptions.

Exact representation is a statement about a function on a parameter domain. For a finite Laurent dictionary in independent positive coordinates, its constant weights are unique on any nonempty open domain: multiply a vanishing combination by a monomial to remove negative exponents. The resulting polynomial vanishes on an open set; successively restricting to coordinate intervals forces every coefficient to vanish. This proves the independence needed by the impact supports. The full statement and its applications are in Appendix \ref{sec:identification}.

Restricting the domain can destroy that independence. On $\eta=\rho$, the atoms $1$ and $\rho^{-1}\eta$ coincide. At fixed $\rho$, its different powers merely rescale one observation column. For finitely many configurations, form an evaluation matrix with one column per atom and one row per configuration. Full column rank is needed to recover all weights from exact coefficient observations. Even full rank does not ensure adequate sensitivity to noisy observations, and uniqueness within one dictionary does not determine which dictionary is physically appropriate.

Unknown exponents pose an additional recovery problem. For $m$ nonzero terms with distinct real exponents, exact values on a positive geometric grid $x_\ell=x_0q^\ell$, $x_0,q>0$, $q\ne1$, form a rank-$m$ Hankel sequence once enough values are available. The corresponding matrix places the same sequence value along each anti-diagonal. Its annihilating polynomial encodes a linear recurrence between those values and recovers $q^{p_j}$ and hence the exponents $p_j$. Coincident exponents and signed cancellation must be combined first; noisy recovery needs additional separation and uncertainty assumptions. Appendix \ref{sec:identification} gives the full argument.

For the impact driver, independently establish components, incoming state, fixture response and sensor calibration before predicting a changed configuration. The seven- and nine-atom identities then specify coefficients and forcing without new weights. Compare synchronized hammer angle, anvil angle and contact torque. A slow torsional analogue makes these channels accessible with encoders and a torque sensor; correspondence to a commercial impact tool requires its own parameters and bandwidth. A good fit of one hammer trace alone need not resolve a weak coefficient or a hidden anvil state.

The exact cancellation surface is
\begin{equation}
 \Delta=k_{c}^2-\frac{k_{c}d_{c}d_{j}}{J_{a}}+\frac{d_{c}^2 k_{j}}{J_{a}}=0.
 \label{eq:collision-hidden}
\end{equation}
On this surface, an anvil motion proportional to $e^{-k_ct/d_c}$ can leave both hammer angle and contact torque unchanged. An anvil observation separates those preparations. The exact counterexample and the distinction between hidden modes and accidentally unexcited modes are retained in Appendix \ref{sec:collision}; additional contact/joint states are treated in Appendix \ref{sec:impact-constitutive}. Functional independence of coefficient atoms cannot supply a missing observation channel.

Let $\mathcal G_A,\mathcal G_B$ include every predicted observation allowed by two candidate laws, their calibrated nuisance parameters and preparations. Each set therefore carries the full calibrated range of admissible predictions. Let $W$ be a fixed calibration-based scaling and $\epsilon_A,\epsilon_B$ bound the remaining observation error in the same scaled norm. A sufficient discrimination condition is
\begin{equation}
 d_W(\mathcal G_A,\mathcal G_B)
 =\inf_{g_A\in\mathcal G_A,\;g_B\in\mathcal G_B}
       \|W(g_A-g_B)\|>\epsilon_A+\epsilon_B.
 \label{eq:measurement-separation}
\end{equation}
The triangle inequality makes the error neighborhoods disjoint. An observation rejects a candidate only outside its applicable neighborhood; overlapping sets leave the comparison unresolved. A covariance matrix alone does not provide a deterministic enclosure. Probabilistic regions require their own distribution and confidence assumptions. Coefficient estimation, model selection and the independent final comparison must use separate conditions.

The impact example thus connects three different results. Component laws prove the coefficient identity. Independent coordinate variation can make its contributions distinguishable. A fixed law with an uncertainty model predicts an independently specified setting. The companion develops the contact/joint inverse and calibrated physical comparison; Appendix \ref{sec:identification} retains the full rank, sensitivity, exponent and derivative-measurement analysis. No work or energy outcome selects the coefficients.

A measured trace can leave several internal explanations possible. Independent changes and additional observations are what make those explanations testable; more terms in a fitted equation cannot supply a missing measurement.

# Physical scope and conclusions
\label{sec:conclusion}

A synthesized observation equation carries an initialized meaning. Zero-state transfer describes the response with every initial physical state set to zero; an initialized output also includes motion due to preparation. Four physical collision states can yield a third-order initialized hammer output and a second-order zero-state transfer. For $J_h=1$, $J_a=2$, $k_c=d_c=k_j=1$, $d_j=3$ in consistent normalized units, the zero-state angle transfer is $2/(2s^2+2s+1)$, but the admissible preparation $(\theta_h,\dot\theta_h,\theta_a,\dot\theta_a)=(1,-1,0,1)$ gives the free response $\theta_h=e^{-t}$, $\theta_a=te^{-t}$. It satisfies $(D+1)(2D^2+2D+1)\theta_h=0$. Appendix \ref{sec:collision} proves these statements; Appendix \ref{sec:initial} develops compatible jets, constraints and initialized histories. Cancellation of a zero-state factor does not authorize deletion of an initialized mode or its store.

Stability concerns the evolution of disturbances; port passivity limits net work extraction by available storage at a specified effort--flow port; component realization provides the physical states and laws. These are separate claims. The positive grounded impact model has the store
$E=(J_h\dot\theta_h^2+J_a\dot\theta_a^2+k_c\delta^2+k_j\theta_a^2)/2$ and $\dot E=u\dot\theta_h-d_c\dot\delta^2-d_j\dot\theta_a^2$. The zero-input zero-dissipation invariant set is the origin, establishing asymptotic stability for that realization. In contrast, a direct electrical law $P(D)q=v$, $i=\dot q$, with real polynomial degree at least three has $Z(s)=P(s)/s$ that cannot be positive real throughout the right half-plane, meaning analytic there with nonnegative real part. The precise obstruction and proof are in Appendix \ref{sec:rf}; passive rational higher-order realizations in Appendix \ref{sec:passive} have different forcing operators and retained states.

The active-contact equation also ends at a physical event. At torque-zero release, $k_c\delta+d_c\dot\delta=0$, hence the remaining contact store is $U_c=d_c^2\dot\delta_-^2/(2k_c)>0$ when relative speed is nonzero; the subscript $-$ denotes the instant just before release. If a model deletes that store while body states and the joint store remain continuous and no event transfer is supplied, its signed residual is $r_{E,e}=-U_c$. Here the residual is the change in store minus the signed work supplied into the boundary. Appendix \ref{sec:impact-release} retains the exact event account. The torsional comparison can locate release and measure the remaining deformation; the companion develops retained-material and recipient alternatives with uncertainty. The energy outcome audits the independently declared event model and does not choose its coefficients or release law.

Finite-dimensional equations have further domain limits. Distributed, fractional and delayed laws can require field or history data that no finite initial jet determines. Appendix \ref{sec:distributed} retains the exact finite-representation conditions and discrepancies. Other applications develop attachment, forcing and preparation controls, including time-dependent material laws and finite supplies. A nonlinear physical state count is not a universal constant scalar derivative order. The appendix guide gives direct access to these complete treatments.

Coefficient synthesis therefore returns a law together with its determining information and domain. Dimensions give the complete monomial family but leave dimensionless functions free. The impact component laws determine full-domain coefficients, restricted seven- and nine-atom representations, and independent-configuration predictions. Adding specified physical branches constructs successive orders and their forcing; observations determine which coefficients and states can be recovered. Compatible preparation and declared ports establish what the resulting equation describes. These conclusions require no selection of coefficients or derivative order by an energy outcome.


The order of an observed equation is not a direct count of the parts or energy stores inside the system. Its physical meaning also depends on what is observed, how the system started, and when its component laws stop applying.

# Guide to the appendices {-}

The appendices retain the complete derivations, additional cases and physical accounts. Each can be entered from the corresponding result in the main text.

| Appendix | Complete treatment |
|:-------------------------|:----------------------------------------------------|
| Appendix \ref{app:foundations} | Dimensional foundations and coefficient structure |
| Appendix \ref{app:impact} | Impact construction, contact laws and release |
| Appendix \ref{app:construction} | Local composition and higher-order constructions |
| Appendix \ref{app:identification} | Identification, observation and uncertainty |
| Appendix \ref{app:initialization} | Initialization, effective order and passive realization |
| Appendix \ref{app:applications} | Electrical, RF and mechanical applications |
| Appendix \ref{app:networks} | Networks, finite supplies and implementation |
| Appendix \ref{app:histories} | Distributed, fractional and delayed representation |
| Appendix \ref{app:work} | Signed work, events and verification |

\clearpage
\appendix

# Dimensional foundations and coefficient structure
\label{app:foundations}

This appendix supplies the reference, source and transformation details behind Section \ref{sec:core-family}, including the full coefficient array.

## The second-order foundation and its dimensional extension
\label{sec:family}

The reference triple fixes dimensions, time scale and a parameter chart. Source placement and topology fix the forcing interpretation. These foundations are kept explicit because a higher-order coefficient family must transport both when it is used across mechanical and electrical descriptions.

### Variables, analogies and connections

Begin with
\begin{equation}
 a\ddot y+b\dot y+cy=f,\qquad v=\dot y,\qquad x=av,
 \label{eq:template}
\end{equation}
where $a,b,c>0$ are reference quantities. The generalized effort is $f=a\dot v+bv+c\int v\,\dd t$, with the integration constant fixed by the initial $y$. The following correspondences include the state variable; agreement of coefficients alone is insufficient.

| System | $(a,b,c)$ | $y$ | $v$ | $x=av$ | Effort $f$ |
|:-------------------|:-----------------------|:-----------------|:------------|:-----------------|:------------|
| Mass, damper, spring | $(m,d,k)$ | displacement | velocity | momentum | force |
| Compliance, mobility, inverse mass | $(1/k,1/d,1/m)$ | momentum | force | displacement | velocity |
| Series electrical circuit | $(L,R,1/C)$ | charge $q$ | current $i$ | linkage $\lambda$ | voltage |
| Parallel electrical circuit | $(C,1/R,1/L)$ | linkage $\lambda$ | voltage $v$ | charge $q$ | current |

: Second-order mechanical and electrical templates. Linkage is $\lambda=N\phi$ for a winding of $N$ turns; it is not generally the flux of one turn.

Force balance at a mechanical connection corresponds to current balance under the appropriate mobility analogy, while common velocity corresponds to common voltage. Under an impedance analogy, the connection rules interchange. Arbitrary electrical graphs cannot be realized merely by replacing every inductor with an ordinary mass: a mass is referenced to an inertial frame, whereas a general two-terminal inertial element may require an inerter. Both kinematic constraints and port orientation must be transported.

The coefficient transformation
\begin{equation}
 \mathcal D(a,b,c)=(1/c,1/b,1/a),\qquad \mathcal D^2=I
 \label{eq:duality}
\end{equation}
interchanges the two connection templates. It is an algebraic correspondence until topology and the effort--flow map are supplied. Does a damped mechanical/electrical correspondence also transport preparation and reset [OP-LR50-01]? Matched normalized displacement and current, together with separately measured force--velocity and voltage--current products, distinguish a complete port correspondence from a homogeneous-equation match. [*Hidden States and Unassigned Work*][companion] develops the finite comparison with an encoder and shunt. Lossless comparisons alone do not settle it: the coordinates below are singular at $b=0$.

Specifically, with $\tau=a/b$, $\rho=b^2/(ac)$, $y=Yz$ and $\xi=t/\tau$, both driven templates reduce exactly to $z''+z'+\rho^{-1}z=\varphi$, where $\varphi=f/(b^2Y/a)$ and primes denote $\xi$ derivatives. Matching $\rho$, the normalized input, and the initial pair $(z,z')$ predicts identical normalized responses by uniqueness. For mechanics observe velocity as $\dot y\,\tau/Y$; for the electrical charge coordinate observe current as $i\tau/Y$, and obtain charge from its known initial value and integrated current. A normalized trajectory difference exceeding the combined calibration and parameter-error enclosure rejects the proposed complete mapping. Agreement within it remains a bounded correspondence result. Preparation, sensor loading and each conjugate power product must still be audited independently.

### Choosing the local equation and its connections
\label{sec:local-interconnection}

A second-order template can describe one block inside a larger system. A series electrical block uses common current and adds voltage drops; a parallel block uses common voltage and adds currents. Thus an LRC charge equation and a CRL linkage equation can be retained at different places in the same assembly. Under the full port correspondence, MCK uses common velocity and summed forces, while KCM uses common force and summed velocities. Mechanical connection geometry must implement those constraints; the electrical names alone do not specify it.

Specify the boundary, its physical input and observation, the integrated or differentiated variable, the local constitutive laws, and which internal variables remain explicit. Then choose independent component coordinates, quantities held fixed, preparation and a time or frequency domain. A design target or observed response supplies additional determining information only for that declared family and boundary. Changing a contact law, moving a shunt, and observing another terminal are different choices with different coefficient consequences.

Kirchhoff's voltage and current laws remain the connection constraints. For series--parallel blocks they allow coefficient construction from already derived local equations, as Appendix \ref{sec:operator-composition} shows. Arbitrary graphs, shared internal nodes and multiport components require coupled or matrix equations; Appendices \ref{sec:network-elimination} and \ref{sec:passive} retain those extensions. Rewriting one block's impedance as its reciprocal admittance changes its representation, not its physical connections. Neither that operation nor \eqref{eq:duality} relocates a component.

### Source placement and the forcing operator
\label{sec:source-placement}

A source completes the synthesis specification. An ideal battery maintains a voltage difference; its force--voltage counterpart maintains a force. Source location determines which coordinate is driven and which effort appears on the scalar equation's right-hand side. A real battery additionally requires its internal resistance and finite chemical state when those affect the chosen interval.

A voltage source $V_b$ driving a series circuit gives $L\ddot q+R\dot q+q/C=V_b$. The corresponding mechanical equation is $m\ddot x+d\dot x+kx=F_b$, with force scale transported independently of the voltage unit. For uniform gravity on a mass referred to a fixed inertial support, downward displacement measured from the unloaded spring position gives $F_b=mg$. Constant effort still gives time-dependent power when its conjugate flow changes.

A battery across a parallel network instead prescribes its common voltage $V=V_b$. Its total delivered current is $i_b=C\dot V_b+V_b/R+i_L$, with $L\dot i_L=V_b$. The mechanical series counterpart prescribes the common force through $\dot p=F_b$; its source-terminal velocity is $u_b=\ddot p/k+\dot p/d+p/m$. On a constant-force interval, $u_b=F_b/d+p/m$: spring deformation is fixed, damper velocity is fixed and the mass momentum changes. Substituting a force directly into a right-hand side with velocity units, or a voltage into one with current units, would change the equation being constructed.

Source placement within a branch gives another forcing law. For a voltage source $V_g$ in series with the inductor of a parallel network, let $\lambda=Li_L$ be the inductor's own linkage and $V$ the capacitor/resistor voltage. With the source polarity fixed by $\dot\lambda=V+V_g$, current balance gives
\begin{align}
 C\dot V+V/R+\lambda/L&=0,\qquad V=\dot\lambda-V_g,\nonumber\\
 C\ddot\lambda+\dot\lambda/R+\lambda/L
 &=C\dot V_g+V_g/R.
 \label{eq:source-placement}
\end{align}
For constant $V_g$, the right-hand side is $V_g/R$. This reduction does not turn the physical voltage source into a current source or impose a voltage across the entire network. It is a simple example of an input operator generated by elimination.

Under the mechanical map $\lambda\leftrightarrow p$, $L\leftrightarrow m$, $C\leftrightarrow1/k$ and $R\leftrightarrow d$, the branch source corresponds to a generalized force $Q_g$ acting on the selected inertial coordinate. The common spring/damper force is $f=\dot p-Q_g$, so their deformation and velocity are $f/k$ and $f/d$. In a two-body relative coordinate, $m=\mu=m_1m_2/(m_1+m_2)$ and $p=\mu(v_1-v_2)$. Derive $Q_g$ in that coordinate: uniform gravity on two freely falling bodies gives $Q_g=0$, while $Q_g=mg$ applies to the fixed-reference case. Center-of-mass motion has separate storage and ports.

For a smooth interval $[t_0,t_1]$, enclose the passive elements, keep the source and heat reservoirs outside, and assume fixed supports with no other working ports. The signed source work is $\int F_b\dot x\,\dd t$ for the driven parallel mechanical system, $\int F_bu_b\,\dd t$ for its force-driven series counterpart, $\int V_b\dot q\,\dd t$ for the electrical series circuit, and $\int V_bi_b\,\dd t$ for the voltage-clamped parallel circuit. Each heat export is integrated separately from its actual damper velocity or resistor current. For the branch-source case in \eqref{eq:source-placement}, the complete account is
\begin{align}
 W_g&=\int_{t_0}^{t_1}V_g\,\frac{\lambda}{L}\,\dd t,&
 W_R&=-\int_{t_0}^{t_1}\frac{V^2}{R}\,\dd t,\nonumber\\
 E_j&=\frac{\lambda(t_j)^2}{2L}+\frac{C V(t_j)^2}{2},&
 E_1-E_0-W_g-W_R&=0.
 \label{eq:source-placement-work}
\end{align}
Multiplication of the two physical state equations gives $\dot E=V_g\lambda/L-V^2/R$; separate integration proves the identity, with both endpoints evaluated using $V=\dot\lambda-V_g$. The mechanical counterpart uses source power $Q_gp/m$, heat power $-(\dot p-Q_g)^2/d$, and store $p^2/(2m)+(\dot p-Q_g)^2/(2k)$. Omitting the source offset from either endpoint changes the audit. Source attachment, incompatible initial states and ideal steps require their own finite or impulsive switching account. These results establish forcing and port conventions before any higher-order coefficient is interpreted.

### All monomials of the required dimensions

Since $[a]=[c]T^2$ and $[b]=[c]T$, a coefficient of $D^k y$ must have dimensions $[c]T^k$. For a monomial $a^\alpha b^\beta c^\gamma$, the two constraints are $\alpha+\beta+\gamma=1$ and $2\alpha+\beta=k$. With $r=\gamma$ their solution is
\eqref{eq:family}.
This is the complete monomial family in the declared positive triple under the two stated dimensional constraints. Integer $r,k$ give a Laurent family. Real $r$ are also dimensionally admissible for positive references; dimensional analysis does not prove that physical exponents are integers. A continuous superposition over $r$ would be a Mellin-type representation requiring its own measure, convergence conditions and identification assumptions.

For third order, $A_{0,3}=a^2/b$, $A_{-1,3}=ab/c$ and $A_{-2,3}=b^3/c^2$ are equally valid. An equation
\begin{equation}
 P(D)y=f,\qquad P(s)=\sum_{k=0}^{n}B_{k} s^k,
 \qquad B_{k}=\sum_{r\in\mathcal R_{k}}w_{r,k}A_{r,k}
 \label{eq:mixture}
\end{equation}
requires the dimensionless weights $w_{r,k}$ to be specified or identified. No dimensional argument fixes them. Negative $k$ denote initialized integrals, treated in Appendix \ref{sec:histories}; they are not additional ordinary derivatives.

### What the synthesis determines
\label{sec:synthesis-specification}

For a constant-coefficient family, let $\rho,\eta_1,\ldots,\eta_d$ be a complete set of independent dimensionless coordinates. Dimensional covariance permits
\eqref{eq:coefficient-function}.
Dividing by $S\tau^k$ removes the coefficient dimensions; invariance under a coherent change of units leaves dependence only on the independent dimensionless coordinates. The functions $F_k$ are not fixed by this argument. Expressing one as a finite sum of $\rho^{-r}\prod_j\eta_j^{p_j}$ is an additional representation claim. Finite elimination may prove it; an arbitrary dimensionless function need not satisfy it. Integer, half-integer and unrestricted real exponents define distinct hypotheses. Evidence requiring a different class must be reported as a failure of the original class on the stated domain, rather than silently changing its definition.

| Information supplied | Consequence for the synthesis |
|:--------------------------------|:-------------------------------------------------------|
| Scalar observation, physical input and derivative convention | Defines the coefficients' dimensions and the equation being constructed |
| Positive reference triple and independent component ratios | Defines dimensional scales and parameter coordinates |
| Parameter domain and quantities held fixed | Defines whether the weights are constants across configurations |
| Exponent set, support and convergence conditions | Defines the candidate coefficient functions |
| Constitutive laws and connections, or informative observations | Determines coefficients or bounds their remaining freedom |
| Common equation normalization and forcing operator | Makes coefficient values and the retained physical drive comparable |

: Information required to turn the dimensional family into a specified synthesis.

A generated candidate family, an exact coefficient law, an identified law with uncertainty and a physically realized system are successive claims with different evidence. Synthesis may return a family with explicitly characterized freedom. Uniqueness requires the independence and observation conditions in Appendix \ref{sec:synthesis-evidence}. Allowing an arbitrary weight function of the varying coordinates would let that function absorb the unknown $F_k$ and would remove the proposed constant-weight representation's predictive restriction.

For a driven realization the output can be $P(D)y=N(D)u$ with compatible initialized terms. In \eqref{eq:mixture}, $f=N(D)u$ is then the effective forcing, not automatically the physical input $u$. A nonzero normalization factor that is constant in time on the declared interval multiplies both $P$ and $N$; it also transports the initialized relation. If the factor varies in time, derivatives require the product rule and the constant-coefficient construction no longer applies unchanged. Monic normalization is valid only where the leading coefficient is nonzero. Combine signed contributions before assigning effective order, and use the original equations or a new reference chart at a zero reference value.

One important physical limit is already determined by the port assignment. For the direct electrical law $P(D)q=v$, $i=\dot q$, a polynomial degree of at least three gives an impedance $P(s)/s$ that cannot be positive real on the entire right half-plane. The proof and its assumptions are in Appendix \ref{sec:rf}. Rational input operators, other scalar observations and finite-domain representations remain distinct possibilities. Thus a synthesis must say whether it specifies a formal operator, an initialized eliminated equation, a physical constitutive law or a finite representation with a stated discrepancy. Appendix \ref{sec:distributed} establishes the domain and preparation requirements for finite coefficient representations of distributed, fractional and delayed dynamics.

### Conventional extensions and their limits

A conventional economical sequence is
\begin{equation}
 r_{k}=\left\lfloor\frac{2-k}{2}\right\rfloor,\qquad
 A_{r_{2j},2j}=\frac{a^j}{c^{j-1}},\quad
 A_{r_{2j+1},2j+1}=\frac{a^j b}{c^j}.
 \label{eq:staircase}
\end{equation}
The identities hold for all integer $j$, including negative values; increasing $k$ by two multiplies the selected coefficient by $a/c$. In the $(L,R,C)$ basis this choice minimizes the sum of absolute component exponents, with a tie resolved by placing $R$ in the numerator. It is a convention dependent on the coordinate basis, as the following exact alternatives show.

| Basis used to measure exponent size | Minimizing $r$ under the stated convention |
|:-------------------------------------------|:--------------------------------|
| $(L,R,C)$ | $\lfloor(2-k)/2\rfloor$ |
| $(S,\tau,\rho)$ | $0$ |
| $(L,\tau,\rho)$ | $0$ |
| $(Z_{0},\omega_{0},\zeta)$, real exponents allowed | $(2-k)/2$ |

: Basis dependence of monomial simplicity. Here $Z_{0}=\sqrt{L/C}$, $\omega_{0}=1/\sqrt{LC}$, $\zeta=R/(2Z_{0})$ and $\rho=4\zeta^2$; integer restrictions introduce ties in the last basis.

The full electrical coefficient array is reproduced in Appendix \ref{sec:array}. It carries no automatic stability or passivity interpretation. For example the cubic selected by \eqref{eq:staircase} factors exactly:
\begin{equation}
 \frac{ab}{c}s^3+as^2+bs+c
       =(bs+c)\left(\frac acs^2+1\right).
 \label{eq:marginal}
\end{equation}
It has an undamped imaginary pair. For $a=b=c=1$, the fourth-order continuation is $1+s+s^2+s^3+s^4=(s^5-1)/(s-1)$ and includes roots with positive real part. Positive coefficients are therefore not a stability certificate.

### Transformations, support and convergence

The complete lattice relation and its electrical dual are
\begin{align}
 A_{r+\Delta r,k+\Delta k}&=\rho^{-\Delta r}\tau^{\Delta k}A_{r,k},
 \label{eq:lattice}\\
 A_{r,k}(\mathcal D(a,b,c))&=\frac{ac}{b^4}A_{-r-k,k}(a,b,c)
   =\frac1{b^2}A_{1-r-k,k}(a,b,c).
 \label{eq:lattice-dual}
\end{align}
Here $\tau'=\rho\tau$ and $\rho'=1/\rho$. The two prefactors correspond to different normalizations; their support labels must not be mixed. Applying either complete transformation twice returns the original coefficient. A finite candidate set is generally not closed under $r\mapsto-r-k$. A comparison using unchanged labels after replacing the references compares different model classes.

A change of units represented by $(a,b,c)\mapsto(\mu\lambda^2a,\mu\lambda b,\mu c)$ gives $A_{r,k}\mapsto\mu\lambda^kA_{r,k}$. A change of physical references is different. If a second independent dimensionless coordinate $\eta$ is included, coefficients written as $S\tau^k\sum w_{r,s,k}\rho^{-r}\eta^s$ retain their values only if
\begin{equation}
 \widetilde w_{r,s,k}=w_{r,s,k}\frac S{\widetilde S}
 \left(\frac\tau{\widetilde\tau}\right)^k
 \left(\frac{\widetilde\rho}{\rho}\right)^r
 \left(\frac\eta{\widetilde\eta}\right)^s.
 \label{eq:reference}
\end{equation}
For an interchange that sends $\eta$ to $1/\eta$, its exponent also changes sign. Reference singularities at zero damping, zero stiffness or zero inertia require another chart or the original equations; a divergent coordinate is not by itself a physical instability.

At fixed references $A_{r,k}=S(\rho^{-r})(\tau^k)$ is an outer product. Every finite such array has rank one. Different exponents at a fixed $k$ change one coefficient; they do not add poles. For a modal signal $y=Y e^{st}$, an individual contribution is $S\rho^{-r}(\tau s)^k y$. Thus relative importance depends on the actual derivative content as well as on coefficient magnitude.

Infinite superpositions require convergence. Absolute convergence follows from $\sum_{r}|w_{r,k}|\rho^{-r}<\infty$; conditional sums need a declared ordering. Equal positive weights extending from $r_{0}$ downward give $\rho^{-r_{0}}/(1-\rho)$ for $0<\rho<1$, and upward give $\rho^{-r_{0}}/(1-1/\rho)$ for $\rho>1$. The bilateral equal-weight sum diverges for every positive $\rho$, including $\rho=1$. Cancellation cannot repair the positive case.

Useful diagnostics distinguish cancellation of coefficients from cancellation of evaluated terms:
\begin{equation}
 \gamma_{k}=\frac{|B_{k}|}{\sum_{r}|w_{r,k}A_{r,k}|},\quad
 \gamma_{T}=\frac{|\sum_{k} B_{k} y^{(k)}|}{\sum_{k}|B_{k} y^{(k)}|},\quad
 \kappa(P,s)=\frac{\sum_{k}|B_{k} s^k|}{|P(s)|}.
 \label{eq:conditioning}
\end{equation}
A zero denominator makes the respective quotient undefined; a pole of $1/P$ makes the last condition measure unbounded. A normalized equation residual can instead use $\sum_{k}|B_{k} y^{(k)}|+|f|$ when nonzero. These quantities describe arithmetic sensitivity or cancellation, not physical loss or stored energy.

### Independent dimensionless coordinates

Counting dimensional constraints identifies available coordinates, not which coordinates every coefficient must use.

| Declared parameters | $n$ | Rank | Dimensionless coordinates |
|:------------------------------|-------:|-------:|:---------------------------------------------|
| $(a,b,c)$ | $3$ | $2$ | $\rho$ |
| Two inertias, two stiffnesses, two dampings | $6$ | $2$ | $J_{h}/J_{a}$, $k_{c}/k_{j}$, $d_{j}/d_{c}$, $d_{j}^2/(J_{a} k_{j})$ |
| Motional $L_{m},R_{m},C_{m}$ and shunt $C_{0}$ | $4$ | $2$ | $R_{m}^2C_{m}/L_{m}$, $C_{0}/C_{m}$ |
| Ideal line $Z_{0},t_{d}$ | $2$ | $2$ | None until an excitation scale, such as $\omega t_{d}$, is supplied |

: Dimensional counts for the principal applications.

A restriction fixing contact and inertia values leaves a lower-dimensional collision manifold. Success there cannot establish a collapse of the full model onto $\rho$, or even onto $(\rho,\eta)$. Conversely, a count of four does not prove that all four enter every coefficient. Exact elimination settles that question.

## Complete coefficient array and elementary stability checks
\label{sec:array}

For the electrical template $(a,b,c)=(L,R,1/C)$,
\begin{equation}
 A_{r,k}=L^{k-1+r}R^{2-k-2r}C^{-r}.
 \label{eq:electrical-array}
\end{equation}
The following two tables reproduce the full array for $-3\leq r\leq3$ and $-4\leq k\leq6$. Negative derivative indices retain the initialized-history interpretation of Appendix \ref{sec:histories}. Every entry follows from \eqref{eq:electrical-array}; the tables introduce no selected dynamics.

| $r$ | $k=-4$ | $k=-3$ | $k=-2$ | $k=-1$ | $k=0$ | $k=1$ |
|---:|---:|---:|---:|---:|---:|---:|
| $3$ | $\frac{1}{C^{3} L^{2}}$ | $\frac{1}{C^{3} L R}$ | $\frac{1}{C^{3} R^{2}}$ | $\frac{L}{C^{3} R^{3}}$ | $\frac{L^{2}}{C^{3} R^{4}}$ | $\frac{L^{3}}{C^{3} R^{5}}$ |
| $2$ | $\frac{R^{2}}{C^{2} L^{3}}$ | $\frac{R}{C^{2} L^{2}}$ | $\frac{1}{C^{2} L}$ | $\frac{1}{C^{2} R}$ | $\frac{L}{C^{2} R^{2}}$ | $\frac{L^{2}}{C^{2} R^{3}}$ |
| $1$ | $\frac{R^{4}}{C L^{4}}$ | $\frac{R^{3}}{C L^{3}}$ | $\frac{R^{2}}{C L^{2}}$ | $\frac{R}{C L}$ | $\frac{1}{C}$ | $\frac{L}{C R}$ |
| $0$ | $\frac{R^{6}}{L^{5}}$ | $\frac{R^{5}}{L^{4}}$ | $\frac{R^{4}}{L^{3}}$ | $\frac{R^{3}}{L^{2}}$ | $\frac{R^{2}}{L}$ | $R$ |
| $-1$ | $\frac{C R^{8}}{L^{6}}$ | $\frac{C R^{7}}{L^{5}}$ | $\frac{C R^{6}}{L^{4}}$ | $\frac{C R^{5}}{L^{3}}$ | $\frac{C R^{4}}{L^{2}}$ | $\frac{C R^{3}}{L}$ |
| $-2$ | $\frac{C^{2} R^{10}}{L^{7}}$ | $\frac{C^{2} R^{9}}{L^{6}}$ | $\frac{C^{2} R^{8}}{L^{5}}$ | $\frac{C^{2} R^{7}}{L^{4}}$ | $\frac{C^{2} R^{6}}{L^{3}}$ | $\frac{C^{2} R^{5}}{L^{2}}$ |
| $-3$ | $\frac{C^{3} R^{12}}{L^{8}}$ | $\frac{C^{3} R^{11}}{L^{7}}$ | $\frac{C^{3} R^{10}}{L^{6}}$ | $\frac{C^{3} R^{9}}{L^{5}}$ | $\frac{C^{3} R^{8}}{L^{4}}$ | $\frac{C^{3} R^{7}}{L^{3}}$ |

: Electrical coefficients for derivative indices -4 through 1.

| $r$ | $k=2$ | $k=3$ | $k=4$ | $k=5$ | $k=6$ |
|---:|---:|---:|---:|---:|---:|
| $3$ | $\frac{L^{4}}{C^{3} R^{6}}$ | $\frac{L^{5}}{C^{3} R^{7}}$ | $\frac{L^{6}}{C^{3} R^{8}}$ | $\frac{L^{7}}{C^{3} R^{9}}$ | $\frac{L^{8}}{C^{3} R^{10}}$ |
| $2$ | $\frac{L^{3}}{C^{2} R^{4}}$ | $\frac{L^{4}}{C^{2} R^{5}}$ | $\frac{L^{5}}{C^{2} R^{6}}$ | $\frac{L^{6}}{C^{2} R^{7}}$ | $\frac{L^{7}}{C^{2} R^{8}}$ |
| $1$ | $\frac{L^{2}}{C R^{2}}$ | $\frac{L^{3}}{C R^{3}}$ | $\frac{L^{4}}{C R^{4}}$ | $\frac{L^{5}}{C R^{5}}$ | $\frac{L^{6}}{C R^{6}}$ |
| $0$ | $L$ | $\frac{L^{2}}{R}$ | $\frac{L^{3}}{R^{2}}$ | $\frac{L^{4}}{R^{3}}$ | $\frac{L^{5}}{R^{4}}$ |
| $-1$ | $C R^{2}$ | $C L R$ | $C L^{2}$ | $\frac{C L^{3}}{R}$ | $\frac{C L^{4}}{R^{2}}$ |
| $-2$ | $\frac{C^{2} R^{4}}{L}$ | $C^{2} R^{3}$ | $C^{2} L R^{2}$ | $C^{2} L^{2} R$ | $C^{2} L^{3}$ |
| $-3$ | $\frac{C^{3} R^{6}}{L^{2}}$ | $\frac{C^{3} R^{5}}{L}$ | $C^{3} R^{4}$ | $C^{3} L R^{3}$ | $C^{3} L^{2} R^{2}$ |

: Electrical coefficients for derivative indices 2 through 6.

A finite signed-atom illustration can include the following distinct derivative and exponent choices.

| $r$ | $k$ | Weight $w$ |
|---:|---:|---:|
| $-6$ | $-4$ | $-5/4$ |
| $-3$ | $-1$ | $3/8$ |
| $0$ | $0$ | $-9/40$ |
| $1$ | $2$ | $4/5$ |
| $4$ | $8$ | $-3/5$ |
| $6$ | $20$ | $11/10$ |

: Illustrative signed support spanning initialized integrals and high derivatives. These atoms define a candidate family; no physical realization or conditioning result is implied.

Subsets of this list distinguish activation count from derivative order. A finite frequency domain, however wide, cannot certify intermediate cancellation surfaces or the positive-real condition on the entire right half-plane. Nor does a large range of individual term magnitudes establish a bound on \eqref{eq:conditioning}.

For completeness, the cubic Routh array for $ds^3+as^2+bs+c$ has first column
$d,a,(ab-dc)/a,c$. With $a,b,c,d>0$, all entries are positive exactly when $ab>dc$. Equality gives the imaginary pair in \eqref{eq:marginal}. This condition addresses the homogeneous poles; numerator zeros and the chosen effort--flow port still decide positive-realness. Higher-order polynomials require their full Hurwitz conditions or another rigorous stability argument, such as the independently constructed passive state model with no undamped invariant subspace.

The economical coefficients also have a closed finite structure. Put $u=(a/c)s^2$. Then
\begin{align}
 P_{2m}(s)&=c\sum_{j=0}^{m}u^j+bs\sum_{j=0}^{m-1}u^j,\nonumber\\
 P_{2m+1}(s)&=(c+bs)\sum_{j=0}^{m}u^j.
 \label{eq:staircase-polynomial}
\end{align}
The finite sums, rather than a quotient with a removable singularity, define the expression at $u=1$. For odd order, every nontrivial root of $1+u+\cdots+u^m$ supplies additional roots in $s$. This makes explicit why the coefficient convention is no universal stability construction.

The coefficient tables catalogue admissible expressions rather than ready-made physical systems. Selecting entries still requires a declared law and checks of how its connected states behave.

# Impact construction, contact laws and release
\label{app:impact}

This appendix completes Section \ref{sec:core-impact}: exact coefficient support, exceptional observable orders, richer local laws, and the release event account.

## The impact driver: from hammer–anvil contact to higher-order coefficients
\label{sec:collision}

The principal example is a rotary impact driver whose hammer engages the anvil to deliver a torsional blow to a fastener. Two synthesis tasks arise. **Constructing the observed-motion equation** starts from four physical coordinates, eliminates the anvil and represents the complete forced scalar law across declared parameter domains. **Constructing richer contact and joint laws** asks what additional internal dynamics or observations determine further coefficients. The first task is solved exactly for the component laws below; Appendix \ref{sec:impact-constitutive} formulates the second. The seven- and nine-atom identities establish representations of the specified model, not a new constitutive law for contact.

### Contact, joint and observation boundary

Choose a driver bit coupled rigidly to the anvil on the modeled interval, driving an already seated fastener against a fixed workpiece. Include the bit and every co-rotating rigid output part in $J_a$. Place the effective twist and losses of the fastener, its interfaces and the workpiece attachment in the joint response $(k_j,d_j)$. In an impact-wrench configuration, a socket replaces the bit; its rigidly co-rotating inertia belongs in $J_a$, while any resolved socket twist requires its own compliance or additional states. Each configuration must declare that allocation once. The springs below represent effective deformation, not necessarily installed coil springs.

An incoming hammer state leads to engagement, compression, rebound and separation; the motor and clearance then prepare the next blow. The displayed constant-coefficient equations apply only to the smooth active-contact interval between engagement and release. Figure \ref{fig:collision} connects the rotary mechanism to that interval's lumped model.

Let $\theta_{h},\theta_{a}$ be hammer and anvil angles, with inertias $J_{h},J_{a}>0$. A contact deformation is $\delta=\theta_{h}-\theta_{a}-g$, where $g$ is the current clearance. During one active linear contact, choose its angular origin so that $g=0$. Write
\eqref{eq:collision-state}.

![Schematic rotary impact-driver mechanism and its active-contact abstraction. Matching colors identify hammer, anvil and rigid output, deforming contact, and effective joint response. The angular face clearance closes at engagement; the spring–damper laws apply on the indicated contact interval. Separate damper channels export heat from the reactive boundary.](figures/collision-boundary.pdf){#fig:collision width=100%}

\FloatBarrier

Figure \ref{fig:collision} shows the active mechanical boundary. All four contact and joint constants are positive here. The drive torque $u$ may be negligible during a short collision, but that is a declared interval assumption. A tightened joint can still deform elastically; absence of gross nut rotation does not imply $\theta_{a}=0$. Contact geometry, fixture compliance and the torque measurement location are part of the model. The hammer-mechanism study of [Wettstein, Grauberger and Matthiesen (2021)][wettstein] uses an impact-wrench setting. Its hammer–anvil and socket–joint distinction supplies the mechanism-level correspondence used here for the declared driver-bit boundary. This correspondence motivates a two-body spring--damper description; calibration must establish its parameters and response domain for the selected tool.

Eliminating $\theta_{a}$ gives the exact forced equation
\eqref{eq:collision-poly}.
The determinant of the two-by-two dynamic stiffness matrix proves this expression. The highest coefficient, $J_hJ_a$, records both resolved inertias. The coefficient of $D^2$ combines inertia–stiffness terms with $d_cd_j$, the product of the separate contact and joint dampings. Thus an apparently small coefficient contribution can encode an interaction between two physical regions. Both numerator and denominator matter: the physical hammer mobility is $Y_{h}(s)=sN(s)/P(s)$. Replacing it by $s/P(s)$ changes the driven system.

With positive constants and a grounded joint spring, the state store
$E=J_{h}\dot\theta_{h}^2/2+J_{a}\dot\theta_{a}^2/2+k_{c}\delta^2/2+k_{j}\theta_{a}^2/2$
is positive definite. Its derivative for $u=0$ is
$-d_{c}\dot\delta^2-d_{j}\dot\theta_{a}^2$. A trajectory on which this derivative stays zero has both velocities zero, and the equations then require both deflections zero. The finite linear system is therefore asymptotically stable. This proof concerns the physical realization, rather than a positivity rule for arbitrary polynomial coefficients.

### Normalization and exact coefficient support
\label{sec:collision-support}

For a concrete dimensional illustration, set
\begin{equation}
 J_{h}=\frac1{6250},\quad J_{a}=\frac1{10000}\ \mathrm{kg\,m^2},\quad
 k_{c}=k_{j}=1500\ \mathrm{N\,m},\quad
 d_{c}=\frac1{100},\ d_{j}=\frac1{50}\ \mathrm{N\,m\,s}.
 \label{eq:collision-values}
\end{equation}
Angles are dimensionless radians. Dividing $P$ by $J_{h}J_{a}$ gives exactly
$s^4+(725/2)s^3+39387500s^2+2812500000s+140625000000000$ in the corresponding SI time units. The reduced contact inertia is $J_{h}J_{a}/(J_{h}+J_{a})=1/16250\ \mathrm{kg\,m^2}$. An initially stationary anvil and hammer speed $600\ \mathrm{s^{-1}}$ have hammer kinetic energy $144/5\ \mathrm J$. These are assumed values, not observations. Changing joint stiffness to $1000$ or $2200\ \mathrm{N\,m}$ requires changing every dependent coefficient; changing initial speed to $400$ or $800\ \mathrm{s^{-1}}$ does not change the linear operator.

The contact reference also gives an exact coefficient comparison. Put $J_*=J_hJ_a/(J_h+J_a)$, use the economical coefficients $(k_c,d_c,J_*,J_*d_c/k_c,J_*^2/k_c)$, and multiply $P$ by $\gamma=J_*^2/(k_cJ_hJ_a)$. The complete driven relation becomes $\gamma P(D)\theta_h=\gamma N(D)u$; the source torque and its differentiated contributions remain specified. Dividing the five resulting coefficients by those reference coefficients gives, for \eqref{eq:collision-values},
\begin{equation}
 (w_0,w_1,w_2,w_3,w_4)
   =\left(\frac{40}{169},\frac{120}{169},
           \frac{3151}{1950},\frac{29}{13},1\right).
 \label{eq:collision-weights}
\end{equation}
Here $w_4=1$ is an equation-normalization choice, not an independently recovered physical parameter. These weights describe one parameter point; transferring them to a different joint requires the parameter dependence derived below.


To construct a law across configurations, choose the joint references $(a,b,c)=(J_{a},d_{j},k_{j})$ and let
$h=J_{h}/J_{a}$, $\beta=k_{c}/k_{j}$, $\eta=d_{j}/d_{c}$,
$\rho=d_{j}^2/(J_{a} k_{j})$. Dividing both sides of \eqref{eq:collision-poly} by $k_{c}$ puts its left-hand coefficients in the dimensions of \eqref{eq:template}; its forcing remains $N(D)u/k_c$. An exact representation is
\eqref{eq:collision-groups}.
This chart treats the four independent groups as independent. On a different experimental path, contact stiffness, contact damping and both inertias may be fixed while $k_{j},d_{j}$ vary. Then $\beta$ is no longer independent: $k_{j}=d_{j}^2/(J_{a}\rho)$ and $d_{j}=d_{c}\eta$. Use the fixed normalization $\gamma=J_*^2/(k_cJ_hJ_a)$ from \eqref{eq:collision-weights}. The coefficient of $s^k$ in $\gamma P$ is $\sum_{r,\ell}w_{r,\ell,k}A_{r,k}\eta^\ell$, with:

| $k$ | $(r,\ell)$ | Exact weight $w_{r,\ell,k}$ |
|---:|:-----------|:-------------------------------------------------|
| $0$ | $(1,0)$ | $\gamma k_c$ |
| $1$ | $(0,0)$ | $\gamma k_c$ |
| $1$ | $(1,1)$ | $\gamma d_c^2/J_a$ |
| $2$ | $(0,0)$ | $\gamma k_c(J_h+J_a)/J_a$ |
| $2$ | $(0,1)$ | $\gamma d_c^2/J_a$ |
| $2$ | $(1,2)$ | $\gamma J_h d_c^2/J_a^2$ |
| $3$ | $(0,1)$ | $\gamma d_c^2(J_h+J_a)/J_a^2$ |
| $3$ | $(0,2)$ | $\gamma J_h d_c^2/J_a^2$ |
| $4$ | $(0,2)$ | $\gamma J_h d_c^2/J_a^2$ |

: Nine exact atoms on the fixed-contact, fixed-inertia manifold, with dimensionless constant weights under the stated normalization.

To verify the table directly, use $A_{1,0}=k_{j}$, $A_{0,1}=d_{j}$, $A_{1,1}=J_{a} k_{j}/d_{j}$, $A_{0,2}=J_{a}$, $A_{1,2}=J_{a}^2k_{j}/d_{j}^2$, $A_{0,3}=J_{a}^2/d_{j}$, and $A_{0,4}=J_{a}^3/d_{j}^2$. Each term of $P$ then has exactly the listed dependence. If damping is fixed as well and only $k_{j}$ varies, the required supports are $\{1\}$, $\{0,1\}$, $\{0,1\}$, $\{0\}$, $\{0\}$, respectively: seven atoms suffice. Extending that one-coordinate conclusion to independently variable damping fails algebraically.

Writing the fixed joint damping as $d_0$, the seven weights in that support order are
\begin{align}
 w_{1,0}&=\gamma k_c,\qquad
 (w_{0,1},w_{1,1})=\gamma\left(k_c,\frac{d_cd_0}{J_a}\right),\nonumber\\
 (w_{0,2},w_{1,2})&=\gamma\left(
 \frac{k_c(J_h+J_a)+d_cd_0}{J_a},\frac{J_hd_0^2}{J_a^2}\right),\nonumber\\
 (w_{0,3},w_{0,4})&=\frac{\gamma}{J_a^2}
 \left([J_h(d_c+d_0)+J_ad_c]d_0,\ J_hd_0^2\right).
 \label{eq:seven-weights}
\end{align}
Here the two subscripts denote $(r,k)$. Distinct powers of positive $k_j$ are linearly independent on an open interval, so a constant-weight support lacking one of these nonzero powers cannot represent that entire interval. The economical single coefficient at each order fails this requirement. Allowing extra atoms only at low orders still misses the constant high-order coefficients; shifting the high-order supports to include $r=0$ repairs that particular defect. Two adjacent atoms at every order or three atoms around each economical choice contain redundant powers on this one-coordinate path. A wider sparse window can contain the seven-atom solution, but a finite search window is not a proof of global optimality.

The four independent groups also specify the normalized state dynamics exactly. With $\xi=t/\tau$, $\tau=J_a/d_j$, and $z=(\theta_h/Y,\tau\dot\theta_h/Y,\theta_a/Y,\tau\dot\theta_a/Y)^T$, the unforced equation is
\begin{equation}
 \frac{dz}{d\xi}=
 \begin{pmatrix}
 0&1&0&0\\
 -\beta/(h\rho)&-1/(h\eta)&\beta/(h\rho)&1/(h\eta)\\
 0&0&0&1\\
 \beta/\rho&1/\eta&-(\beta+1)/\rho&-(1+1/\eta)
 \end{pmatrix}z .
 \label{eq:collision-normalized}
\end{equation}
Conversely any positive $J_a,\tau,h,\rho,\beta,\eta$ reconstruct
$d_j=J_a/\tau$, $J_h=hJ_a$, $k_j=J_a/(\tau^2\rho)$, $k_c=\beta k_j$, and $d_c=d_j/\eta$. Thus the dimensionless groups leave dimensional scale freedoms. Changing the stiffness reference from joint to contact sends $(\beta,\rho)$ to $(1/\beta,\rho/\beta)$ with the other physical ratios unchanged; physically interchanging two unequal springs is a different operation.

The contribution distinguishing the nine-atom construction from an eight-atom candidate is $d_cd_j$ in the coefficient of $s^2$. In the table it has $(k,r,\ell)=(2,0,1)$. A candidate that omits it has a nonzero coefficient discrepancy on the positive parameter domain; it does not show that the physical term is absent. A small response error can coexist with an incorrectly recovered small coefficient, particularly when the response is insensitive to that coefficient.

| Parameter domain | Fixed description | Exact claim |
|:--------------------------------|:-----------------------------------|:-----------------------------------|
| All six positive component parameters | Four independent ratios and two dimensional scales; $P/k_c$, $N/k_c$ | The coefficient functions in \eqref{eq:collision-groups} reproduce the complete driven model |
| Fixed inertias and contact constants; variable $k_j,d_j$ | Joint references, $(\rho,\eta)$, fixed $\gamma$ | The nine atoms reproduce $\gamma P$ throughout this two-coordinate domain |
| The preceding domain with $d_j=d_0$ fixed | One varying coordinate and the same equation scale | The seven weights in \eqref{eq:seven-weights} reproduce $\gamma P$ throughout the stiffness interval |

: Exact coefficient representations under distinct parameter restrictions. Their source operators and compatible initial data are retained.

These are symbolic identities over the stated domains, stronger than agreement at the illustrative component values. They establish representation and exact transfer within each domain without refitting. They do not establish recovery from noisy hammer measurements or transfer to a different topology. Changing the reference chart transports the weights by \eqref{eq:reference}; changing the physical parameters outside the restriction requires the larger coefficient law. The following comparisons give those domains an impact-driver interpretation.

| Physical change during a declared comparison | Coefficient law and prediction |
|:-----------------------------------|:-----------------------------------------------|
| Scale the complete incoming state by $\lambda$; keep all components fixed and $u=0$ on the common active interval | $P$ and $N$ stay fixed. Angles, rates and torque scale by $\lambda$; physical powers scale by $\lambda^2$. Changing speed alone gives this result only when the other prepared coordinates scale compatibly. |
| Vary $k_j$ with $J_h,J_a,k_c,d_c,d_j$ fixed | The seven weights predict $\gamma P$ throughout the stiffness interval; use $\gamma N$ and the declared preparation for each response. |
| Vary $k_j,d_j$ independently with inertias and contact fixed | The nine atoms predict $\gamma P$ with the same fixed weights; $\gamma N$ changes according to the same component laws. |
| Vary contact properties independently of the joint | Use the full chart for $P/k_c$ and $N/k_c$. Richer constitutive dynamics require their own internal-state or observation information. |

: From a change in the impact mechanism to a prediction under one coefficient law. The scaling claim concerns a common smooth interval; engagement and release conditions remain separate.

A preload change is not automatically a known stiffness change: its relation to effective joint stiffness, damping and possible slip must be identified. For each comparison, establish the component parameters, sensor response and incoming state before the final prediction. Changing fitted weights independently at every joint setting would forfeit the claimed transferable law. The next subsection determines which initialized scalar order the resulting physical operator actually requires.

### Generic order and exact exceptions

Four independent coordinates are present, but a single observed angle does not always have order four. A hidden motion with $\theta_{h}=0$ must satisfy
$(d_{c}D+k_{c})\theta_{a}=0$ and
$(J_{a}D^2+d_{j}D+k_{j})\theta_{a}=0$. Consequently the exact cancellation surface is
\eqref{eq:collision-hidden}.
Away from this surface the hammer observation has four independent jets and the forced transfer is generically of degree four. On it the mode $s=-k_{c}/d_{c}$ is invisible at that observation. For the illustrative normalized choice
$J_{h}=J_{a}=k_{c}=d_{c}=k_{j}=1$, $d_{j}=2$,
\begin{equation}
 N(s)=(s+1)(s+2),\qquad
 P(s)=(s+1)(s^3+3s^2+2s+1).
 \label{eq:hidden-example}
\end{equation}
Every component remains positive. Thus a universal claim of fourth-order necessity for all positive components is false; generic necessity and exact exceptional surfaces are the correct statements. A visible trajectory can also lack a mode because its amplitude happens to vanish, which does not reduce the system's generic order.

There is a further distinction within the cancellation surface. A double zero of $N$ at $s=-k_c/d_c$ requires $N'=0$ there as well. Solving these two conditions gives
\begin{align}
 k_j&=\frac{J_ak_c^2}{d_c^2}-k_c,&
 d_j&=\frac{2J_ak_c}{d_c}-d_c,& J_ak_c&>d_c^2,\nonumber\\
 N(s)&=\frac{J_a}{d_c^2}(d_cs+k_c)^2,\nonumber\\
 P(s)&=\frac{(d_cs+k_c)^2}{d_c^2}
       (J_aJ_hs^2+J_ad_cs+J_ak_c-d_c^2).
 \label{eq:collision-double}
\end{align}
The inequality makes both joint coefficients positive. The reduced zero-state angle transfer has degree two on this subset; it has degree three generically elsewhere on the cancellation surface. This additional cancellation does not remove every initialized natural contribution.

For example, in consistent normalized units choose $J_h=1$, $J_a=2$, $k_c=d_c=k_j=1$ and $d_j=3$. Then
\begin{equation}
 \frac{\Theta_h(s)}{U(s)}=\frac{2}{2s^2+2s+1},\qquad
 (D+1)(2D^2+2D+1)\theta_h=0\quad(u=0).
 \label{eq:collision-double-example}
\end{equation}
In state order $(\theta_h,\dot\theta_h,\theta_a,\dot\theta_a)$ the realization matrix is
\begin{equation}
 F=\begin{pmatrix}
 0&1&0&0\\-1&-1&1&1\\0&0&0&1\\
 1/2&1/2&-1&-2
 \end{pmatrix},\quad
 B=\begin{pmatrix}0\\1\\0\\0\end{pmatrix},\quad
 C=\begin{pmatrix}1&0&0&0\end{pmatrix}.
 \label{eq:collision-double-state}
\end{equation}
The controllability and observability matrices each have rank three. Direct multiplication gives $C(F+I)(2F^2+2F+I)=0$, whereas $C(2F^2+2F+I)=(-1,0,2,2)$. The preparation $(1,-1,0,1)$ has the exact free motion $\theta_h=e^{-t}$, $\theta_a=te^{-t}$, verified by substitution into both body equations. Its hammer motion is absent from the zero-state quadratic transfer. Thus four physical states, a third-order initialized scalar output and a second-order driven transfer coexist with positive components. The anvil and contact stores remain in the physical work account.

A fixed anvil gives $J_{h}\ddot\theta_{h}+d_{c}\dot\theta_{h}+k_{c}\theta_{h}=u$, a second-order equation, with a generally nonzero fixture reaction. A massless hammer with $u=0$ instead imposes $\tau_{c}=0$. For $d_{c}>0$, this leaves $\delta(t)=\delta(0)e^{-k_{c}t/d_{c}}$ alongside the second-order anvil motion. The hammer angle can therefore remain third order. It becomes identical to the second-order anvil motion only with compatible $\delta(0)=0$, or under a further contact constraint. Setting an inertia to zero after assuming four arbitrary initial jets is invalid.

A compliant boundary with its own inertia adds another displacement and velocity, hence up to six states. A rational joint impedance likewise adds its internal states. Fixing the anvil suppresses the motion needed to identify those joint dynamics. The limiting model must be derived from the constrained equations, with preparation and observation specified; a small positive inertia does not justify a uniform lower-order law near resonance.

## Contact laws, preparation and release
\label{sec:contact-synthesis}

The coefficient construction in Appendix \ref{sec:collision} and the recovery conditions in Appendix \ref{sec:identification} now delimit which additional contact laws, preparations and release events those coefficients can describe. The following developments retain their distinct constitutive information and event boundaries.

### Competing contact descriptions

An instantaneous rigid-impact map predicts a velocity jump and restitution but no resolved contact waveform. For a one-dimensional free pair with initial velocities $u_1,u_2$, restitution $e$ gives
\begin{equation}
 v_1^+=\frac{(m_1-em_2)u_1+(1+e)m_2u_2}{m_1+m_2},
 \qquad
 v_2^+=\frac{(1+e)m_1u_1+(m_2-em_1)u_2}{m_1+m_2}.
 \label{eq:rigid-map}
\end{equation}
These follow from signed momentum and the specified relative-velocity law, not an energy premise. For $u_2=0$, $u_1>0$, the striker stops at $m_1=e m_2$ and retains forward motion above that ratio. A fixture or accumulating penetration boundary invalidates the free-pair assumption. An oblique frictionless contact applies the impulse along its declared normal and leaves the tangential relative component unchanged; offset rotation requires \eqref{eq:effective-mass}. For a finite compliant regularization of a constant-mass body, integrating $F\cdot v$ gives the impulse work $J\cdot(v^-+v^+)/2$. Multiplying a delta impulse by an unspecified discontinuous velocity is not an independent work definition. A linear compliant contact predicts a duration, a waveform and reversible spring storage with viscous dissipation. A nonlinear contact such as
\begin{equation}
 \tau_{c}=k_{c}\delta+d_{c}\dot\delta+\beta k_{c}\frac{\delta^3}{\delta_*^2},\quad
 U_{c}=\frac{k_{c}\delta^2}{2}+\frac{\beta k_{c}\delta^4}{4\delta_*^2}
 \label{eq:cubic-contact}
\end{equation}
retains four first-order mechanical states but has no global constant-coefficient fourth-order scalar law. Its tangent stiffness is
$k_{c}[1+3\beta\delta^2/\delta_*^2]$; illustrative values $\beta=1/5$, $\delta_*=1/25$ define one model only. A Hertz-type fractional power law has a local tangent only on its active deformation domain and needs a separate release rule.

A candidate scalar extension may use $B_k(\delta,p)$ depending on deformation and preload $p$, or an explicit nonlinear remainder $g(\delta,\dot\delta,p)$. It must be derived or identified with its own regularity and initialization conditions. Eliminating a nonlinear internal coordinate can introduce products of derivatives, local inversion conditions and singularities; assigning variable weights to a linear polynomial does not prove equivalence to the four-state contact model.

A higher-order linear scalar model can represent eliminated linear modes or a finite-band rational contact response. It cannot, merely by adding derivatives, replace engagement gates, backlash, partial-edge geometry, dry friction, adhesion, plastic deformation, evolving preload or an amplitude-dependent force law. Resolved inertias must not be counted again in a contact correction. If an exact contact transfer is expanded as a derivative series, convergence of that series and admissible initial history must be proved; retaining a finite internal-state realization is often the clearer construction.

These distinctions determine the comparisons that are meaningful:

| Description | What can be predicted within its assumptions | What remains unspecified |
|:---------------------|:------------------------------------|:----------------------------------|
| Rigid restitution | Outgoing velocities and impulse | Contact duration, peak torque, within-contact power |
| Linear compliant two-body model | Motion, torque and signed power during active contact | Release physics and unmodeled boundary modes |
| Nonlinear compliant model | Amplitude-dependent waveform under a declared force law | Constitutive transfer outside the declared law |
| Higher-order scalar linear model | A chosen observation and compatible derivatives | Component interpretation, other ports and preparation unless realized |

: Collision descriptions and their distinct scopes.

For a linear system with proportionally scaled initial state and input, motions and torques scale by the amplitude factor, while physical powers scale by its square. Failure of this scaling can distinguish nonlinear contact, altered boundary conditions or instrumentation effects; it does not identify the cause uniquely. Compare contact duration, peak torque, outgoing speeds, compression and rebound phases, instantaneous signed power and its peak and root-mean-square values. A global work match can conceal a wrong waveform and is not an order-selection criterion.

### Initial states, repeated engagement and measurement
\label{sec:impact-measurement}

The four jets of $q=\theta_{h}$ determine the hidden anvil coordinates only when the following matrix is nonsingular:
\begin{equation}
 \begin{pmatrix}
 k_{c}&d_{c}\\-d_{c}k_{j}/J_{a}&k_{c}-d_{c}d_{j}/J_{a}
 \end{pmatrix}
 \binom{\theta_{a}}{\dot\theta_{a}}
 =\binom{J_{h}\ddot q+k_{c}q+d_{c}\dot q}
 {J_{h}q^{(3)}+k_{c}\dot q+d_{c}(1+J_{h}/J_{a})\ddot q}.
 \label{eq:collision-jet}
\end{equation}
Here $u=0$ and the angle origin is the active-contact origin. The determinant is \eqref{eq:collision-hidden}. Close to that surface a formally invertible reconstruction can be practically useless. Noisy jerk is especially dangerous: differentiating the angle three times amplifies high-frequency errors, and stable coefficients do not bound the response to an arbitrarily corrupted initial jet.

During free flight set the contact torque to zero, evolve both bodies and the joint, and include the motor if present. Re-engagement occurs at a root of the gap condition with the appropriate approaching velocity. States remain continuous at an uncompressed engagement without an imposed impulse; higher jets generally jump because the vector field changes. A motor acting between contacts does not justify a motor-free model of an entire impact sequence. More than a small number of engagements, frictional changes and evolving joint properties require their own constitutive model.

Which measurements separate contact dynamics from the frequency-dependent joint against which the impact driver strikes [OP-LR08-01]? A slow torsional rig with two encoders and a contact-torque sensor can compare independently changed contact compliance and support stiffness. Hammer agreement with anvil disagreement rejects a claimed internal reconstruction. The separation criterion below retains calibrated response and correlated uncertainty. [*Hidden States and Unassigned Work*][companion] develops the apparatus and support observations; correspondence to a commercial driver requires its own component allocation, preparation and bandwidth.

The exact hidden-motion alternative on \eqref{eq:collision-hidden} makes the required internal sensor concrete. Two preparations differing by $\Delta\theta_a(t)=A e^{-k_c t/d_c}$, with $A\ne0$ and the corresponding anvil velocity, have identical hammer angle and contact torque: $k_c\Delta\theta_a+d_c\Delta\dot\theta_a=0$. An anvil encoder separates them at time $t$ if $|A|e^{-k_c t/d_c}$ exceeds the sum of their angle-error bounds. A contact-torque channel alone cannot detect this particular motion. Further derivatives of the identical hammer-angle trace cannot recover it either. Away from the cancellation surface, compare the complete predictions $Ce^{Ft}x_0$ and the driven convolution from each calibrated contact/boundary model using \eqref{eq:measurement-separation}; allowing fixture parameters to vary can cause those prediction sets to overlap even when a nominal observability matrix has full rank.

### Separate contact and joint constitutive families
\label{sec:impact-constitutive}

The second synthesis task supplies dynamics within the contact or joint. Its coefficients require extra information: a declared internal-state model or observations that identify its parameters independently of the resolved body motion. A scalar equation for hammer angle obtained by eliminating the anvil differs from a higher-derivative constitutive proposal for the contact itself. To formulate the latter, introduce positive unresolved-contact reference scales $(J_*^c,d_*^c,k_*^c)$ and independent joint scales $(J_*^j,d_*^j,k_*^j)$. The superscripts identify different physical regions, not derivatives. For $\ell\in\{c,j\}$ define
\begin{equation}
 A^\ell_{r,k}=(J_*^\ell)^{k-1+r}(d_*^\ell)^{2-k-2r}(k_*^\ell)^r,
 \qquad B_k^\ell=\sum_r w^\ell_{r,k}A^\ell_{r,k}.
 \label{eq:constitutive-family}
\end{equation}
Each coefficient has torque times time to power $k$ per angular deformation. The economical contact sequence has the six coefficients
$k_*^c,d_*^c,J_*^c,J_*^cd_*^c/k_*^c,(J_*^c)^2/k_*^c,(J_*^c)^2d_*^c/(k_*^c)^2$
at orders zero through five. It remains a convention, not six new components. In particular, $J_*^c$ must represent an unresolved local inertia or an explicitly modeled internal contact mode; assigning either resolved body inertia to it again counts that inertia twice.

On each smooth active interval, the candidate laws are
\begin{equation}
 \tau_c=\chi_c\sum_{k=0}^{N_c}B_k^c\delta^{(k)},\qquad
 \tau_j=\sum_{k=0}^{N_j}B_k^j\theta_a^{(k)},\qquad \chi_c\in\{0,1\}.
 \label{eq:constitutive-candidates}
\end{equation}
The contact gate $\chi_c$ is fixed within that interval and supplied by an engagement/release law at its boundaries. Derivatives of a switching gate are not silently included in the smooth constitutive equation. Orders zero and one recover separate spring--damper descriptions. Varying their two sets of coefficients together would conceal whether a missing mode belongs to contact or support. The two-body balances still have to be solved together with these constitutive laws; their combined scalar order is not simply either constitutive truncation index.

A constructed linear internal contact model instead has, for example, $\dot z_c=F_cz_c+G_c\delta$ and $\tau_c=H_cz_c+K_c\delta$. Its zero-state dynamic stiffness is
$\mathcal K_c(s)=K_c+H_c(sI-F_c)^{-1}G_c=P_c(s)/Q_c(s)$. For initialized elimination take $Q_c(s)=\det(sI-F_c)$ and $P_c(s)=K_cQ_c(s)+H_c\operatorname{adj}(sI-F_c)G_c$ before cancelling common factors. Eliminating the states on a smooth interval gives
\begin{equation}
 Q_c(D)\tau_c=P_c(D)\delta,\qquad
 Q_j(D)\tau_j=P_j(D)\theta_a,
 \label{eq:constitutive-rational}
\end{equation}
with initial derivatives restricted by the respective state-to-jet maps. The joint uses the analogous unreduced construction. A reduced pair is sufficient only when every removed natural contribution is invisible at this output or excluded by the preparation. Zero-state reduction alone cannot remove a separately prepared natural response. A Kelvin--Voigt direct term or an explicit inertial term can be retained alongside the internal-state model when its port realization is declared.

The location of either rational law enters the observed coefficients explicitly. With fixed support, fixed active contact, and the same two body inertias, the zero-state equations are
\begin{equation}
 \begin{pmatrix}
 J_hs^2+\mathcal K_c&-\mathcal K_c\\
 -\mathcal K_c&J_as^2+\mathcal K_c+\mathcal K_j
 \end{pmatrix}
 \begin{pmatrix}\Theta_h\\\Theta_a\end{pmatrix}
 =\begin{pmatrix}U\\0\end{pmatrix}.
 \label{eq:impact-block-matrix}
\end{equation}
Expanding the determinant cancels the two $\mathcal K_c^2$ terms. Multiplying by $Q_cQ_j$ gives the complete hammer law
\begin{align}
 \mathcal P={}&J_hJ_as^4Q_cQ_j+(J_h+J_a)s^2P_cQ_j
                   +J_hs^2P_jQ_c+P_cP_j,\nonumber\\
 \mathcal N={}&J_as^2Q_cQ_j+P_cQ_j+P_jQ_c,\qquad
 \mathcal P(D)\theta_h=\mathcal N(D)u.
 \label{eq:impact-block-synthesis}
\end{align}
The numerator is the first diagonal cofactor multiplied by $Q_cQ_j$. Choosing $Q_c=Q_j=1$, $P_c=k_c+d_cs$ and $P_j=k_j+d_js$ recovers every coefficient and the forcing in \eqref{eq:collision-poly}. For internal-state laws use their unreduced pairs and compatible initial jets; retain additional states before deciding which factors can be removed. Contact coefficients and joint coefficients enter different terms of both operators, so specifying where a new law acts is part of synthesis. The resolved inertias $J_h,J_a$ remain outside those local laws. This construction predicts the hammer equation from independently supplied local information; it does not uniquely recover that information from hammer motion alone. The anvil counterexample and preparation conditions above still apply.

If $\mathcal K_c$ is analytic at the expansion point, its infinite Taylor series is an exact analytic identity only inside the disk to the nearest uncancelled pole. Identifying that series with a time-domain derivative operator further requires convergence on the chosen signals and transport of the initial state or history. For a finite polynomial $T_N$, the exact transfer discrepancy is $(P_c-Q_cT_N)/Q_c$. Thus a finite derivative family is a conditional candidate on a declared response domain, not an exact replacement of arbitrary rational memory. Negative derivative indices additionally require the initialized histories of Appendix \ref{sec:histories}. A repeatable slow tail may motivate their investigation, but cannot determine their integration constants.

The physical contact power remains $\tau_c\dot\delta$. Its formal decomposition into $B_k^c\delta^{(k)}\dot\delta$ does not make each summand a separately accessible port or a physical store. An instantaneous contribution fraction can be defined as the absolute value of one summand divided by the sum of absolute values, only when that denominator is nonzero; it is a diagnostic of the chosen representation and normalization. Model comparison can use independently measured torque, motion, phase and instantaneous physical power, with coefficient estimation and final conditions kept separate. It cannot use the integrated formal term works to choose weights or derivative order.

The practical comparison asks which repeatable features of the impact response are explained by additional linear dynamics and which require a changing contact or joint law. Tuned linear pulse shape, phase and unresolved linear modes may then receive a rational constitutive explanation; resolved rebound may predict restitution rather than impose it. None of these constructions removes release logic, partial engagement, backlash, preload-dependent microslip or an amplitude-dependent deformation law. Stable response and port passivity require the whole declared interconnection. A direct physical contact law of polynomial degree above two faces the same global passivity obstruction as the electrical law proved in Appendix \ref{sec:rf}, with torque and angular rate replacing voltage and current.

Additional contact information can take several distinct forms. A resolved bending mode supplies further displacement and velocity states; an offset rigid contact changes effective inertia; penetration memory and damage require their own internal coordinates or event laws. Appendix \ref{sec:contact-extensions} derives these distinctions for teeterboard, club--ball and hammer--nail systems, including \eqref{eq:effective-mass}. They identify what must be supplied before extending the impact-driver coefficients: a component law and its preparation, a geometric inertia map, or a switching rule with its state transport.

### What remains when the blow releases?
\label{sec:impact-release}

The blow ends when contact releases. What remains stored, what returns to the mechanism, and what leaves through the support [OP-LR03-01]? At zero contact torque in the linear spring--damper model,
\begin{equation}
 \delta=-\frac{d_{c}}{k_{c}}\dot\delta,\qquad
 U_{c}(t_{e}^-)=\frac{d_{c}^2\dot\delta(t_{e}^-)^2}{2k_{c}}.
 \label{eq:release}
\end{equation}
This store is positive unless relative speed vanishes. Consider the explicit deletion model: the two body states and joint store remain continuous at $t_e$, the contact store is removed, and no finite or impulsive release transfer is supplied. Bounded regular port powers have vanishing integrals on a shrinking event interval. Independent event-side store evaluation therefore gives
\begin{equation}
 \Delta E_{e}=-U_c(t_e^-),\qquad
 \sum_\ell W_{\ell,e}^{\mathrm{declared}}=0,\qquad
 r_{E,e}=-\frac{d_c^2\dot\delta(t_e^-)^2}{2k_c}.
 \label{eq:release-residual}
\end{equation}
The removed store has positive magnitude; the residual is negative with power positive into the boundary. The calculation checks the torque-zero condition, event-side continuity, the spring store and the regular port integrals. The physical destination and a constitutive law for the release remain unresolved.

A slow torsional rig with encoders and a torque sensor can locate the release event and resolve the remaining deformation. Independently calibrated stiffness and pre-release angle determine the store; a positive lower bound must survive angle, stiffness and timing uncertainty. [*Hidden States and Unassigned Work*][companion] develops retained material states, destination alternatives, repeated-event accounts and the finite observation window. A fixed support can carry torque with zero work; support transfer needs both torque and motion.

This comparison connects the synthesized active-contact law to the event at which its description changes. The separate port works follow in Appendix \ref{sec:work}. The energy outcome does not choose coefficient weights or derivative order.

## Contact applications with additional states
\label{sec:contact-extensions}

A rigid teeterboard with known actuator forcing can be represented by angle and rate. Adding a bending amplitude adds a second-order mode; adding a finite activation time adds a first-order state. Leg compression, changing lever arms and unilateral contacts then produce a nonlinear hybrid system. A model that imposes the measured endpoint cannot independently validate the launch. Timing, recoil, support force and actuator/leg extension should be predicted on separate conditions. Pivot and stop impulses belong in the momentum ledger even when their ideal work vanishes. Whether fixture coupling, bending or actuator delay explains a discrepancy remains an identification question.

For a club--ball encounter with impact normal $n$ and offset $r$ from the head center of mass, rigid-body mechanics gives
\begin{equation}
 \frac1{m_{\mathrm{eff}}}=\frac1{m_{h}}
 +(r\times n)^TI_{h}^{-1}(r\times n).
 \label{eq:effective-mass}
\end{equation}
In a planar case with offset $d$ and radius of gyration $k_{g}$, this is $m_{h}/(1+d^2/k_{g}^2)$. The normal impulse with restitution $e$ is
$J=(1+e)v_{\mathrm{rel}}/(1/m_{\mathrm{eff}}+1/m_{b})$ for initially closing contact and a declared fixed normal. A compliant realization resolves its duration and signed powers. Shaft bending in two planes, torsion and longitudinal motion add independent modal states or a distributed impedance. A handle-response exclusion requires comparing contact duration with $\ell/c_{\mathrm{mode}}$ for each relevant wave class. A vibration node, center of percussion and a wave-arrival condition are different mechanisms. Grip wrench, acceleration, jerk and impulse must be referred to colocated channels. Modal convergence, grip compliance, acoustic loss and actual hardware discrimination remain unresolved.

A hammer--nail boundary can accumulate penetration. A depth-memory coordinate such as
$s_{\max}(t)=\max_{u\leq t}s(u)$ distinguishes advancing and retreating force laws and cannot be replaced by an elastic spring without changing the model. Support impedance can reduce relative deformation without absorbing work at a fixed support. For a rod, the ratio of transfer duration to round-trip wave time, $\kappa_{t}=t_{\mathrm{transfer}}/(2\ell/c)$, distinguishes a slow regime from a first-transient regime requiring distributed or modal dynamics. Rate dependence, friction, plasticity, orientation under matched impact speed and finite support motion require explicit laws. A small striker mass ratio alone does not identify the penetration work or the derivative order.

Reversible, accumulating and terminal internal states are likewise distinct. A fuse, fracture or threshold device changes its connection graph when an internal condition is met. Transmitted, reflected and diverted outputs then depend on the post-event topology. A released store requires separately integrated finite event ports or an independently justified impulsive limit; a partition residual cannot be assigned by subtraction and called a measured destination. Failure-threshold distributions, nonmonotone damage histories and fragment or acoustic partition remain open. A single fixed-order smooth ODE cannot replace an unspecified threshold law.

Across these applications, simultaneous contacts, initially touching edges, chatter, support-port disappearance and terminal thresholds can make event ordering consequential. Four distinct discrepancies should be kept: the equation residual, the port-integration residual, the constitutive/model residual and the independently evaluated endpoint balance residual; impulse and partition identities add their own checks. Exact smooth-interval formulas do not settle convergence or physical meaning at an unresolved event. Accessible measurements differ by apparatus, and no hardware evidence is inferred from a proposed model.

A contact model needs more than the motion observed during engagement. Its preparation, separating event and any retained deformation determine what can be carried into the next part of the motion.

# Local composition and higher-order constructions
\label{app:construction}

This appendix derives local polynomial-pair composition, its mixed third-order example and the extended coefficient formulas supporting Section \ref{sec:core-recurrence}.

## Constructive synthesis at arbitrary order
\label{sec:construction}

There are three different continuations of a coefficient construction: extend its dimensional basis, add an independently specified physical state, or retain more coefficients of one rational transfer series. Only the second necessarily adds a physical coordinate, and even then the order visible at a selected output can decrease through cancellation. The following construction determines complete coefficient laws at successive orders before their physical work is audited. It gives an explicit answer beyond the impact driver's fourth-order example: each added relaxation branch supplies the extra physical information that its next coefficients require. The rational contact and joint models of Appendix \ref{sec:impact-constitutive} pose the analogous state-addition question. Applying the electrical construction mechanically requires the actual connection topology and effort–flow map; renaming an electrical parameter does not derive a contact law.

### Composing local operators and their coefficients
\label{sec:operator-composition}

Consider two linear two-terminal blocks on a smooth interval, with real constant polynomial laws
\begin{equation}
 P_j(D)i_j=Q_j(D)v_j,\qquad
 P_j(s)=\sum_kp_{jk}s^k,\quad Q_j(s)=\sum_kq_{jk}s^k.
 \label{eq:local-port-pair}
\end{equation}
Current enters the positive-voltage terminal of each block. Its zero-state impedance is $Z_j=P_j/Q_j$ wherever defined. The unreduced pair, its parameter domain and the physical state's compatible initial derivatives are part of the specification. Assume the interconnection is well posed under the declared drive. Independently prescribed sources and operating offsets are included separately below.

For series connection, $i_1=i_2=i$ and $v=v_1+v_2$. Apply $Q_2(D)$ to the first equation and $Q_1(D)$ to the second and add. For parallel connection, $v_1=v_2=v$ and $i=i_1+i_2$; apply $P_2(D)$ and $P_1(D)$ instead. Constant-coefficient operators commute, giving
\begin{align}
 P_{\rm series}&=P_1Q_2+P_2Q_1,& Q_{\rm series}&=Q_1Q_2,\nonumber\\
 P_{\rm parallel}&=P_1P_2,& Q_{\rm parallel}&=P_1Q_2+P_2Q_1.
 \label{eq:port-composition}
\end{align}
In either case the complete equation is $P(D)i=Q(D)v$. Polynomial multiplication gives explicit coefficient constructions:
\begin{equation}
 \begin{aligned}
 p_k^{\rm series}&=\sum_r(p_{1r}q_{2,k-r}+p_{2r}q_{1,k-r}),&
 q_k^{\rm series}&=\sum_rq_{1r}q_{2,k-r},\\
 p_k^{\rm parallel}&=\sum_rp_{1r}p_{2,k-r},&
 q_k^{\rm parallel}&=\sum_r(p_{1r}q_{2,k-r}+p_{2r}q_{1,k-r}).
 \end{aligned}
 \label{eq:port-coefficients}
\end{equation}
Coefficients outside each finite range are zero. These are exact laws on any parameter domain where the local pairs and connection constraints hold. With shared independent coordinates, products of finite monomial supports add their exponents; sums collect equal exponents and can cancel. Dimensional admissibility follows from the full port equation, while independence and minimality still require the specified dictionary, domain and normalization. In particular, coefficients of a current equation with a differentiated voltage input need not have the normalization of an equation driven directly by voltage.

If the local equations contain known source terms $g_j$, written $P_j(D)i_j=Q_j(D)v_j+g_j$, the series right-hand side additionally contains $Q_2(D)g_1+Q_1(D)g_2$; the parallel one contains $P_2(D)g_1+P_1(D)g_2$. Eliminated preparations instead restrict the output jets through the component states. The scalar equation alone can admit extra solutions unless those restrictions are imposed. A common polynomial factor is therefore inspected before cancellation. Multiplying an equation by a nonzero constant rescales both operators and every source term; $Q(0)=1$ is available only if $Q(0)\ne0$. The following example has $Q(0)=0$.

### A mixed series--parallel third-order construction
\label{sec:mixed-circuit}

Take a series LRC block $A$ and a parallel RC block $B$, joined in series. The input is their total voltage $u$ and the observation their common current $i$. Let $L,R,C,R_b,C_b>0$ be independent component parameters and $\tau_b=R_bC_b$. With charge $q$ in $A$ and voltage $v_B$ across $B$,
\begin{equation}
 L\ddot q+R\dot q+q/C=v_A,\qquad
 C_b\dot v_B+v_B/R_b=i,\qquad i=\dot q,\quad u=v_A+v_B.
 \label{eq:mixed-components}
\end{equation}
Differentiating the first law and retaining its charge preparation gives $P_A=L s^2+Rs+1/C$, $Q_A=s$. The second gives $P_B=R_b$, $Q_B=1+\tau_bs$. Series composition yields
\begin{align}
 P(s)={}&L\tau_bs^3+(L+R\tau_b)s^2
                  +(R+\tau_b/C+R_b)s+1/C,\nonumber\\
 Q(s)={}&s(1+\tau_bs),\qquad P(D)i=(D+\tau_bD^2)u.
 \label{eq:mixed-cubic}
\end{align}
The extra capacitor changes lower-order coefficients as well as the cubic coefficient; keeping only the latter would not describe this connection. This current equation has a differentiated input. Its third order does not contradict the polynomial driving-point obstruction in Appendix \ref{sec:rf}: the impedance is the rational function $P/Q$.

The independent states are $q,i,v_B$. Differentiate $L\dot i=u-Ri-q/C-v_B$ once and substitute $\dot v_B=i/C_b-v_B/\tau_b$. This gives the inverse state-to-jet map
\begin{equation}
 v_B=\tau_b\big[L\ddot i-\dot u+R\dot i+(1/C+1/C_b)i\big],
 \qquad q=C(u-L\dot i-Ri-v_B).
 \label{eq:mixed-initialization}
\end{equation}
Together with the initial $i$, these expressions transport any compatible preparation. The map from $(q,i,v_B)$ to $(i,\dot i,\ddot i)$ at fixed $u,\dot u$ has determinant $1/(CL^2\tau_b)>0$; it loses no state for positive finite parameters. Differentiating the first expression and imposing the branch law reproduces \eqref{eq:mixed-cubic}. Moreover $P(0)=1/C$ and $P(-1/\tau_b)=-R_b/\tau_b$, so $P,Q$ share no factor on this domain. A zero-component boundary is a separate limiting realization, not an admissible initialization of this three-state formula.

Connect this construction to the reference family using $(a,b,c)=(L,R,1/C)$, $\tau_0=L/R$, $S=R^2/L$ and independent dimensionless coordinates
$\rho=R^2C/L$, $\mu=R_b/R$, $\chi=C_b/C$. Then $\alpha=\tau_b/\tau_0=\mu\chi\rho$. For $p_k=[s^k]P$, the exact full-domain representation is
\begin{equation}
 \left(\frac{p_0}{S},\frac{p_1}{S\tau_0},
       \frac{p_2}{S\tau_0^2},\frac{p_3}{S\tau_0^3}\right)
 =\left(\rho^{-1},\ 1+\mu+\mu\chi,\ 1+\mu\chi\rho,\ \mu\chi\rho\right).
 \label{eq:mixed-support}
\end{equation}
Here $[p_k]=\Omega\,\mathrm{s}^{k-1}$ because $Q$ has inverse-time units: the derivative convention and input normalization, not merely the word current, determine the reference index. The powers $\rho^{-1},1,\rho$ correspond to $r=1,0,-1$ in $A_{r,k}$, with additional monomials in $\mu,\chi$ and constant weights on their positive domain. There is no remaining coefficient freedom once the five components and this normalization are fixed. For a transfer comparison, changing $R_b$ at fixed $C_b$ changes $\tau_b$; holding $\tau_b$ fixed instead requires a compensating change in $C_b$. Those experiments test different parameter paths.

### Adding physical relaxation states

Let positive current enter a battery's positive terminal. An energized coil of inductance $L>0$ transfers current through an ideal diode into a constant open-circuit voltage $V_{\mathrm{oc}}\geq0$, total series resistance $R_\Sigma\geq0$ and $N$ polarization branches with $R_j,C_j>0$:
\begin{equation}
 L\dot i+R_\Sigma i+V_{\mathrm{oc}}+\sum_{j=1}^N v_{j}=0,
 \qquad C_{j}\dot v_{j}=i-v_{j}/R_{j},\qquad \tau_{j}=R_{j}C_{j}.
 \label{eq:battery-state}
\end{equation}
The equation applies on a conducting interval with $i>0$, up to its first downward zero if one exists. Continuing it through negative current removes the diode constraint and describes a different system. An initial negative current is incompatible with this diode orientation: a reversed diode or a finite commutation circuit is a different declared topology. At zero current, the battery terminal voltage determines whether blocking or renewed conduction is admissible.

Eliminating the voltages gives, with $Q(s)=\prod_{j}(1+\tau_{j}s)$,
\begin{equation}
 \mathcal P(s)=(Ls+R_\Sigma)Q(s)
       +\sum_{j}R_{j}\frac{Q(s)}{1+\tau_{j}s},\qquad
 \mathcal P(D)i=-Q(D)V_{\mathrm{oc}}.
 \label{eq:battery-poly}
\end{equation}
For distinct active time constants the generic current order is $N+1$; three branches give fourth order. A current equation is shifted by one derivative index relative to the charge convention in \eqref{eq:rf-atoms}. The affine forcing and arbitrary initial branch voltages must be retained in a state-to-jet comparison.

Write $Q_N$ and $\mathcal P_N$ for the two polynomials with $N$ branches. A separately imposed series voltage $u$ changes the zero on the right of the first state equation to $u$. The complete eliminated driven law is then
\begin{equation}
 \mathcal P_N(D)i=Q_N(D)(u-V_{\mathrm{oc}}),\qquad
 \frac{I(s)}{U(s)}=\frac{Q_N(s)}{\mathcal P_N(s)}
 \quad\text{for zero-state perturbations}.
 \label{eq:battery-forcing}
\end{equation}
The constant operating offset and prepared branch states remain separate from that perturbation transfer. Specifying only $\mathcal P_N$ would omit the input operator. The current cannot be continued past a diode event without selecting the appropriate post-event law.

Hold $L,R_\Sigma$ and the existing branches fixed, and add a branch with independently declared $R_{N+1}>0$ and $\tau_{N+1}>0$. Splitting the new branch from the sum in \eqref{eq:battery-poly} gives
\eqref{eq:branch-synthesis}.
This is the series rule \eqref{eq:port-composition} with the new local pair $P_{N+1}^{\rm branch}=R_{N+1}$, $Q_{N+1}^{\rm branch}=1+\tau_{N+1}s$. Every old summand acquires the factor $1+\tau_{N+1}s$; the new summand is $R_{N+1}Q_N$. This proves the construction for any finite $N$. Define $Q_N=\sum_k q_k^{(N)}s^k$ and $\mathcal P_N=\sum_k p_k^{(N)}s^k$, with zero coefficients outside their polynomial ranges. Coefficient comparison yields
\eqref{eq:branch-coefficients}.
Thus adding a relaxation state changes lower-order coefficients as well as supplying a new highest derivative. Induction gives $q_N^{(N)}=\prod_j\tau_j$ and $p_{N+1}^{(N)}=L\prod_j\tau_j$. For positive finite parameters the unreduced degree is exactly $N+1$; initialized and reduced transfer orders still require the cancellation analysis in Appendix \ref{sec:battery}.

For one branch, the construction is already explicit:
\begin{equation}
 \mathcal P_1(s)=(R_\Sigma+R_1)
          +(L+R_\Sigma\tau_1)s+L\tau_1s^2,
 \qquad Q_1(s)=1+\tau_1s.
 \label{eq:branch-one}
\end{equation}
Adding a second branch gives a cubic current operator whose four coefficients are
\begin{align}
 p_0^{(2)}&=R_\Sigma+R_1+R_2,\nonumber\\
 p_1^{(2)}&=L+R_\Sigma(\tau_1+\tau_2)+R_1\tau_2+R_2\tau_1,\nonumber\\
 p_2^{(2)}&=L(\tau_1+\tau_2)+R_\Sigma\tau_1\tau_2,\qquad
 p_3^{(2)}=L\tau_1\tau_2.
 \label{eq:branch-cubic}
\end{align}
These coefficient identities hold across the positive parameter family. They are exact representations supplied by component laws; they are not recoveries from measured current alone. The resistance and time constant of each added branch are information that the second-order reference triple does not determine.

### Expressing the recurrence in the coefficient family

For $N\geq1$ and $R_\Sigma>0$, choose $(a,b,c)=(L,R_\Sigma,1/C_1)$ and write $\tau_0=L/R_\Sigma$ to distinguish the reference time from branch times. Let
\begin{equation}
 \rho=\frac{R_\Sigma^2 C_1}{L},\qquad
 \mu_j=\frac{R_j}{R_\Sigma},\qquad
 \chi_j=\frac{C_j}{C_1},\quad \chi_1=1,
 \qquad \alpha_j=\frac{\tau_j}{\tau_0}=\mu_j\chi_j\rho.
 \label{eq:branch-coordinates}
\end{equation}
The $2N$ independent component ratios can be taken as $\rho$, all $\mu_j$, and $\chi_2,\ldots,\chi_N$. Together with $L$ and $\tau_0$ they reconstruct $R_\Sigma=L/\tau_0$, $C_1=\rho\tau_0^2/L$, $R_j=\mu_jR_\Sigma$ and $C_j=\chi_jC_1$. This explicitly identifies the dimensional freedoms and prevents one ratio from being mistaken for a complete topology description.

The current coefficient $p_k^{(N)}$ has resistance times time to power $k$ as its unit. Its family therefore uses the shifted atoms
\begin{equation}
 \mathcal A_{r,k}^{(i)}=A_{r,k+1}
     =R_\Sigma\tau_0^k\rho^{-r},\qquad
 \widehat p_k^{(N)}=\frac{p_k^{(N)}}{R_\Sigma\tau_0^k},\qquad
 \widehat q_k^{(N)}=\frac{q_k^{(N)}}{\tau_0^k}.
 \label{eq:branch-atoms}
\end{equation}
The shift is a derivative convention, not an extra physical state. Applying it to \eqref{eq:branch-coefficients} gives
\eqref{eq:branch-normalized}.
The nonzero normalized base coefficients are $\widehat q_0^{(0)}=\widehat p_0^{(0)}=\widehat p_1^{(0)}=1$. The $N\geq1$ chart can be held fixed while this base is used for the algebraic induction. Every resulting coefficient is a finite polynomial in $\rho,\mu_j,\chi_j$. A term $\rho^\ell$ multiplies $\mathcal A_{-\ell,k}^{(i)}$; its remaining monomial in the independent ratios is the additional support. For example the cubic coefficient becomes
\begin{equation}
 p_3^{(2)}=\mu_1\mu_2\chi_2\,
                   \mathcal A_{-2,3}^{(i)},
 \qquad
 p_0^{(2)}=(1+\mu_1+\mu_2)\mathcal A_{0,0}^{(i)}.
 \label{eq:branch-support}
\end{equation}
Expanding these finite polynomials specifies constant numerical weights on the full independent-coordinate domain. Holding some ratios fixed consolidates their factors into different constant weights. The physical recurrence remains valid at $R_\Sigma=0$, but this divided reference chart does not; the original coefficients or another positive reference must then be used. Deleting a branch or imposing a singular capacitance also requires its physical state and preparation to be reconsidered.

### Higher expansion coefficients of a fixed rational system

Now let $H(s)=U(s)/V(s)$ with real polynomials $U=\sum_n u_ns^n$, $V=\sum_{j=0}^m v_js^j$ and $v_0\ne0$. On its disk of analyticity about zero, $H(s)=\sum_{n\geq0}d_ns^n$. Comparing coefficients in $VH=U$ gives
\begin{equation}
 d_n=\frac{u_n-\sum_{j=1}^{\min(m,n)}v_jd_{n-j}}{v_0},
 \qquad u_n=0\ \text{above the degree of }U.
 \label{eq:series-synthesis}
\end{equation}
This determines successively higher expansion coefficients from one fixed rational model. For the two-state inductor of Appendix \ref{sec:rf}, $U=R+sL$ and $V=1+RC_ps+LC_ps^2$ give $d_0=R$, $d_1=L-R^2C_p$ and $d_n=-RC_pd_{n-1}-LC_pd_{n-2}$ for $n\geq2$. The full coefficients and exact finite remainder are retained in \eqref{eq:inductor-coefficients} and \eqref{eq:rational-remainder}. No additional state is inferred from the expansion index. The nearest uncancelled pole bounds the Taylor disk; applying an infinite derivative series to a signal also requires convergence and its initialized interpretation.

Finally, $A_{r,k+1}=\tau A_{r,k}$ extends a dimensional basis element. It supplies neither the new branch data in \eqref{eq:branch-synthesis} nor the rational denominator in \eqref{eq:series-synthesis}. These three recurrences answer different synthesis questions. Their exact domains and state interpretations must accompany any proposed higher-order continuation. Appendix \ref{sec:distributed} extends the comparison to finite ladders and rational candidates for infinite-dimensional laws, retaining the discrepancy and field or history data that increasing coefficient order alone does not determine.

The constructive step is to add specified component information and derive both the response and its drive. Extending a mathematical basis or retaining more expansion terms is a different operation, with its own limits.

# Identification, observation and uncertainty
\label{app:identification}

This appendix provides the support, exponent, observation-rank and uncertainty results used in Section \ref{sec:core-identification}, with complete waveform diagnostics.

## Identifying coefficients without mistaking coordinates for physics
\label{sec:identification}

### What representation and identification establish
\label{sec:synthesis-evidence}

For fixed derivative order, normalize the coefficient as $\overline B_k=B_k/(S\tau^k)$. Let $\mathcal U$ be a declared positive parameter domain, and let a finite support $\mathcal R_k$ contain exponent tuples $(r,p_1,\ldots,p_d)$. With
\begin{equation}
 \phi_{r,\mathbf p}=\rho^{-r}\prod_{j=1}^{d}\eta_j^{p_j},\qquad
 \overline B_k\in
 \operatorname{span}\{\phi_{r,\mathbf p}:(r,\mathbf p)\in\mathcal R_k\}
       \quad\text{on }\mathcal U,
 \label{eq:coefficient-span}
\end{equation}
the span condition is exactly the claim that constant weights reproduce that coefficient function throughout the domain. Finite pointwise agreement alone does not establish this functional identity. Allowing arbitrary parameter-dependent weights changes the claim.

\begin{lemma}
\label{lem:support-independence}
Distinct finite Laurent monomials in independent positive coordinates are linearly independent on any nonempty open coordinate domain. Consequently a fixed finite Laurent dictionary has unique constant weights whenever it represents a coefficient function on that domain.
\end{lemma}

\noindent\textit{Proof.}
Multiply a proposed vanishing linear combination by a monomial large enough to remove all negative exponents. The result is a polynomial that vanishes on an open set. Restricting successively to open intervals in each coordinate proves that all of its coefficients vanish. Distinct original exponent tuples give distinct resulting monomials, so every original weight is zero. The difference of two representations proves uniqueness. $\square$

Restricting the parameter domain can destroy this independence. For example, $1$ and $\rho^{-1}\eta$ coincide on $\eta=\rho$. At fixed $\rho$, changing $r$ merely rescales an otherwise identical observation column. A finite set of configurations must therefore establish its own evaluation rank. Even full rank may have inadequate sensitivity at the declared uncertainty, and uniqueness within one dictionary does not identify that dictionary among competing supports.

| Result being claimed | Evidence required |
|:--------------------------------|:-------------------------------------------------------|
| Representation of a known operator | A coefficient identity on the stated domain, including normalization and forcing |
| Recovery of support, exponents or weights | An identifiable observation map with the remaining ambiguity and uncertainty stated |
| Prediction on independent conditions | The same fixed law and nuisance assumptions, with an exact identity or a justified error enclosure |
| Physical realization | Components, connections, admissible states and ports that give the asserted input--output law |

: Different conclusions supported by coefficient synthesis. A successful comparison at one level does not establish the next.

The impact-driver identities prove the first conclusion on their full and restricted domains, and predict coefficients elsewhere on the same domains without adjusting their weights. The branch recurrence proves an analogous statement as its declared component list grows. Recovering either law from measured motion or current is a separate question about the observation operator, forcing and preparation. Unknown initial states and sensor parameters must enter that question rather than being fitted away after a final comparison. Appendix \ref{sec:verification} collects the exact checks on these constructions and their realization conditions; those checks establish the stated model identities, while observation uncertainty requires the separate comparison below.

For the proposed measurements, let $\mathcal G_A,\mathcal G_B$ be the prediction sets of two alternatives after allowing every declared nuisance parameter and preparation. Let $W$ be a fixed calibration-based observation scaling, and bound the remaining observation error in the corresponding norm by $\epsilon_A,\epsilon_B$. A sufficient separation condition is
\eqref{eq:measurement-separation}.
The triangle inequality proves that the two error neighborhoods are then disjoint. An observation rejects an alternative only when its distance from that alternative's prediction set exceeds the applicable error bound. If the sets overlap, the comparison is unresolved. Covariance alone does not supply a deterministic bound; probabilistic regions require a stated distribution and confidence level. The local proposals give exact predictions to which this criterion can be applied.

For the impact driver, take $g$ to contain the synchronized hammer angle, anvil angle and contact torque over the common calibrated band in Appendix \ref{sec:impact-measurement}. Include incoming preparation, fixture parameters and sensor response in each prediction set. Varying joint stiffness follows the seven-atom path; varying damping independently adds the nine-atom discrimination. The law and uncertainty established before comparison must then predict an independently specified joint configuration without new weights. On the cancellation surface, the exact hidden motion leaves hammer angle and contact torque identical but separates anvil angle. This is an observation choice that functional independence of coefficient atoms alone cannot supply. Circuit and RF measurements below provide complementary controlled parameter changes and phase observations.

Finite-window motion or current measurements retain preparation and temporal correlation. A Gaussian ensemble does not make adjacent observations independent, and a crossing-rate statistic does not identify a coefficient law. The waveform and statistical conditions in Appendix \ref{sec:waveform-statistics} specify when such observations can enter the prediction sets above. On the torsional rig, retain the calibrated time response and cross-channel uncertainty instead of treating repeated values along one blow as independent evidence.

### Rank, exponent recovery and uncertainty

For $b(x)=\sum_{j=1}^m a_{j}x^{p_{j}}$ with distinct real exponents, consider exact evaluations on a geometric grid $x_\ell=x_{0}q^\ell$, $q>0$, $q\ne1$. Then
\begin{equation}
 b(x_\ell)=\sum_{j=1}^m\alpha_{j} z_{j}^\ell,\quad
 \alpha_{j}=a_{j}x_{0}^{p_{j}},\quad z_{j}=q^{p_{j}},\qquad
 H_{uv}=b(x_{u+v})=\sum_{j}\alpha_{j}z_{j}^uz_{j}^v.
 \label{eq:hankel}
\end{equation}
A sufficiently large Hankel matrix has rank $m$ when all $\alpha_{j}\ne0$ and the $z_{j}$ are distinct. Its annihilating polynomial recovers the $z_{j}$, hence $p_{j}=\log z_{j}/\log q$. This proves identifiability in exact arithmetic under those conditions, not reliable recovery from arbitrary noisy observations. Coincident exponents combine; exact signed cancellation removes an atom before the rank is counted.

The logarithmic slope
$x b'(x)/b(x)=\sum_{j}p_{j}a_{j}x^{p_{j}}/\sum_{j}a_{j}x^{p_{j}}$
need not be an integer on a finite interval, even when every exponent is integer. Only a proved dominance limit justifies an endpoint exponent. A noninteger estimate must not be rounded into agreement. Integer, half-integer and unrestricted-real candidates provide different model classes; their comparisons must share the same reference and domain.

Holding $\rho$ fixed makes all $\rho^{-r}$ columns proportional. Varying $\eta$ cannot recover missing $\rho$ dependence. This exact null is distinct from poor but nonzero sensitivity. For a vector of observables $g(\vartheta)$, scaled parameters $\vartheta$ and a declared observation covariance $\Sigma$, the local information is in
\begin{equation}
 J_{w}=\Sigma^{-1/2}\frac{\partial g}{\partial\vartheta},\qquad
 \|J_{w}\Delta\vartheta\|\geq\sigma_{\min}(J_{w})\|\Delta\vartheta\|
 \label{eq:information}
\end{equation}
on the identifiable subspace. Structural rank, a chosen practical threshold, and prediction on untouched conditions are three separate requirements. Singular values at exact rank deficiency are exactly zero; a condition number there is infinite, not a finite empirical characteristic. Values below a calculation's precision or below physical uncertainty cannot establish additional states.

Can independent coordinates and realistic correlated uncertainty make weak coefficient contributions identifiable [OP-LR31-01]? Holding $\rho$ fixed supplies a null control; independently changing it and a second ratio can separate competing laws. Representation, observation rank, support-wide sensitivity and independent-condition prediction remain distinct requirements. [*Hidden States and Unassigned Work*][companion] develops component variations and simultaneous voltage/current comparisons. Failure despite adequate sensitivity questions the model or uncertainty specification; terminal measurements alone do not identify internal stresses.

For an explicit exponent comparison, let two normalized coefficient laws agree at $\rho_0$, with common nonzero value $b_0$, and differ only in exponents $r,r'$. At $\rho_1$ their predicted difference is
\begin{equation}
 \Delta\overline B_k=b_0\left[
   (\rho_1/\rho_0)^{-r}-(\rho_1/\rho_0)^{-r'}\right],
 \qquad \overline B_k=\frac{B_k}{S\tau^k}.
 \label{eq:exponent-separation}
\end{equation}
It is zero at the deliberate null $\rho_1=\rho_0$. At other positive ratios it is nonzero for distinct exponents, and separates the two laws only if it exceeds the sum of the coefficient-error bounds inferred from the voltage/current observation model. For mixtures, allow all candidate weights and additional coordinates to vary within their calibrated sets before applying \eqref{eq:measurement-separation}; a nominal nonzero slope alone is insufficient.

### Selection, metrics and derivative measurements

Use separate conditions for coefficient estimation, candidate selection and final prediction. A final condition cannot re-enter the first two steps after its discrepancy is seen. A support search may begin with one-coordinate integer atoms, then introduce an independently motivated coordinate if the first family fails. One bounded class uses $r\in\{r_k-2,\ldots,r_k+2\}$, at most three atoms per coefficient, and extra-coordinate exponents $s\in\{0,1,2\}$. Its illustrative conditioning ceiling $10^4$, contribution floor $10^{-9}$, eight retained coefficient candidates per order, thirty complete finalists, near-best tolerance $10^{-4}$ and expansion trigger $1/100$ are definitions of that comparison, not physical thresholds or evidence that it succeeds. Finite exponent windows, maximum atom counts, contribution cutoffs and condition-number limits define a bounded search. They do not prove global minimality. Results can depend on whether the criterion is coefficient error, trajectory error, instantaneous signed power error, peak error or phase error, on absolute versus relative normalization, and on the time or frequency interval. Work and energy are excluded from this choice.

Physical power may be a waveform observable only when it is formed from independently declared effort and flow. Multiplying a scalar equation by a chosen derivative does not supply that observable. The coefficient of a small physical term can be unstable under noise, partition changes or contribution thresholds even when predicted waveforms are stable. A fixed-support confidence region and a region conditional on selecting that support answer different questions. Learning curves against independent conditions, repeated calibration and full covariance are needed before interpreting an omitted contribution as a physical absence.

A continuous-frequency derivative and a discrete difference have different symbols. With normalized step $h=T_{s}/\tau$, dimensionless frequency $\Omega$ and $z=e^{\ii\Omega h}$,
\begin{equation}
 q_{c}=\ii\Omega,\qquad q_{f}=(z-1)/h,\qquad
 q_{b}=\frac2h\frac{z-1}{z+1}.
 \label{eq:derivative-symbols}
\end{equation}
These correspond to the continuous derivative, forward difference and bilinear transformation. Replacing one by another changes the design matrix; the bilinear symbol is singular at $z=-1$. An apparent change of exponents can be an observation-operator effect. First differences, local polynomial estimates and regularized polynomial derivative estimates impose different filters and initial biases. Sensor bandwidth, timing and colored noise must be propagated through the chosen estimator. Measuring hidden positions and velocities can be more informative than estimating a high derivative from one channel.

## Finite waveform and random-drive observations
\label{sec:waveform-statistics}

These results support the finite-window and correlated-uncertainty requirements of Appendix \ref{sec:identification}. The physical metric and normalized two-mode realization remain those of \eqref{eq:nonnormal}; changing waveform class supplies additional observation assumptions, rather than new coefficients by itself.

The exact forced response is Duhamel's formula \eqref{eq:preparation}. It applies to a commensurate multitone, a Gaussian packet, a carrier under a separately declared modulation envelope, a band-limited Gaussian random input, or any specified integrable waveform. These are distinct classes. A finite-window Fourier estimate retains the homogeneous term and the window convolution; zero-padding a missing past is an additional initial-history assumption. Increasing a model's order or a window length is not itself a proof of phase, peak or tail accuracy.

A linear system with jointly Gaussian forcing and Gaussian initial state has a Gaussian ensemble, but adjacent observations on one finite path are correlated. A fitted normality statistic based on independent observations does not have its nominal interpretation. For a stationary differentiable zero-mean Gaussian output, the exact total zero-crossing rate of [Rice (1945)][rice] is
\begin{equation}
 \nu_{0}=\frac1\pi\sqrt{\frac{\mathbb E\dot y^2}{\mathbb E y^2}}.
 \label{eq:rice}
\end{equation}
It follows by integrating $|\dot y|$ against the joint Gaussian density at $y=0$, using stationarity to obtain zero covariance of $y$ and $\dot y$. Nondifferentiable forcing/output, nonstationarity, fitted means and finite-mode tails require different assumptions. Unresolved finite-path departures, correlation, non-Gaussian drives and uncertainty in the physical metric cannot be replaced by asserted ensemble conclusions.

The separate signed-work question for these same prepared and driven paths is developed in Appendix \ref{sec:stochastic-work}. The observation conditions here do not replace its source, loss and endpoint measurements.

# Initialization, effective order and passive realization
\label{app:initialization}

This appendix establishes how physical preparations and hidden states constrain a scalar equation. The direct-polynomial port obstruction is proved separately in Appendix \ref{sec:rf}.

## Initial data, effective order and physical preparation
\label{sec:initial}

For a finite linear realization $\dot x=F x+B u$, $y=Cx+D_{0}u$, elimination gives
\begin{equation}
 \det(sI-F)Y(s)=C\operatorname{adj}(sI-F)B\,U(s)
       +D_{0}\det(sI-F)U(s)+\text{initial-state terms}.
 \label{eq:elimination}
\end{equation}
This polynomial equation can contain common factors. For a proper scalar transfer function, its reduced denominator degree equals the dimension of a minimal controllable and observable realization. Neither must equal the order of an unreduced annihilator or the number of physical storage coordinates in a particular construction. Initial states absent from the zero-state transfer can produce a free response at that same output, remain hidden there, or affect another port. Conversely, algebraic constraints can make nominal component coordinates dependent. These state and input--output distinctions belong to established realization theory [Kalman (1963)][kalman]. They establish which equation and initialization a coefficient synthesis must retain; the examples are compared in Appendix \ref{sec:initial}. Figure \ref{fig:logic} summarizes the construction.

![Coefficient synthesis from a dimensional family or a declared realization. Weights and a parameter domain specify a candidate; elimination supplies both scalar and forcing operators. Arrows denote additional constructions or checks, not equivalences.](figures/order-and-realization.pdf){#fig:logic width=100%}

\FloatBarrier


The coefficient laws determine an operator for a declared observation. Its admissible preparations and reduced transfer order require the additional state information summarized below.

| Declared input and output | Physical states | Reduced zero-state transfer degree | Initialization or topology qualification |
|:--------------------------------|:-----------|:----------------|:--------------------------------------|
| Hammer torque to hammer angle | Four | Four generically | Three generically on the cancellation surface; two on its double-cancellation subset |
| Series voltage perturbation to coil current during battery conduction | $N+1$ | $N+1$ for distinct active polarization times | Equal times hide difference states; diode blocking changes the equations |
| Terminal current to voltage in the cancelling network of Appendix \ref{sec:passive} | Six | Zero | An incompatible preparation gives one observable natural decay |
| Primary clamp voltage to primary current with a secondary capacitor | Three | Three for nonzero mutual inductance | One when uncoupled; opening leaves the secondary LC system |
| Input to a nontrivial exact delay or a reflecting distributed line | History or field | No unrestricted finite rational representation | Finite candidates require a domain and a history or field map |

: State dimension and transfer degree for specified observations. A prescribed constant input is not itself a zero-state transfer experiment.

### Four levels of admissibility

Let $Y>0$ be an independently declared observation scale and use $\xi=(t-t_{0})/\tau$. The normalized jets and their dimensional basis are
\begin{equation}
 v_{j}=\frac{\tau^j y^{(j)}(t_{0})}Y,\qquad
 G_{q,j}=Y\rho^{-q}\tau^{-j},\qquad
 y^{(j)}(t_{0})=\sum_{q}\nu_{q,j}G_{q,j}.
 \label{eq:jet-family}
\end{equation}
A numerical list with these dimensions is merely a dimensional jet. For a regular order-$n$ scalar ODE, the first $n$ derivatives may be assigned, but higher derivatives must satisfy the operator recurrence. A realization-consistent jet must additionally come from a physical state. A prepared jet must come from a feasible past path, including switch states and source limits. These four levels must remain separate.

If $p_{k}=B_{k}/(S\tau^k)$ and the normalized forcing is $\varphi=f/(SY)$, operator compatibility is
\begin{equation}
 \sum_{k=0}^n p_{k} v_{k+m}=\varphi^{(m)}(0),\qquad m\geq0,
 \label{eq:jet-recurrence}
\end{equation}
where forcing derivatives are with respect to $\xi$. At a zero of $p_{n}$, solve the lower-order equation and its constraints; do not divide through the zero. For example $p_{3}=1-x$ defines an order-three equation for $x\ne1$ and an order-two equation at $x=1$ if the next coefficient remains nonzero. Signed atoms must be combined before this decision.

If coefficient and initial supports are finite Laurent polynomials in $x=\rho^{-1}$, the recurrence numerator is another finite Laurent polynomial. Division by a monomial preserves finite Laurent support. Division by a general polynomial need not. The units of the Laurent polynomial ring are precisely nonzero monomials, which proves generic finite closure only in the former case; exact divisibility supplies the exceptions.

| Leading factor | Recurrence numerator | Exact quotient or remainder |
|:------------------|:-----------------------|:--------------------------------|
| $2x^2$ | $6x+4x^3$ | $3x^{-1}+2x$ |
| $1+x$ | $1+x^2$ | $x-1+2/(1+x)$ |
| $1+x$ | $(1+x)(1+2x)$ | $1+2x$ |
| $(1-x)^2$ | $(1-x)^2h(x)$ | $h(x)$ away from $x=1$ |

: Finite-support closure and its exceptions. Cancellation of a quotient does not restore the missing highest derivative at $x=1$.

The mirror-family dual transformation is $q'=j-q$ when $Y$ is transported as the same observation scale: $G'_{q,j}=G_{j-q,j}$. This differs from the coefficient transformation $r'=-r-j$. A paired product has exponent $r+q$, and complete dual transport reverses that sum. Products use the Minkowski sum of supports; predicted support sites and sites removed by signed cancellation should be recorded separately. Changing units, reference parameters and $Y$ transports the weights by the ratios in \eqref{eq:jet-family}, rather than resetting them.

For example, $(1+x)(x^{-1}-1)=x^{-1}-x$: the predicted support $\{-1,0,1\}$ loses its middle site by exact cancellation. By contrast, $1/(1+x)$ is not a finite Laurent polynomial, because its pole at $x=-1$ cannot occur in such a polynomial. Finite-support recovery on finitely many positive parameter values cannot remove that distinction.

An anchor change obeys
$y^{(j)}(t_{0}+\Delta)=\sum_{\ell\geq0}\Delta^\ell y^{(j+\ell)}(t_{0})/\ell!$
when the Taylor series converges. It is a finite identity only for a polynomial trajectory or an explicitly vanishing remainder. Thus finite support in a parameter coordinate does not imply a finite time-shift formula.

### The state image

For an affine realization $\dot x=Fx+b$, $y=Cx$, with constant $b$ on the interval,
\begin{equation}
 \begin{pmatrix}y\\\dot y\\\vdots\\y^{(m)}\end{pmatrix}_{t_{0}}
 =a+\mathcal O_{m} x_{0},\quad
 \mathcal O_{m}=\begin{pmatrix}C\\CF\\\vdots\\CF^m\end{pmatrix},\quad
 a_{0}=0,\quad a_{j}=CF^{j-1}b\quad(j\geq1).
 \label{eq:state-image}
\end{equation}
The compatible physical jets form an affine image. Rank determines its dimension; the nullspace identifies hidden state freedom. A scalar annihilator containing unobservable factors admits operator-compatible jets outside this image. The constant-forcing term must be retained: an absolute jet is generally not in the homogeneous image through the origin. Adding a constant coordinate to the state turns the affine formula into a homogeneous augmented one, but that coordinate is constrained to one.

Exact rank should be checked before assessing scaled practical conditioning. The collision image is generically four-dimensional and loses rank at \eqref{eq:collision-hidden}. On the double-cancellation example \eqref{eq:collision-double-example}, its rank remains three while the reduced zero-state transfer degree is two. A resonator with three reactive coordinates can be exactly observable and still have a very poorly conditioned terminal map. Equal-time-constant polarization branches can have an exactly hidden difference coordinate even though each capacitor has a physically independent initial voltage. These examples distinguish algebraic order from state availability.

Manufactured solutions separate operator error from initial-map error. A stable operator with roots $-1,-2,-3$ admits sums of those exponentials; a control with roots $-2,-1,1/4$ contains an unstable mode. A repeated root $-1$ admits $t e^{-t}$, while $t^2e^{-t}$ requires multiplicity at least three. For
$Q_\delta(s)=(s+3)[(s+1)^2-\delta^2]$, changing the sign of $\delta$ permutes roots without changing the operator. Root labels are therefore unsuitable for defining a continuous initial map through coalescence. A forced example $y=e^{7t/10}$ has exactly $f=P(7/10)e^{7t/10}$; a discrepancy from this trajectory is then either operator, forcing or initial-map error.

### Raising order and crossing singular limits

A controlled extension
\begin{equation}
 P_\lambda(s)=Q(s)(1+\lambda s)
 \label{eq:lift}
\end{equation}
adds the root $-1/\lambda$ when $\lambda\ne0$. Every old solution of $Q(D)y=0$ remains a solution and defines an invariant subspace with the new amplitude zero. At $\lambda=0$ the order drops; for $\lambda<0$ the added mode is unstable. Four comparisons are distinct: retain an old trajectory; continue a specified modal subspace; transport a common physical augmented state where one exists; or prescribe a normalized ensemble of jets. Setting the added derivative to zero is one ensemble convention, not a consequence of the old equation. A companion-state augmentation used only for comparison is mathematical until components, ports and a connection/preparation path are supplied. Most- and least-observable old directions may be defined from the observability map; energy, work, passivity and terminal error do not choose those directions.

For monic degree-$n$ $Q$, let two degree-$(n+1)$ solutions have the same derivatives through $n-1$ at zero and differ in $y^{(n)}(0)$ by $\alpha$. Their difference has Laplace transform
\begin{equation}
 \Delta Y(s)=\frac{\lambda\alpha}{P_\lambda(s)}.
 \label{eq:lift-amplitude}
\end{equation}
At a simple new root its amplitude is $\alpha/Q(-1/\lambda)$. This gives an exact sensitivity statement, without assuming a small $\lambda$. If that root coincides with a root of $Q$, use the confluent exponential basis. A finite-window error may become unbounded on an unstable continuation even when coefficient transport is exact; a finite arithmetic residual then cannot independently establish trajectory closure.

### Finite preparation and event transport

A physically prepared state requires sources and a path. For a controllable linear realization, the endpoint condition is
\begin{equation}
 x(T)=e^{FT}x(0)+\int_{0}^T e^{F(T-t)}B u(t)\,\dd t.
 \label{eq:preparation}
\end{equation}
The controllability span determines which targets are reachable. A Gram matrix can establish reachability algebraically without using energy as an objective. Component voltage, current, force and slew limits may make an algebraically reachable state inaccessible in a specified time.

For a series RLC branch, a polynomial charge path chosen to satisfy the required endpoint charge and current gives the exact preparation voltage
$v=L\ddot q+R\dot q+q/C$. Hermite interpolation supplies such a path when no incompatible limits are imposed. Independent shunt states may require an additional source or switch. For an RL branch the smooth path $i(t)=I[1-\cos(\pi t/T)]/2$ has $u=L\dot i+Ri$ and, by separate integration,
\begin{equation}
 W_{u}=\int_{0}^Tui\,\dd t=\frac{LI^2}{2}+\frac{3RI^2T}{8},\quad
 W_{R}=-\frac{3RI^2T}{8},\quad \Delta E=\frac{LI^2}{2}.
 \label{eq:rl-preparation}
\end{equation}
The source and resistor powers have been integrated before the independent endpoint store is compared. Imposing $I$ without this path assigns no preparation work. Finite relaxation generally leaves a nonzero state; an exact reset requires a declared finite control or an explicitly analyzed limiting event.

At a switch, carry the physical state through the stated reset map and recompute the jets from the new vector field. The pre-event fourth derivative is not a freely transportable coordinate of a post-event second-order system. If a state is removed, specify whether it remains in another subsystem or transfers work through a port. Simultaneous events need a joint finite model or an ordering rule. The rapid two-capacitor connection in Appendix \ref{sec:reset} gives an exact example in which the final state is order-independent while the individual port-work partitions depend on the edge ordering. No universal instantaneous partition follows from the endpoint alone.

### Initialized integrals and histories
\label{sec:histories}

The coefficient array also includes negative derivative indices. Their use extends the synthesis to initialized integral operators; the required constants and histories are additional information, not coefficients determined by dimensions.

Negative derivative indices require a base time $t_{p}$ and initialized integrator states. Set $h_{1}'=y$ and $h_{j}'=h_{j-1}$ for $j>1$. Repeated integration gives
\begin{equation}
 h_{m}(t)=\sum_{j=0}^{m-1}h_{m-j}(t_{p})\frac{(t-t_{p})^j}{j!}
       +\int_{t_{p}}^{t}\frac{(t-v)^{m-1}}{(m-1)!}y(v)\,\dd v.
 \label{eq:history-chain}
\end{equation}
These $m$ initial values are additional history coordinates. A present derivative jet does not determine them. For a constant input and zero integrator initialization, $h_{m}=y(t-t_{p})^m/m!$; there is no finite DC phasor equal to $(\ii\omega)^{-m}y$ at $\omega=0$.

Suppose an equation containing $D^{-m}$ has residual $R(t)$. Multiplication by $D^m$ produces $D^mR=0$, which permits an arbitrary polynomial residual of degree at most $m-1$. Equivalence to the original initialized equation requires
\begin{equation}
 R^{(j)}(t_{p})=0,\qquad 0\leq j<m.
 \label{eq:lost-constraints}
\end{equation}
Thus a derivative-cleared equation can have extra solutions even when its coefficients are exact. Anchor changes must transport the integrator states through \eqref{eq:history-chain}. Preparation extending farther into the past can amplify compatibility sensitivity without changing present derivatives.

Finite integral states still leave arbitrary delay histories undetermined. Appendix \ref{sec:history-examples} constructs histories with identical present jets and four initialized moments but different delayed values. Thus a synthesis using a history kernel needs its own preparation map, in addition to the coefficient and jet conditions above.

## Passive realizations and internal nonuniqueness
\label{sec:passive}

A rational terminal coefficient law can admit several physical constructions. This section gives explicit realizations and exact passivity conditions, then identifies the internal properties that terminal coefficients leave undetermined. These are conditions on a declared physical interpretation of a synthesized law.

### A rational family with an exact certificate

Consider
\begin{equation}
 Z_{N}(s)=R_\infty+\sum_{j=1}^N\frac{R_{j}}{1+s\tau_{j}},\qquad
 \tau_{j}>0,
 \label{eq:rc-family}
\end{equation}
with distinct active poles. The real part on $s=\ii\sqrt x$ has positive denominator and numerator
\begin{equation}
 q_{N}(x)=R_\infty\prod_{j}(1+x\tau_{j}^2)
 +\sum_{j}R_{j}\prod_{\ell\ne j}(1+x\tau_\ell^2),\qquad x\geq0.
 \label{eq:pr-polynomial}
\end{equation}
Since the poles lie strictly in the left half-plane, nonnegative $q_{N}$ on this half-line, together with its behavior at infinity, is equivalent to positive-realness of this family. A polynomial certificate checks $x=0$, every nonnegative stationary point and the leading behavior; isolated frequency checks cannot replace it.

Positive residues give the constructive cone $R_\infty\geq0$, $R_{j}>0$. They are sufficient, not necessary. For example $Z=1-\alpha/(1+s)$ is positive real exactly for $\alpha\leq1$ with $\alpha\geq0$; for $0<\alpha\leq1$, $Z=(1-\alpha)+\alpha s/(1+s)$ explicitly realizes a resistor in series with a parallel RL section. A negative residue is therefore not itself an active component claim.

A more detailed signed family takes $R_\infty=7/20\ \Omega$ and
\begin{align}
 (\tau_j)&=(2/25,9/50,21/50,19/20,21/10,24/5)\ \mathrm s,\nonumber\\
 (R_j)&=(7/10,11/20,43/100,17/50,27/100,11/50)\ \Omega,
 \label{eq:rc-parameters}
\end{align}
using the first $N$ terms for $2\leq N\leq6$. Replace the first residue by $-\alpha R_{1}$. Its exact boundary is
\begin{equation}
 \alpha_*^{(N)}=\inf_{x\geq0}
 \frac{1+x\tau_{1}^2}{R_{1}}
 \left[R_\infty+\sum_{j=2}^N\frac{R_{j}}{1+x\tau_{j}^2}\right].
 \label{eq:signed-ray}
\end{equation}
The infimum is characterized by the endpoint and stationary polynomial equations obtained by differentiating the rational function. Values $(99/100)\alpha_*^{(N)}$, $\alpha_*^{(N)}$ and $(101/100)\alpha_*^{(N)}$ lie inside, on and outside this particular positive-real boundary, respectively. This exact characterization replaces unsupported decimal boundary claims. It does not map the full correlated signed-residue region. General passive synthesis of those ports and the minimum number and arrangement of physical stores remain separate constructive questions; absence of a supplied construction is not a refutation of a valid port certificate.

### Three constructions and what each preserves

For positive residues, connect $R_\infty$ in series with parallel $R_{j},C_{j}$ sections, $C_{j}=\tau_{j}/R_{j}$. The state equations and store are
\begin{equation}
 \dot v_{j}=i/C_{j}-v_{j}/\tau_{j},\qquad
 v=R_\infty i+\sum_{j}v_{j},\qquad E_{F}=\frac12\sum_{j}C_{j}v_{j}^2.
 \label{eq:foster-state}
\end{equation}
This is a Foster RC realization. Euclidean extraction instead alternates a high-frequency series resistance and a shunt capacitance to form a Cauer ladder when the extracted elements are positive. For example the exact identity
\begin{equation}
 1+\frac1{1+s}+\frac1{1+2s}
 =1+\frac1{\frac23s+
       \displaystyle\frac1{\frac95+
       \displaystyle\frac1{\frac{25}3s+5}}}
 \label{eq:cauer}
\end{equation}
exhibits two different passive two-capacitor circuits with identical terminal impedance. The terminating conductance is $5$, hence its resistance is $1/5$, in the normalized units.

A third construction places each Foster section behind an ideal transformer:
\begin{equation}
 v_{p}=n_{j}v_{s},\quad i_{s}=n_{j}i_{p},\quad
 R_{s,j}=R_{j}/n_{j}^2,\quad C_{s,j}=n_{j}^2C_{j}.
 \label{eq:transformer-family}
\end{equation}
The reflected impedance and instantaneous power are unchanged, and
$C_{s,j}v_{s}^2/2=C_{j}v_{p}^2/2$. But secondary capacitor charge and current scale by $n_{j}$, and voltage by $1/n_{j}$. Thus an ideal ratio tending to infinity gives unbounded internal charge or current at a fixed terminal response; a ratio tending to zero gives unbounded secondary voltage. A finite value such as $n_{j}=8$ illustrates the exact factor without a numerical transient. Winding resistance, bandwidth, saturation, insulation and tolerance constraints are needed for finite engineering bounds.

The terminal rational function fixes its zero-state voltage for a declared current and therefore its signed terminal work on each fixed interval. It fixes the McMillan degree $N$ when all poles are distinct and residues nonzero. The explicit positive-residue construction attains $N$ independent capacitor states, so this cone's minimal state count is exactly $N$. It does not fix arbitrary internal magnitude sums, resistor-loss partitions or nonminimal hidden stores. Independently prepared decoupled stores can be arbitrarily large and are excluded from zero-state comparisons.

For all three passive constructions, enclose the reactive stores, exclude the source and heat reservoirs, and use source power $vi$ and each resistor power $-v_{R}i_{R}$. Ideal transformer powers cancel internally. On preparation, operation, relaxation and reset intervals, integrate these products separately and compare $\sum Cv^2/2+\sum Li^2/2$ at both ends. A smooth current such as $\sin^2(\pi t/4)$ on $0\leq t\leq4$ and zero outside supplies a compact exact input; since it vanishes at enable and release, finite states are continuous and there is no imposed impulse. Finite relaxation still leaves an endpoint store. Equal terminal work does not by itself force equal internal energy at intermediate times across every passive realization.

Universal storage bounds require more than comparisons between a few constructions. For a realization $\dot x=Fx+Bu$, $y=Cx+D_{0}u$, a quadratic candidate $E=x^THx/2$ is dissipative if
\begin{equation}
 \begin{pmatrix}
 -F^TH-HF&C^T-HB\\ C-B^TH&D_{0}+D_{0}^T
 \end{pmatrix}\succeq0,\qquad H\succeq0.
 \label{eq:storage-inequality}
\end{equation}
Indeed the associated quadratic form is twice $u^Ty-\dot E$. The relation between quadratic supply, storage inequalities and available or required storage is established in [Willems (1972)][willems]; extremal interpretations require the corresponding reachability assumptions. Determining their bounds over all minimal physical syntheses, and bounding individual resistor shares, remains unresolved here. The terminal function alone supplies no unique physical $H$.

### A finite network grammar and exact cancellation

The composition rules in Appendix \ref{sec:operator-composition} also generate a finite family of exact terminal laws. Take one-store atoms $Z_{C}=R/(1+sRC)$ and $Z_{L}=sLR/(R+sL)$, and compose them recursively in series and parallel. Quotient associative and commutative composition, keeping the two atom types distinct. If $U(z)$ counts series-rooted expressions, symmetry gives the same count for parallel roots. With $B(z)=2z+U(z)=\sum b_{n}z^n$,
\begin{equation}
 U(z)=\prod_{n\geq1}(1-z^n)^{-b_{n}}-1-B(z),\qquad
 T(z)=2z+2U(z).
 \label{eq:grammar}
\end{equation}
The product counts unordered multisets of eligible children; subtraction removes zero and one child. Recursive coefficient comparison gives the finite counts below exactly.

| Number of atoms | $2$ | $3$ | $4$ | $5$ | $6$ |
|---:|---:|---:|---:|---:|---:|
| Canonical expressions | $6$ | $20$ | $80$ | $340$ | $1570$ |

: Exact counts for this restricted grammar, totaling $2016$. They are not a count of all passive circuits.

Each rational impedance must be reduced by polynomial common factors before quoting zero-state transfer degree. In normalized units with unit component values, $Z_{C}=1/(1+s)$ and $Z_{L}=s/(1+s)$, so $Z_{C}+Z_{L}=1$. A series chain containing two of each has impedance $2$; in parallel with a chain containing one of each it has impedance $2/3$. Six reactive component coordinates thus coexist with a degree-zero zero-state transfer. Equal-value cancellation is not a generic unequal-component theorem.

The initialized terminal law needs a separate derivation. An RC atom driven by current $j$ has $\dot v_C=j-v_C$; an RL atom has $\dot i_L=j-i_L$ and voltage $v_L=j-i_L$. A series pair therefore has $v=j+w$, with $w=v_C-i_L$ and $\dot w=-w$. Let $a_0$ be the sum of initial capacitor voltages minus the sum of initial inductor currents in the four-atom chain, and $b_0$ the corresponding difference in the two-atom chain. These sums are in the declared normalized units. With branch currents $j_A,j_B$,
\begin{equation}
 v=2j_A+a_0e^{-t},\qquad v=j_B+b_0e^{-t},\qquad i=j_A+j_B,
 \quad 3v=2i+(a_0+2b_0)e^{-t}.
 \label{eq:cancellation-initialized}
\end{equation}
Consequently $(D+1)(3v-2i)=0$ describes the initialized terminal behavior, whereas $3v=2i$ holds precisely when $a_0+2b_0=0$. Zero initial state is sufficient but not necessary. The illustrative preparation $a_0=1,b_0=0$ produces $v=e^{-t}/3$ at zero terminal current. This observable natural decay is uncontrollable from the terminal current, while further internal directions can be hidden. A purely resistive zero-state fit therefore establishes neither zero free-response order nor absent physical stores.

For arbitrary parameters and connections that cannot be separated into scalar two-terminal blocks, retain coupled equations. A modified nodal model is
\begin{equation}
 C_{n}\dot e+Ge+B_{L}i_{L}=bu,\qquad
 L_{L}\dot i_{L}=B_{L}^Te.
 \label{eq:descriptor}
\end{equation}
If $U_{0}$ spans the nullspace of $C_{n}$, first impose
$U_{0}^T(Ge+B_{L}i_{L}-bu)=0$. Only after solving the algebraic constraints should one form an ordinary state equation and examine controllability, observability and terminal minimality. Unit inductances can suppress $L_{L}$ in notation, but not in dimensions.

There are $2N$ component parameters in this grammar, dimensional rank two and therefore $2N-2$ independent component ratios; adding a load adds one. One $\rho$ leaves $2N-3$ component coordinates unrepresented. Graph cycle rank, bridges, spanning trees and automorphisms describe topology, but do not alone determine terminal derivative support. Port placement must be quotiented by the actual graph automorphisms, including drive, load, observation and polarity jointly. A zero transfer at one frequency or at one placement is not absence of a state. Withholding entire series-rooted or parallel-rooted classes asks a stronger transfer question than changing values within one graph. Extension to all placements, unequal components, grounded common-mode ports, bridges, multigraphs, transformers, gyrators and larger graphs remains open.

Singular component values require separate topologies. For the normalized two-atom series circuit,
$Z(1)=R_{C}/(1+R_{C}C)+LR_{L}/(R_{L}+L)$.
With $R_{C}=R_{L}=L=1$, $C\to0$ gives $3/2$, whereas $C=\varepsilon$, $R_{C}=\varepsilon$ gives $1/2$ in the limit. With the capacitor atom fixed at $1/2$, $L\to\infty$ at $R_{L}=1$ gives $3/2$, while $L=R_{L}=1/\varepsilon$ diverges as $1/(2\varepsilon)+1/2$. These exact paths prove that a multivariate boundary needs a declared coscaling. Incompatible initial capacitor voltages or inductor currents require a finite parasitic path before any impulse work can be assigned.

# Electrical, RF and mechanical applications
\label{app:applications}

These complete applications supply complementary tests of forcing, attachment, passive interpretation and added states. They retain their own model domains and physical questions.

## RF response and the limits of polynomial impedance
\label{sec:rf}

Frequency-domain observations connect synthesized derivative coefficients to measurable impedance. The charge/current convention, forcing operator and rational realization determine that connection; the same formal polynomial can have a different physical meaning under a different port assignment.

### Choosing what to synthesize in phasor analysis
\label{sec:phasor-choice}

Use peak phasors with time dependence $e^{\ii\omega t}$. For \eqref{eq:local-port-pair},
\begin{equation}
 P(\ii\omega)\widehat i=Q(\ii\omega)\widehat v,\qquad
 Z=\frac{P(\ii\omega)}{Q(\ii\omega)},\quad
 Y=\frac{Q(\ii\omega)}{P(\ii\omega)}.
 \label{eq:phasor-port-pair}
\end{equation}
Choose the local component, subnetwork or complete driving point first, and place its observation at the declared terminals. Impedance adds for series connections; admittance adds for parallel connections. Either may make the intended coefficient contribution easier to isolate. At a zero or pole retain the undivided pair instead of forming an undefined ratio. A voltage gain between different nodes is a transfer function, not a driving-point impedance, and needs its own input and output specification.

Mechanical dynamic stiffness maps angle to torque. Thus the contact and joint laws in \eqref{eq:impact-block-matrix} have torque/angle units; their torque/angular-velocity impedances are $\mathcal K_c/s$ and $\mathcal K_j/s$ where defined. The hammer mobility is $s\mathcal N/\mathcal P$. A held-engaged, preloaded linear comparison can identify these frequency responses over a declared amplitude and frequency domain. Actual blows also require their transient preparations, contact gates and event laws; a phasor fit does not replace them.

One complex observation at one frequency generally does not determine an arbitrary higher-order law. Known finite constitutive families and additional channels can give stronger results: [*Hidden States and Unassigned Work*][companion] derives contact and joint recovery from hammer and anvil phasors at one informative frequency for known inertias and spring--damper laws. Further frequencies test that family. The same local law must predict independent configurations; independently refitting every frequency or every surrounding block supplies no transferable coefficient construction. Rational laws, finite polynomial candidates and convergent derivative expansions retain their different domains and remainders.

### Harmonic substitution and a precise onset criterion

For an equation driven by terminal voltage with $y=q$ and $i=\dot q$, its zero-state impedance is $Z(s)=P(s)/s$. With $(a,b,c)=(L,R,1/C)$ and $x=\omega\tau$,
\begin{equation}
 \frac{Z_{2}(\ii\omega)}R=1+\ii x+\frac1{\ii\rho x},\qquad
 \frac{\Delta Z_{r,k}}R=w_{r,k}\rho^{-r}(\ii x)^{k-1}.
 \label{eq:rf-atoms}
\end{equation}
The derivative index shifts by one because charge is integrated current.

\begin{theorem}
\label{thm:polynomial-passivity}
Let $P$ be a real polynomial of degree $n\geq3$ with nonzero leading coefficient. If the physical terminal law is $P(D)q=v$ and $i=\dot q$, the zero-state impedance $Z(s)=P(s)/s$ is not positive real on the entire right half-plane.
\end{theorem}

\noindent\textit{Proof.}
Choose an arbitrary inverse-time scale $s_0>0$ and write $z=s/s_0$, so
$Z(s_0z)=\sum_{k=0}^n c_k z^{k-1}$, where $c_k=B_ks_0^{k-1}$ all have impedance units. Put $m=n-1\geq2$ and $M=\sum_{k=0}^{n-1}|c_k|$. For $z=re^{\ii\theta}$ and $r\geq1$, the lower terms have absolute sum at most $Mr^{m-1}$. If $c_n<0$, take $\theta=0$ and $r>M/|c_n|$. If $c_n>0$, take $\theta=3\pi/(4m)$ and $r>\sqrt2M/c_n$. In the latter case $|\theta|<\pi/2$, yet the leading real part is $-c_n r^m/\sqrt2$, larger in magnitude than the bound on all remaining terms. In either case $\Rea s>0$ and $\Rea Z(s)<0$, contradicting positive-realness. $\square$

This obstruction is specific to an unrestricted physical effort--flow assignment. It does not rule out a passive third- or higher-order realization with $P(D)q=N(D)v$, whose impedance is $P(s)/[sN(s)]$, or a polynomial surrogate restricted to a stated band. The physical collision numerator in \eqref{eq:collision-poly} illustrates why the eliminated input dynamics matter. An arbitrary formal scalar observation need not be a physical port at all.

| $k$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Factor $(\ii x)^{k-1}$ | $-\ii/x$ | $1$ | $\ii x$ | $-x^2$ | $-\ii x^3$ | $x^4$ | $\ii x^5$ |

: Harmonic phase and magnitude of a charge-equation contribution.

An added atom exceeds relative magnitude $\varepsilon$ exactly when
\begin{equation}
 \frac{|w_{r,k}|\rho^{-r}x^{k-1}}
 {\sqrt{1+[x-1/(\rho x)]^2}}\geq\varepsilon,
 \qquad x>0.
 \label{eq:onset}
\end{equation}
This avoids replacing the denominator by a high-frequency estimate. For the illustrative values $\rho=1,r=0,k=4,w=1/100$, the ratio at $x=1$ is exactly $1/100$. Near a cancellation in the baseline reactance, a small atom can be important without implying a newly resolved physical mode.

One device at fixed $\rho$ identifies only the combined coefficient at each $k$. Do calibrated multi-device impedance measurements support a transferable coefficient law [OP-LR12-01]? Independent resonators or controlled shunts supply the missing coordinates. A common rational law must predict their complex responses with the same parameters across its declared domain; fixture or amplitude dependence is a competing explanation. Fixture calibration and compensation are essential [Keysight (n.d.)][keysight]. [*Hidden States and Unassigned Work*][companion] develops calibrated VNA comparisons. Nonlinear, temperature and aging behavior remain separate acquisition questions.

Choosing admittance isolates a parallel contribution directly. For the quartz model derived below, changing only the known shunt capacitance by $\Delta C_0$ adds $s\Delta C_0$ to admittance. If $Z_a,Z_b$ are the two impedances, this gives the exact finite-change identity
\begin{equation}
 Z_b-Z_a=-s\Delta C_0 Z_aZ_b,\qquad
 |Z_b-Z_a|=\omega|\Delta C_0|\,|Z_aZ_b|\quad(s=\ii\omega).
 \label{eq:rf-separation}
\end{equation}
This is a predicted complex relation across devices, not a small-capacitance approximation. At frequencies where it is defined, compare the measured pair with this relation using joint gain, phase, fixture and capacitance-error enclosures. Distinct alternative prediction sets must meet \eqref{eq:measurement-separation}; a measured discrepancy within the enclosure cannot establish changed device physics. The fixture must either be held fixed and calibrated or enter the nuisance set explicitly.

### Inductor self resonance

A series $R,L$ branch in parallel with $C_{p}$ has the exact impedance
\begin{equation}
 Z_{L}(s)=\frac{R+sL}{1+sRC_{p}+s^2LC_{p}},\qquad
 (1+RC_{p}D+LC_{p}D^2)v=(R+LD)i.
 \label{eq:parasitic-inductor}
\end{equation}
There are two reactive states. A derivative expansion of the terminal impedance does not create additional physical states. If $Z_{L}(s)=\sum_{n\geq0}d_{n}s^n$ within its convergence disk, coefficient comparison gives
\begin{align}
 d_{0}&=R,&d_{1}&=L-R^2C_{p},\nonumber\\
 d_{n}&=-RC_{p} d_{n-1}-LC_{p} d_{n-2}\quad(n\geq2),\nonumber\\
 d_{2}&=R^3C_{p}^2-2LRC_{p},&
 d_{3}&=-L^2C_{p}+3LR^2C_{p}^2-R^4C_{p}^3.
 \label{eq:inductor-coefficients}
\end{align}
For $T_{N}(s)=\sum_{n=0}^Nd_{n}s^n$, the exact remainder is
\begin{equation}
 Z_{L}(s)-T_{N}(s)=
 \frac{R+sL-(1+sRC_{p}+s^2LC_{p})T_{N}(s)}
 {1+sRC_{p}+s^2LC_{p}}.
 \label{eq:rational-remainder}
\end{equation}
No truncation is assumed exact. The Taylor disk ends at the nearest uncancelled denominator pole; improving a polynomial locally cannot remove that boundary.

An illustrative inductor has $L=100\ \mathrm{nH}$, $R=3/5\ \Omega$, $C_{p}=1/4\ \mathrm{pF}$. The lossless frequency $1/(2\pi\sqrt{LC_{p}})$ is a reference, not automatically the lossy impedance maximum. Winding capacitance and the fixture both affect measured self resonance; [Coilcraft (n.d.)][coilcraft] specifically explains the fixture dependence. A real-valued empirical loss law such as $R(\omega)=R_{\mathrm{dc}}[1+\alpha\sqrt{\omega/\omega_{0}}]$ specifies neither the associated reactive dispersion nor a causal transient model. A causal complex material response and its state or memory realization remain necessary.

The attachment location can be tested separately from the capacitor value. Let $Z_w=R+sL$ denote the bare coil, $Z_e$ another series block, and $C_p>0$ the same capacitor. Placing $C_p$ across only the coil, or across the entire assembly, gives
\begin{equation}
 Z_{\rm local}=Z_e+\frac{Z_w}{1+sC_pZ_w},\qquad
 Z_{\rm whole}=\frac{Z_e+Z_w}{1+sC_p(Z_e+Z_w)}.
 \label{eq:shunt-placement}
\end{equation}
Both follow by adding the shunt admittance at its actual terminals and then composing the remaining series connection. They predict different coefficient and forcing pairs in general, despite using the same components. Compare them at defined finite responses in a calibrated band; special frequencies or component choices can leave indistinguishable predictions. The companion develops the voltage/current comparison and its uncertainty condition. In contrast, exchanging $Z_{\rm local}$ for $1/Z_{\rm local}$ leaves the physical attachment unchanged.

### Quartz, branch cancellation and observation geometry

The motional branch $R_{m},L_{m},C_{m}$ in parallel with a holder capacitance $C_{0}$ is the standard single-mode equivalent circuit described by [Bible (2002)][bible]. With
$P_{m}(s)=L_{m}C_{m}s^2+R_{m}C_{m}s+1$,
\begin{equation}
 Z_{q}(s)=\frac{P_{m}(s)}{s[C_{0}P_{m}(s)+C_{m}]},\qquad
 \eta=\frac{C_{0}}{C_{m}}.
 \label{eq:quartz}
\end{equation}
It is a third-order terminal model with three reactive coordinates before exceptional cancellations or source constraints. Illustrative values $R_{m}=30\ \Omega$, $L_{m}=11/500\ \mathrm H$, $C_{m}=9/500\ \mathrm{pF}$ and $C_{0}=9/2\ \mathrm{pF}$ give $\eta=250$. They define a near-$8\ \mathrm{MHz}$ resonator through the exact formula, not a claim of exactly $8\ \mathrm{MHz}$. The lossless reference frequencies obey
\begin{equation}
 \omega_{s}=\frac1{\sqrt{L_{m}C_{m}}},\qquad
 \frac{\omega_{p}}{\omega_{s}}=\sqrt{1+\frac1\eta}.
 \label{eq:quartz-frequencies}
\end{equation}
For nonzero $R_{m}$, zero phase, peak impedance and other resonance definitions need not coincide with these references. Varying $C_{0}/C_{m}$ and motional damping independently cannot generally be collapsed onto one $\rho$.

For branch-current peak phasors $I_{j}$, distinguish
$A=\sum_{j}|I_{j}|$, $C=|\sum_{j}I_{j}|$, and $\chi=C/A$ when $A>0$. Geometry gives
\begin{equation}
 \max(0,2\max_{j}|I_{j}|-A)\leq C\leq A,\qquad
 \left\langle\sum_{j}|i_{j}(t)|\right\rangle=\frac2\pi A,
 \label{eq:phasor-polygon}
\end{equation}
for real sinusoidal currents $i_{j}(t)=\Rea(I_{j}e^{\ii\omega t})$. The instantaneous maximum is
$\max_{\sigma_{j}=\pm1}|\sum_{j}\sigma_{j}I_{j}|$, generally different from $A$. These relations explain large cancelling branch currents without treating a sum of magnitudes as conserved charge, energy or a universal quality factor. Topology and physical branch definitions matter. A modal-coordinate norm cannot be substituted for a component rating.

Two further geometric diagnostics also require explicit conventions. The largest pairwise phase separation is $\max_{j,k}|\operatorname{Arg}(I_jI_k^*)|$, omitting zero phasors whose phase is undefined. If $S_0=0$ and $S_j=\sum_{\ell=1}^jI_\ell$, the signed area of the ordered polygon closed from $S_n$ to the origin is $\tfrac12\operatorname{Im}\sum_{j=1}^n S_{j-1}^*S_j$. Its sign changes on reversing the ordering; unlike the resultant and polygon bounds, its value can depend on that ordering.

For $Z$ and $Y$ denoting series impedance and shunt admittance, respectively, the two-port blocks
\begin{equation}
 M_{Z}=\begin{pmatrix}1&Z\\0&1\end{pmatrix},\qquad
 M_{Y}=\begin{pmatrix}1&0\\Y&1\end{pmatrix},\qquad
 M=\begin{pmatrix}A&B\\C&D\end{pmatrix}
 \label{eq:abcd}
\end{equation}
have unit determinant and so does their product. With output current directed toward a load $Z_{0}$ and equal reference impedances,
\begin{equation}
 S_{21}=\frac2{A+B/Z_{0}+CZ_{0}+D},\quad
 \frac{V_{2}}{V_{1}}=\frac1{A+B/Z_{0}},\quad
 \frac{V_{2}}{I_{1}}=\frac1{C+D/Z_{0}}.
 \label{eq:transfers}
\end{equation}
These are different functions. Separate unconstrained fits can violate reciprocity or passivity, and accuracy in one does not bound the other two. Joint matrix fits respecting topology and passivity, calibrated two-port observations and uncertainty across disjoint frequency intervals remain open requirements.

A series RLC path uses $M_Z$ with $Z=R+sL+1/(sC)$. A shunt-$C/2$--series-RL--shunt-$C/2$ section uses the product $M_YM_ZM_Y$ with $Y=sC/2$ and $Z=R+sL$; two identical sections use the square of that product. Their entries may be finite polynomials or Laurent polynomials while their loaded transfer functions are rational. Thus an exact finite matrix representation and a failed polynomial driving-point representation are compatible outcomes.

### A controllably hidden internal mode

Place a series RC branch behind an ideal transformer with secondary-to-primary voltage ratio $\nu>0$, and add a terminal conductance $G_{0}>0$. Orient primary branch current into the transformer and secondary current $j$ toward the RC load, so that $v_s=\nu v_p$ and $i_{p,\mathrm{branch}}=\nu j$. For capacitor voltage $x$, the initialized realization is
\begin{equation}
 j=\frac{\nu v_p-x}{R},\qquad C\dot x=j,\qquad
 i_p=G_0v_p+\nu j,\qquad R,C>0.
 \label{eq:hidden-rc-state}
\end{equation}
Eliminating $x$ with zero initial state gives the admittance
\begin{equation}
 Y(s)=G_{0}+\frac{\nu^2sC}{1+sRC},\qquad
 h=\frac{\nu^2}{R},\qquad \delta_{h}=\frac h{G_{0}+h}.
 \label{eq:hidden-rc}
\end{equation}
For $x(0)=V_0$, the terminal current additionally contains $-\nu V_0e^{-t/(RC)}/R$. The poles and initialized response therefore follow from the same orientation. The primary-to-secondary ratio used in Appendix \ref{sec:passive} is $n=1/\nu$; reflecting a fixed secondary admittance with that convention divides it by $n^2$.

As $\nu\to0$, both the driven branch contribution and its terminal initial-state signal vanish. The endpoint of \eqref{eq:hidden-rc-state} is a decoupled terminal with a closed internal RC discharge loop, not an ordinary finite-turns transformer. An open series RC branch would not have the same discharge. Enclose the capacitor and exclude the two heat reservoirs: the inward powers are $v_pi_p$, $-G_0v_p^2$, and $-Rj^2$. Integrating them separately gives their sum $\int_0^T xj\,\dd t=C[x(T)^2-x(0)^2]/2$, agreeing with the independently evaluated store $Cx^2/2$. In the decoupled endpoint with $v_p=0$, the sole nonzero transfer and endpoint store are
\begin{equation}
 W_{R}(0,T)=-\int_{0}^T\frac{V_{0}^2e^{-2t/(RC)}}R\,\dd t
 =-\frac{CV_{0}^2}{2}(1-e^{-2T/(RC)}),\quad
 E(T)=\frac{CV_{0}^2}{2}e^{-2T/(RC)}.
 \label{eq:hidden-discharge}
\end{equation}
Exact terminal cancellation therefore does not imply absence of an internal prepared mode. The changing store in \eqref{eq:hidden-discharge} is accounted for by the independently integrated resistor work, even though the terminal work is zero. Its relevance to a higher-order realization is that eliminated internal coordinates can carry the same hidden change.

#### Measuring a changing store behind a quiet terminal
\label{sec:hidden-measurement}

How tightly can terminal uncertainty bound hidden prepared energy when coupling and preparation are only partly known [OP-LR23-01]? With $v_p=0$, known finite $\nu>0$ and the state law \eqref{eq:hidden-rc-state},
\begin{equation}
 |i_p(0)|=\frac{\nu|V_0|}{R},\qquad E(0)=\frac{CV_0^2}{2},\qquad
 |i_p(0)|\leq\epsilon_i\quad\Longrightarrow\quad
 E(0)\leq\frac{CR^2\epsilon_i^2}{2\nu^2}.
 \label{eq:hidden-energy-bound}
\end{equation}
Here $\epsilon_i$ bounds the true initial current after calibration and timing uncertainty, not merely the displayed reading. The bound follows by eliminating $|V_0|$. If $C\leq C_{\max}$, $R\leq R_{\max}$ and $\nu\geq\nu_{\min}>0$, the corresponding bound is $C_{\max}R_{\max}^2\epsilon_i^2/(2\nu_{\min}^2)$. Without a positive coupling lower bound or an independent preparation bound, there is no uniform finite ceiling: choosing $|V_0|=R\epsilon_i/\nu$ preserves the terminal limit while the store grows as $\nu^{-2}$. Those arbitrarily large states belong to the ideal parameter family; finite voltage and preparation limits must be supplied for an actual device.

Internal capacitor voltages and resistor-current measurements distinguish a changing hidden store from an unresolved terminal signal. [*Hidden States and Unassigned Work*][companion] develops the separate works, endpoint measurements and uncertainty. The exact single-branch account does not bound multiple nearly cancelling modes, nonideal coupling, probe loading or arbitrary preparation.

#### A three-state loop with a directly measurable hidden store
\label{sec:hidden-loop}

A closed loop containing an inductor, a series resistance $R_\Sigma\geq0$ and two series-connected parallel RC sections gives a direct control for that observation question. With identical $R,C>0$, no applied voltage and consistently oriented section voltages,
\begin{equation}
 L\dot i=-R_\Sigma i-v_1-v_2,\qquad
 C\dot v_j=i-v_j/R,\quad j=1,2.
 \label{eq:hidden-loop-state}
\end{equation}
The compatible preparation and exact response are
\begin{equation}
 (i(0),v_1(0),v_2(0))=(0,V_0,-V_0),\qquad
 i=0,\quad v_1=V_0e^{-t/(RC)},\quad v_2=-V_0e^{-t/(RC)}.
 \label{eq:hidden-loop-motion}
\end{equation}
There are three independent physical states. The driven pair $(i,v_1+v_2)$ has two states; $v_1-v_2$ relaxes independently and is absent from the loop-current transfer. A branch-voltage observation generally retains all three initialized modes. Unequal time constants couple the difference back to the terminal observation. Thus a quiet terminal does not remove the third state.

The physical store is $E=Li^2/2+C(v_1^2+v_2^2)/2$. Multiplication of the state equations by $i,v_1,v_2$ gives
$\dot E=-R_\Sigma i^2-(v_1^2+v_2^2)/R$.
Thus the hidden change has a complete resistor account. It supplies an initialized third state despite the terminal cancellation. The companion gives the separate finite works, volt-scale observation control, preparation conditions and illustrative calibration budget; unequal relaxation times give the contrasting observation in \eqref{eq:battery-separation}.

#### Preparing and comparing RF transients

Steady phasor agreement cannot determine how a polynomial surrogate should be initialized. For an inductor with shunt capacitance, use physical states $(i_L,v)$; for quartz use $(i_m,v_{C_m},v)$. Charged shunt capacitor, energized inductor and combined preparations are distinct initial states, even at a common chosen scale. Placing either device behind a finite source resistance changes the released homogeneous operator. The ideal source clamp that imposes an endpoint does not specify its own preparation work or impulse.

Three explicit initial maps illustrate the ambiguity. The physical derivative map uses $y^{(j)}(0)=C(F/\omega_{\mathrm{ref}})^jx_0$ in normalized time. A convenience map retains $y(0),y'(0)$ and sets all higher derivatives to zero. A third retains those two values and chooses a minimum Euclidean-norm higher-derivative vector to cancel only the anchor equation. The last condition is one linear constraint; it does not impose the differentiated hierarchy \eqref{eq:jet-recurrence}, uniform parameter compatibility, or physical preparation. The minimum depends on coordinate scaling.

Let $y_{\mathrm{phys}}$ be the physical response, $y_{\mathrm{der}}$ the surrogate response from the physical derivative map, and $y_{\mathrm{map}}$ its response from another map. Then
\begin{equation}
 y_{\mathrm{map}}-y_{\mathrm{phys}}
 =(y_{\mathrm{der}}-y_{\mathrm{phys}})
 +(y_{\mathrm{map}}-y_{\mathrm{der}}).
 \label{eq:error-partition}
\end{equation}
The first difference isolates the surrogate operator effect under that reference map; the second isolates the initial-map effect. Vector errors add exactly, but their norms need not add or combine as independent variances. Retain the norm triangle gap and both absolute and reference-normalized errors on an explicit finite prefix; a vanishing reference norm makes the relative error undefined. Alternative initialization can reduce total error by cancellation without repairing an unstable operator.

An unstable polynomial impedance fit may match a finite frequency interval while producing an unstable free transient. Its stability and active frequency domain must be established separately; it is unsuitable for an unrestricted physical transient. Conversely, a time-domain collision fit need not transfer to low, modal and high frequency intervals that played no part in its selection. A physical state map must be checked through \eqref{eq:state-image}, and a preparation path through \eqref{eq:preparation}, before a transient has a physical interpretation.

Finite RF preparation can prescribe paths to each of the charged-capacitor, energized-inductor and combined states, including a nonzero prehistory and a finite clamp interval. The boundary encloses every named inductor and capacitor; external powers comprise the preparation source, gate/switch channel, passive losses, load clamp, clamp losses and any environmental-reference channel. Each is integrated separately before comparison with the independently evaluated operation-side stores and jets. A continuous finite clamp has no ideal impulse by construction. It neither assigns the impulse of a different zero-time clamp nor turns zero higher derivatives into the prepared physical map. Arbitrary source limits, switching nonlinearity, stochastic prehistories, temperature, aging and realization of the polynomial surrogate remain unresolved.

On a truly periodic interval of length $T=2\pi/\omega$, a port with peak phasors $V,I$ has
\begin{equation}
 W=\int_{0}^Tvi\,\dd t=\frac\pi\omega\Rea(VI^*).
 \label{eq:period-work}
\end{equation}
Each source and resistor contribution is integrated separately. Component states independently return to their initial values; this follows from the periodic solution, not from assuming constant instantaneous store. A finite settling interval generally has nonzero endpoint change and must retain its homogeneous transient. No component energy is assigned to bare polynomial terms.

For an arbitrary finite window, multiplication of the real peak-phasor signals gives $p(t)=\Rea(VI^*)/2+\Rea(VI e^{2\ii\omega t})/2$. Its exact integral is
\begin{equation}
 W(t_0,t_1)=\frac{t_1-t_0}{2}\Rea(VI^*)
 +\Rea\!\left[
 \frac{VI}{4\ii\omega}
 \left(e^{2\ii\omega t_1}-e^{2\ii\omega t_0}\right)\right],
 \qquad \omega\ne0.
 \label{eq:finite-window-phasor}
\end{equation}
The endpoint primitive vanishes on a full period but generally survives on a partial period. For a capacitor with $v=V_p\cos\omega t$, $i=C\dot v$, direct integration gives $W=CV_p^2[\cos^2(\omega t_1)-\cos^2(\omega t_0)]/2$, matching the two independently evaluated capacitor stores. It equals $-CV_p^2/2$ from $0$ to $\pi/(2\omega)$ and zero over a full period. Zero period-average input therefore does not imply constant instantaneous storage. At DC use the actual constant effort--flow product. Startup adds the homogeneous state response and all its cross products; multiple frequencies add their beat terms. Neither a carrier-frequency fit nor cycle-average loss alone determines these finite-window transfers.

### A passive reference for finite representations

A useful exact normalized reference is
\begin{align}
 Z_*(q)&=\frac9{50}+\sum_{j=1}^3
 \frac{a_{j}q}{q^2+2\zeta_{j}\omega_{j}q+\omega_{j}^2},\nonumber\\
 (\omega_{j})&=\left(\frac7{10},2,6\right),\quad
 (\zeta_{j})=\left(\frac2{25},\frac3{20},\frac3{10}\right),\quad
 (a_{j})=\left(\frac9{10},\frac35,\frac7{20}\right).
 \label{eq:passive-reference}
\end{align}
Each summand is a parallel RLC impedance with
$C_{j}=1/a_{j}$, $L_{j}=a_{j}/\omega_{j}^2$ and $R_{j}=a_{j}/(2\zeta_{j}\omega_{j})$. The series connection is therefore passive. Its nearest pole has modulus $7/10$, fixing the Taylor convergence radius at the origin.

Different finite representations answer different mathematical questions. Taylor coefficients match derivatives at an anchor. A real-coefficient polynomial fit minimizes a chosen finite-band norm. A discrete minimax construction certifies only its declared evaluation set unless an interval bound is supplied. A Padé rational function matches moments but has no automatic passive component interpretation. Fixed-pole residue adjustment differs from moving-pole rational identification. One-sided Krylov projection matches specified moments; stable balanced truncation does not in general preserve positive-realness. A positive Foster construction enforces a realizable cone but may exclude the best unconstrained fit. Increasing order need not reduce an unrelated error criterion monotonically. For every method, stability, positive-realness, fit domain, residual bound and initial-state map are separate obligations. The monotonic reactance property of [Foster (1924)][foster] applies to lossless reactance functions, not arbitrary lossy impedances.

## Eliminated polarization states in a switched battery circuit
\label{sec:battery}

The coefficient construction in Appendix \ref{sec:construction} supplies the conducting-state equations \eqref{eq:battery-state}, the complete forced operator \eqref{eq:battery-forcing} and the coefficient recurrence \eqref{eq:branch-coefficients}. This application determines what those equations retain under preparation, coincident relaxation times and diode switching. The positive current convention and the conducting-interval restrictions stated there remain in force.

For coincident $\tau_{1}=\tau_{2}=\tau$, the sum $v_{1}+v_{2}$ obeys
$\tau(v_{1}+v_{2})'=(R_{1}+R_{2})i-(v_{1}+v_{2})$.
The difference state associated with $(i,v_{1},v_{2})=(0,1,-1)$ is terminally hidden. Its internal resistor losses and capacitor stores need not vanish. Nearly coincident branches are exactly distinct but can be poorly identifiable. A relaxed vanishing-residue limit differs from a fixed-state limit: taking $R_{j}\to0$ at fixed $\tau_{j}$ sends $C_{j}=\tau_{j}/R_{j}$ to infinity. If $v_{j}(0)$ is fixed and nonzero, $v_{j}(0)e^{-t/\tau_{j}}$ remains in the terminal voltage and its initial store diverges. Dropping that branch is justified only with an appropriate state and preparation limit.

For $N=0$, $I_0>0$, $V_{\mathrm{oc}}>0$ and $R_\Sigma=R>0$, the solution and cutoff are exact:
\begin{equation}
 i(t)=\left(I_{0}+\frac{V_{\mathrm{oc}}}R\right)e^{-Rt/L}
                   -\frac{V_{\mathrm{oc}}}R,
 \qquad t_{c}=\frac LR\log\left(1+\frac{RI_{0}}{V_{\mathrm{oc}}}\right).
 \label{eq:battery-simple}
\end{equation}
Integrating the OCV power first yields
\begin{equation}
 W_{\mathrm{oc}}=\int_{0}^{t_{c}}V_{\mathrm{oc}}i\,\dd t
 =V_{\mathrm{oc}}\left(\frac{LI_{0}}R-\frac{V_{\mathrm{oc}}t_{c}}R\right).
 \label{eq:battery-work}
\end{equation}
At $R=0$ with $V_{\mathrm{oc}}>0$, the separately derived solution is $i=I_{0}-V_{\mathrm{oc}}t/L$, $t_{c}=LI_{0}/V_{\mathrm{oc}}$, and the same integral is $LI_{0}^2/2$. The illustrative $L=1\ \mathrm{mH}$, $I_{0}=100\ \mathrm A$, $V_{\mathrm{oc}}=12\ \mathrm V$ gives $t_{c}=1/120\ \mathrm s$ and $W_{\mathrm{oc}}=5\ \mathrm J$ in the ideal model. No claim about chemical efficiency follows from this ideal voltage-source work.

The zero-OCV boundary is separate. For $N=0$, $V_{\mathrm{oc}}=0$, $R>0$ and $I_0>0$, $i(t)=I_0e^{-Rt/L}$ never reaches zero at finite time. Its OCV work is zero and its signed resistance work on $[0,T]$ is $-LI_0^2(1-e^{-2RT/L})/2$, directly from $\int_0^T-Ri^2\,\dd t$; the independent coil endpoint store is $LI_0^2e^{-2RT/L}/2$. If also $R=0$, current is constant, every external power is zero and the two endpoint stores agree. These cases have no duration selected by a finite first-zero condition. At $I_0=0$ the unpolarized circuit can remain blocked from the outset, which is not a downward crossing.

For the multi-branch realization, write $z=(i,v_{1},\ldots,v_{N})^T$, so
$z(t)=e^{Ft}z(0)+\int_{0}^te^{F(t-u)}b\,\dd u$ exactly. The first-zero event is an implicit root of its current component. This closed form defines all interval integrals without reporting a numerical trajectory. An illustrative three-branch family uses $(R_{j},\tau_{j})=(3/200,1/5000),(3/100,1/1000),(3/50,1/200)$ in ohms and seconds, coil resistance $3/100\ \Omega$ and battery ohmic resistance $1/50\ \Omega$. Changing the number, spacing or preparation of branches changes the cutoff and internal partition; there is no universal fourth-order battery law.

The coil-only boundary has inward powers $-v_{b}i$ and $-R_{\mathrm{coil}}i^2$, with $v_{b}=V_{\mathrm{oc}}+R_{b0}i+\sum v_{j}$. For the combined coil and polarization-store boundary, use instead
\begin{equation}
 P_{\mathrm{oc}}=-V_{\mathrm{oc}}i,\quad
 P_{\mathrm{coil}}=-R_{\mathrm{coil}}i^2,\quad
 P_{b0}=-R_{b0}i^2,\quad P_{j}=-v_{j}^2/R_{j},
 \quad E=Li^2/2+\sum_{j}C_{j}v_{j}^2/2.
 \label{eq:battery-ledger}
\end{equation}
Integrate every channel on a finite conducting interval $[0,t_c]$, then compare the independent endpoint stores. Including both the battery terminal work and its internal decomposition in this combined sum would count the same transfer twice. A permanently opened connection after $i(t_c)=0$ leaves each polarization branch to relax independently, with continuous capacitor voltages and no ideal opening impulse. If the connection instead retains only the diode, the candidate blocked solution must satisfy
\begin{equation}
 i=0,\qquad v_j(t)=v_j(t_c)e^{-(t-t_c)/\tau_j},\qquad
 V_b^{\mathrm{off}}(t)=V_{\mathrm{oc}}+\sum_jv_j(t_c)e^{-(t-t_c)/\tau_j}\geq0.
 \label{eq:battery-off}
\end{equation}
Nonnegative branch voltages at cutoff are sufficient for continued blocking. Arbitrarily prepared signed voltages need not satisfy the guard forever. At a crossing of $V_b^{\mathrm{off}}$ into negative values, the conducting equations restart with $i=0$, since $L\dot i=-V_b^{\mathrm{off}}>0$. A tangency that leaves the guard nonnegative does not trigger that transition.

For an exact counterexample, let $V_{\mathrm{oc}}=V_b>0$, $(v_1(t_c),v_2(t_c))=(8V_b,-8V_b)$ and $(\tau_1,\tau_2)=(T_b,2T_b)$, with $T_b>0$. Writing $\vartheta=(t-t_c)/T_b$, the proposed off-state voltage is $V_b(1+8e^{-\vartheta}-8e^{-\vartheta/2})$. It starts positive, first vanishes at
\begin{equation}
 t_r-t_c=-2T_b\log\!\left(\frac{2+\sqrt2}{4}\right),
 \label{eq:battery-restart}
\end{equation}
and its inadmissible continuation would equal $-V_b$ at $\vartheta=2\log2$. The cutoff state is locally attainable from positive current: the conducting derivative at the event is $-V_b/L<0$. Thus the first downward current zero does not prove permanent isolated relaxation.

On an opened interval, or on a blocked interval ending before the guard fails, each resistor integral is exactly $-C_jv_j(t_c)^2[1-e^{-2(T-t_c)/\tau_j}]/2$. The independently evaluated remaining store is $C_jv_j(t_c)^2e^{-2(T-t_c)/\tau_j}/2$. It is not set to zero at finite time. A later conducting interval requires its own source, coil and polarization ledger; the off-state formula cannot be extended through it.

A pulse selected to have duration $T$ in the simple model with $V_{\mathrm{oc}}>0$ needs
$I_{0}=(V_{\mathrm{oc}}/R)(e^{RT/L}-1)$, or $I_{0}=V_{\mathrm{oc}}T/L$ when $R=0$. This uses the current-zero condition, followed by current, voltage and instantaneous-power limits. It does not use energy to choose the pulse. In a polarization model duration selection remains a root condition on the exact state solution. Geometry-derived inductance, coil resistance and temperature cannot be varied independently unless the construction permits it.

A scheduled interruption before the current zero leaves $Li^2/2$ in the coil. A finite clamp capacitor, dissipative clamp or recovery converter must receive the corresponding signed work. Finite preparation sources, branch charging resistors, switch losses and reset conductances similarly require their own powers. Ideal imposed initial states establish an observation-interval model only. Reverse recovery, temperature, aging, continuous relaxation spectra and material nonlinearity are additional mechanisms, not evidence for a universal order inferred from a finite branch family.

How can order be recovered from noisy data with arbitrary branch preparations [OP-LR01-04]? Equal-and-opposite voltages on equal-time-constant branches leave the terminal transient unchanged while internal probes reveal relaxation. Splitting the time constants tests the observation sensitivity in \eqref{eq:information}. [*Hidden States and Unassigned Work*][companion] develops the low-voltage RC emulator and distinguishes exact hidden freedom from inadequate resolution. An actual battery's temperature- and age-dependent spectrum remains a separate physical question.

For a quantitative version, disconnect the external current path during the observation, so that the diode guard is irrelevant. Prepare $(v_1(0),v_2(0))=(V_0,-V_0)$ with $V_0\ne0$. The terminal departure from the known OCV and its largest absolute value occur according to
\begin{equation}
 \Delta v(t)=V_0(e^{-t/\tau_1}-e^{-t/\tau_2}),\qquad
 t_*=\frac{\tau_1\tau_2}{\tau_2-\tau_1}
             \log\!\left(\frac{\tau_2}{\tau_1}\right),\quad 0<\tau_1<\tau_2.
 \label{eq:battery-separation}
\end{equation}
Differentiating the two exponentials gives the unique positive stationary time; their difference is zero at both interval endpoints $0$ and infinity, so it is the maximum in magnitude. Equal time constants instead give $\Delta v=0$ throughout. If each alternative has a total voltage error bound $\epsilon_v$, the predictions separate when $|\Delta v(t_*)|>2\epsilon_v$. The bound must include initial-voltage mismatch, OCV drift, timing, component tolerances and probe loading, with their allowed correlations. Otherwise the outcome remains unresolved under \eqref{eq:measurement-separation}. Internal branch probes establish the prepared hidden relaxation even when the terminal comparison cannot resolve it.

## Driven, nonlinear and time-varying realizations
\label{sec:driven}

Driven and changing systems test which parts of a coefficient law remain fixed when excitation, material state or control is varied. The input operator, time dependence and additional physical states must be specified before a constant-coefficient construction is transferred.

### A switched cubic with a reconstructible physical state
\label{sec:switched-cubic}

Consider a voltage-driven primary winding coupled to a secondary series winding, resistor and capacitor. The observation is the capacitor voltage $v$, the input is the primary voltage $u$, and the retained states are $(i_1,i_2,v)$. Fix $L_1,L_2,C,R_1>0$, real $M$, and $\Delta=L_1L_2-M^2>0$; prescribe a nonnegative resistance $R_2(t)$ independently of the observed response. On a smooth interval, Kirchhoff's laws are
\begin{equation}
 L_1\dot i_1+M\dot i_2=u-R_1i_1,\qquad
 M\dot i_1+L_2\dot i_2=-R_2i_2-v,\qquad
 C\dot v=i_2.
 \label{eq:switched-components}
\end{equation}
Eliminate $i_2$, multiply the second winding equation by $L_1$, and subtract $M$ times the first. This gives
$$
 MR_1i_1=Mu+\Delta Cv''+L_1R_2Cv'+L_1v.
$$
Differentiation followed by the second winding law yields
\begin{equation}
 \Delta Cv'''+C(L_1R_2+R_1L_2)v''
 +(L_1+R_1R_2C+L_1C\dot R_2)v'+R_1v=-M\dot u.
 \label{eq:switched-cubic}
\end{equation}
Both $\dot R_2$ and $\dot u$ follow from the elimination. A resistance value substituted into the constant-interval cubic cannot represent a finite edge without its product-rule term. For $M\ne0$, the inverse map is
\begin{equation}
 i_2=Cv',\qquad
 i_1=\frac{Mu+\Delta Cv''+L_1R_2Cv'+L_1v}{MR_1}.
 \label{eq:switched-inverse}
\end{equation}
Substitution into the two winding laws gives respectively $L_1F/(MR_1)$ and $F/R_1$, where $F$ is the left-hand side of \eqref{eq:switched-cubic} plus $M\dot u$. Thus the initialized cubic and the component system are equivalent on this regular domain.

For an ideal resistance jump with finite efforts, currents and capacitor voltage remain continuous. Write $[g]=g(t_e^+)-g(t_e^-)$. Transporting those physical states in \eqref{eq:switched-inverse} gives
\begin{equation}
 [v]=[v']=0,\qquad
 \Delta C[v'']=-M[u]-L_1C[R_2]v'.
 \label{eq:switched-jet-jump}
\end{equation}
The input may have a finite jump here. Copying $v''$ across the event generally violates the new component law; a distributional scalar formulation must retain the corresponding jumps. There is no ideal resistor-switch impulse in this model. Actual gate, arc or material dynamics require their own laws.

The coefficient family needs a declared scale even in this example. On each smooth interval set $(a,b,c)=(L_1,R_1,1/C)$ and multiply the complete equation by $R_1/L_1$. If $b_k$ are the four unscaled coefficients in \eqref{eq:switched-cubic}, then
\begin{equation}
 B_k=(R_1/L_1)b_k=w_{0,k}A_{0,k},\qquad
 A_{0,k}=L_1^{k-1}R_1^{2-k},\qquad
 f=-(R_1M/L_1)\dot u.
 \label{eq:switched-normalization}
\end{equation}
Here $w_{0,k}=B_k/A_{0,k}$ is dimensionless. The independent physical coordinates may be taken as $L_1,R_1,C,L_2,M,R_2$ on a constant interval; a finite edge additionally supplies the function $R_2(t)$. The observation is voltage, but the chosen equation scale gives $[B_k]=\Omega\,\mathrm{s}^{k-1}$. These parameter-dependent weights give an exact representation, not constant weights across an arbitrarily changing component domain. All coefficients and the input are fixed by the component laws; no energy account determines them.

At $M=0$, the observable secondary obeys $L_2Cv''+R_2Cv'+v=0$ while the independent primary can still store energy. At $R_1=0$, which lies outside this reference chart, elimination before differentiation gives $\Delta Cv''+L_1R_2Cv'+L_1v=-Mu$; differentiating it admits an extra integration constant unless the original relation is retained. At $\Delta=0$, retain the descriptor equations and the constraint $MR_1i_1-Mu-L_1(R_2i_2+v)=0$ instead of dividing by $\Delta$. More generally, replacing $F=0$ by $(D+\lambda)F=0$ permits $F=ae^{-\lambda(t-t_0)}$; $F(t_0)=0$ is required to recover the original law. Higher formal order does not repair missing preparation.

For the winding/capacitor boundary the constitutive store is
$E=(L_1i_1^2+2Mi_1i_2+L_2i_2^2+Cv^2)/2$. Its distinct inward powers are $ui_1$, $-R_1i_1^2$ and $-R_2i_2^2$. Their separate finite-interval integrals and independently evaluated endpoint stores follow the state reconstructed above. An exact observation reduction at $M=0$ cannot reconstruct the hidden primary store from $v$. The prescribed resistor command excludes its physical controller; that implementation requires additional ports and states. The example therefore tests equation equivalence, event initialization and physical accounting as separate claims.

### Common and differential electrical modes

Consider two reciprocal coupled windings with
$\mathsf L=L\left(\begin{smallmatrix}1&\kappa\\\kappa&1\end{smallmatrix}\right)$,
$|\kappa|<1$, winding resistance $R>0$, and differential load resistance $R_\ell\geq0$:
\begin{equation}
 \mathsf L\dot i+
 \left[R I+R_\ell\begin{pmatrix}1&-1\\-1&1\end{pmatrix}\right]i
 =\binom{V_{0}+V_{d}\sin\omega t}{V_{0}-V_{d}\sin\omega t}.
 \label{eq:driven-coils}
\end{equation}
With $i_\pm=(i_{1}\pm i_{2})/2$ the modes are exactly
\begin{equation}
 L(1+\kappa)\dot i_++Ri_+=V_{0},\qquad
 L(1-\kappa)\dot i_-+(R+2R_\ell)i_-=V_{d}\sin\omega t.
 \label{eq:driven-modes}
\end{equation}
Each solution is its exact particular solution plus a decaying exponential. At $\kappa=\pm1$ one equation becomes an algebraic constraint; incompatible initial currents cannot be transported through that boundary without another physical path. An open differential load, DC and infinite-frequency limits also require their exact constraints, rather than a large finite replacement.

The physical store is $E=i^T\mathsf Li/2$. For the two-winding boundary, the separate inward powers are $v_{1}i_{1}$, $v_{2}i_{2}$, $-Ri_{1}^2$, $-Ri_{2}^2$ and $-R_\ell(i_{1}-i_{2})^2$. Integrate them on preparation, driven operation and relaxation intervals and compare endpoint currents. Exact phasors describe operation from an exactly prepared periodic state, or the limiting periodic solution of a stable system; they do not remove a finite settling tail.

For settled common current $I_+=V_{0}/R\geq0$ and differential amplitude $A_-$, opposite current signs occur when $|i_-|>I_+$. Their fraction of a period is
\begin{equation}
 d_{\mathrm{opp}}=
 \begin{cases}
 0,&A_-\leq I_+,\\
 1-\dfrac2\pi\arcsin(I_+/A_-),&A_->I_+.
 \end{cases}
 \label{eq:counterflow-duty}
\end{equation}
The zero-common-current case has unit fraction apart from isolated zeros, provided $A_->0$; if both amplitudes vanish, there is no opposite-sign interval. Coupled linkage is $\mathsf Li$, so an absolute linkage sum is not an absolute current sum. Neither is the sum of branch apparent powers $\sum V_{j,\mathrm{rms}}I_{j,\mathrm{rms}}$, which has units of volt-amperes. With the peak phasors used here, complex power is $VI^*/2$ and reactive power is $\Im(VI^*)/2$; RMS phasors instead give $\Im(V_{\mathrm{rms}}I_{\mathrm{rms}}^*)$. Neither reactive quantity is signed transferred work, and the peak convention agrees with \eqref{eq:period-work}.

A fitted admittance $G_\infty+\sum a_{j}/(1+s\tau_{j})$ with $a_{j}>0$ is realized by a conductance and series RL branches with $R_{j}=1/a_{j}$, $L_{j}=\tau_{j}/a_{j}$. Negating a branch's terminal response while keeping that same positive-store internal core leaves a transfer to identify. If the core absorbs $u j$ but its terminal current is $s_bj$, $s_b=-1$, the unmatched inward power is $(1-s_b)u j=2u j$. Its signed integral on the declared interval is the required additional work. A controller is one candidate account, whose supply, state and losses must be constructed and evaluated independently. Stable poles alone do not certify the resulting terminal passivity. A useful finite response band does not certify global transfer or identify a fitted model's physical states.

### Forced observations and coordinate sensitivity
\label{sec:forced-observations}

A stable system $\dot z=-\diag(p_{1},p_{2})z+bu$, $p_{j}>0$, $b=(1,7/10)^T$, can be written as $x=Vz$ with nearly parallel eigenvectors. Its coordinate norm may exhibit a transient increase. The positive physical quadratic metric transported from $z$ is
\begin{equation}
 H=V^{-T}V^{-1},\quad E=x^THx/2=z^Tz/2,\quad
 \dot E=-p_{1}z_{1}^2-p_{2}z_{2}^2+u b^Tz.
 \label{eq:nonnormal}
\end{equation}
The loss channels have effort $p_{j}z_{j}$ and flow $z_{j}$ in the normalized realization, and the source port has effort $u$, flow $b^Tz$. A coordinate burst does not identify an increase of physical store. As eigenvectors coalesce, the coordinate transformation may become singular; one must distinguish a change of basis from an actual Jordan-block system.

A forced coefficient prediction uses the input and prepared state in \eqref{eq:preparation}. The comparison must retain the homogeneous contribution and the observation window. Appendix \ref{sec:waveform-statistics} develops the distinct waveform classes, correlated finite-path observations and conditional crossing statistic; Appendix \ref{sec:identification} states their consequences for coefficient recovery. Coordinate magnitude and waveform statistics alone do not identify the physical metric or a unique coefficient law.

### Material memory and parameter modulation

A concrete nonlinear inductive model uses flux $\phi$, internal material coordinate $m$ and potential
\begin{equation}
 U(\phi,m)=\frac{\phi^2}{2}+\frac{\alpha\phi^4}{4}
                +\frac h2(\phi-m)^2,\quad
 i=\phi+\alpha\phi^3+h(\phi-m),\quad
 \dot\phi=v-Ri,\quad \dot m=\frac h\zeta(\phi-m),
 \label{eq:material}
\end{equation}
with $\alpha\geq0$, $h,\zeta,R>0$ in a declared normalized system. Direct differentiation yields
$\dot U=vi-Ri^2-h^2(\phi-m)^2/\zeta$. The material loss is the product of generalized effort $h(\phi-m)$ and its conjugate flow $\dot m$. Integrate that loss and electrical powers separately. A loop integral $\oint i\,\dd\phi$ describes a closed physical cycle only when the internal coordinate also returns to its initial state. This rate-dependent lag law is not a universal hysteresis model. Thermodynamically admissible measured material laws, saturation, longer settling and wider excitation remain open.

A second normalized material control isolates the failure of an average-loss replacement:
\begin{equation}
 \dot\phi=v,\quad i=\phi+\phi^3+z,\quad
 \dot z=k_m v-z/\tau_m,\quad
 E_m=\phi^2/2+\phi^4/4+z^2/(2k_m),\quad
 \dot E_m=vi-z^2/(k_m\tau_m).
 \label{eq:material-average-control}
\end{equation}
Here $k_m>0$ is fixed and $\tau_m>0$ may be a prescribed function of bias or temperature. Two preparations with the same $\phi,v$ and different $z$ have different current and remaining material store. Matching one sinusoidal cycle loss therefore does not identify instantaneous power, minor reversals, startup or reset. This synthetic law has no independently established material applicability; a fitted loss resistor needs its own waveform, bias, temperature and history domain. If $k_m$ varies, differentiation adds the parameter term $-z^2\dot k_m/(2k_m^2)$, which cannot be dropped.

A mechanical/thermal boundary gives a related exact control: $m\dot v=F=-b(v-u)$ and $C_T\dot\vartheta=b(v-u)^2-h_T\vartheta$. The mass receives $Fv$, while the thermal subsystem receives viscous conversion and exports $h_T\vartheta$. The combined store $mv^2/2+C_T\vartheta$ receives $Fu-h_T\vartheta$, since $Fv+b(v-u)^2=Fu$. Counting viscous heat as both internal retained heat and exported work would change this boundary. These are declared viscous and caloric laws, not measured contact laws.

For a mechanical oscillator with prescribed positive $m(t),k(t)$,
$\dot q=p/m$ and $\dot p=F-cp/m-kq$, the actual store satisfies
\begin{equation}
 E=\frac{p^2}{2m(t)}+\frac{k(t)q^2}{2},\qquad
 \dot E=F\frac pm-c\left(\frac pm\right)^2
       -\frac{p^2\dot m}{2m^2}+\frac{q^2\dot k}{2}.
 \label{eq:parametric}
\end{equation}
An electrical counterpart uses linkage $\lambda$ and charge $q$ with $i=\lambda/L(t)$, $v_C=q/C(t)$, $\dot\lambda=u-Ri-v_C$ and $\dot q=i$. Its independently defined store obeys
\begin{equation}
 E=\frac{\lambda^2}{2L(t)}+\frac{q^2}{2C(t)},\qquad
 \dot E=ui-Ri^2-\frac{i^2}{2}\dot L-\frac{v_C^2}{2}\dot C.
 \label{eq:electrical-parametric}
\end{equation}
The coefficients of $\dot L$ and $\dot C$ are the efforts conjugate to the imposed parameter rates. They are physical modulation ports only when the parameter-changing mechanism is included in the declared realization.

For the mechanical model, the last two products are modulation-port powers, with efforts
$-p^2/(2m^2)$ and $q^2/2$ conjugate to flows $\dot m$ and $\dot k$. Stability of a periodic modulation is determined by the exact monodromy matrix and its Floquet multipliers, not by frozen instantaneous poles. Positive coefficients at every instant do not exclude parametric instability. Modulation phase, depth, frequency, tangent boundaries and separate zero or negative parameter regimes require explicit continuation or proof.

### Feedback and finite supplies

Closing feedback changes the pole equation to $1+K(s)H(s)=0$, including every controller, observer, sensor and actuator state. A first-order lag $1/(1+sT_{d})$ is not an exact delay. Replacing an oscillator by a frozen first-order fit can change closed-loop stability even when an open-loop band fit is good. Proportional control, lead--lag compensation, observers, polarity changes and saturation have different state structures. Stable/passive reduction must be assessed in the intended interconnection, using trajectory or transfer criteria rather than work or energy to select it.

An explicit supply can include a DC-link capacitor $C_{b}$ with
$C_{b}V_{b}\dot V_{b}=P_{\mathrm{source}}-P_{\mathrm{converter}}$,
a bias winding, converter loss and a thermal state. The corresponding capacitor current is $P/V_{b}$ only while $V_{b}\ne0$; a zero bus voltage is a boundary requiring another model. Return power may charge the bus or bias winding even after the external source is disabled. Sensor supply, magnetic reaction and thermal ports cannot be suppressed while claiming a complete physical controller. Finite source ratings, nonlinear observer uncertainty, multivariable or adaptive control, long delays and hardware validation remain unresolved. An unstable trajectory can still have a correct signed work balance on a finite prefix; it has no stationary phasor interpretation.

## Mechanical absorption and electromechanical third order
\label{sec:applications}

Mechanical elimination supplies further fourth- and third-order coefficient laws. Their determinants expose which masses, couplings and source terms determine the coefficients; the subsequent work accounts assess those declared realizations.

### A two-mass absorber

Let $x_{1}$ be the primary displacement, $x_{2}$ the absorber displacement and $y$ the driven base displacement. Define $g(s)=k_{0}+c_{0}s$ and $b(s)=k_{2}+c_{2}s$. The exact equations are
\begin{equation}
 M\ddot x_{1}+g(D)(x_{1}-y)+b(D)(x_{1}-x_{2})=F,\qquad
 m\ddot x_{2}+b(D)(x_{2}-x_{1})=0.
 \label{eq:absorber-state}
\end{equation}
For positive masses and stiffnesses, with sufficient damping to damp every mode, this is an asymptotically stable four-state system. Define
$a_{11}=Ms^2+g+b$, $a_{22}=ms^2+b$ and
$\mathcal D=a_{11}a_{22}-b^2$. The support reaction $R=g(D)(x_{1}-y)$ satisfies
\begin{equation}
 \mathcal D(s)R(s)=g(s)a_{22}(s)F(s)
                  +g(s)[g(s)a_{22}(s)-\mathcal D(s)]Y(s).
 \label{eq:absorber-poly}
\end{equation}
Initial-state terms are supplied by the physical four-state realization. The internal coupling force is $b(D)(x_{1}-x_{2})$, and total momentum obeys $(M\dot x_{1}+m\dot x_{2})'=F-R$. A reaction fit alone does not reconstruct either internal quantity.

The boundary enclosing both masses and both springs has
\begin{align}
 E&=\frac12M\dot x_{1}^2+\frac12m\dot x_{2}^2
       +\frac12k_{0}(x_{1}-y)^2+\frac12k_{2}(x_{1}-x_{2})^2,\nonumber\\
 P_{F}&=F\dot x_{1},\quad
 P_{y}=-[k_{0}(x_{1}-y)+c_{0}(\dot x_{1}-\dot y)]\dot y,\nonumber\\
 P_{0}&=-c_{0}(\dot x_{1}-\dot y)^2,\qquad
 P_{2}=-c_{2}(\dot x_{1}-\dot x_{2})^2.
 \label{eq:absorber-work}
\end{align}
The base power includes the full force on the moving support. Integrate all four powers over the stated interval, then evaluate $E$ at both endpoints. Omitting the base port while driving it produces a spurious residual.

With $y=0$ and $c_{2}=0$, the frequency $\omega_{a}^2=k_{2}/m$ makes $a_{22}(\ii\omega_{a})=0$. Provided the coupling is nonzero, $x_{1}$ vanishes while $x_{2}$ remains finite and balances the applied force. This exact antiresonance explains why a quiet terminal can hide internal stress. With both base and force excitation, their relative phase can also cancel reaction without eliminating either motion. Terminal reaction cannot identify internal coupling stress within the bounded normalized structural scope [OP-LR58-01]. That clause is resolved; raw-unit recovery, wider model families and hardware discrimination remain separate. Internal acceleration and coupling strain on an adjustable two-mass shaker distinguish a quiet terminal from a quiet interior. [*Hidden States and Unassigned Work*][companion] develops the independent mass/damping changes and calibrated stress comparison.

The quantitative particular solution for force peak phasor $\widehat F\ne0$ is $\widehat x_1=0$, $\widehat x_2=-\widehat F/k_2$ and $\widehat R=0$. For a uniform axial coupling element of reference length $\ell_2$, its extension strain is $\widehat\varepsilon_2=\widehat F/(k_2\ell_2)$. A zero-strain alternative is distinguishable if this magnitude exceeds the combined calibrated strain uncertainty, including the finite settling correction derived below. With nonzero $c_2$, use the exact determinant expressions instead of claiming an exact node. Low support reaction alone cannot decide between those internal predictions.

At $m=0$, a compatible massless absorber satisfies $b(D)(x_{2}-x_{1})=0$; its internal relaxation must be considered before identifying a locked displacement. At zero coupling, the absorber's free modes disconnect and become hidden from the primary. A rigidly locked absorber adds its mass to $M$. These are distinct boundary models.

The small-mass resonant limit is nonuniform. Set $k_{2}=m\omega_{a}^2$, $c_{2}=2\zeta m\omega_{a}$ and evaluate at $s=\ii\omega_{a}$. Eliminating $x_{2}$ contributes the exact dynamic stiffness
\begin{equation}
 b-\frac{b^2}{a_{22}}
 =-m\omega_{a}^2+\frac{\ii m\omega_{a}^2}{2\zeta}.
 \label{eq:absorber-singular}
\end{equation}
Thus $m\to0$ at fixed $\zeta>0$ removes the contribution, whereas $\zeta=m/m_*$ gives a finite imaginary contribution and faster vanishing $\zeta$ makes it unbounded. The dimensioned reference $m_*$ keeps the scaling meaningful. This resolves one analytic path dependence without claiming all frequency, forcing or damping limits commute. Other coscalings, nonlinear/contact absorbers, base acceleration constraints and nonideal switching remain open.

A finite measurement after turn-on includes $Ce^{Ft}(x_{0}-x_{\mathrm{per}}(0))$. Its Fourier integral over $[0,T]$ is exactly
$C(F-\ii\omega I)^{-1}[e^{(F-\ii\omega I)T}-I](x_{0}-x_{\mathrm{per}}(0))$
when the inverse exists, with continuous extension at a singular argument. This term supplies an analytic settling correction or bound. No finite waiting time is exactly steady unless the homogeneous amplitude is zero. Disjoint frequency intervals and independently varied fit structures are needed to establish transfer beyond one antiresonance neighborhood.

### A third-order transducer and unassigned coupling work
\label{sec:coupling-open}

An electrical winding and a mechanical oscillator form a natural third-order system:
\begin{equation}
 L\dot i=v_{s}-Ri-g_{e} v,\qquad \dot x=v,\qquad
 m\dot v=g_{m}i-dv-kx+F_{s},
 \label{eq:transducer}
\end{equation}
where $d=c+c_\ell$ may include internal and load damping. With
$Z_{e}=R+sL$, $Z_{m}=d+sm+k/s$,
\begin{equation}
 \binom{v_{s}}{F_{s}}=
 \begin{pmatrix}Z_{e}&g_{e}\\-g_{m}&Z_{m}\end{pmatrix}\binom i v,
 \quad \mathcal D=Z_{e}Z_{m}+g_{e}g_{m},
 \quad \frac v{v_{s}}=\frac{g_{m}}{\mathcal D},\quad
 \frac i{F_{s}}=-\frac{g_{e}}{\mathcal D}.
 \label{eq:transducer-port}
\end{equation}
The minus sign follows the chosen mechanical source orientation. Reciprocity has $g_{e}=g_{m}$ in consistent effort--flow units; the antisymmetric off-diagonal signs do not mean nonreciprocity. Its scalar characteristic polynomial is
\begin{equation}
 s\mathcal D=Lm s^3+(Rm+Ld)s^2+(Rd+Lk+g_{e}g_{m})s+Rk.
 \label{eq:transducer-cubic}
\end{equation}
The cubic Routh condition applies to these complete coefficients. Positive reciprocal coupling with positive damping gives a passive stable realization; altering one coupling independently requires a new physical explanation.

For $E=Li^2/2+mv^2/2+kx^2/2$,
\begin{equation}
 \dot E=v_{s}i+F_{s}v-Ri^2-dv^2+(g_{m}-g_{e})iv.
 \label{eq:transducer-work}
\end{equation}
The last term is an unassigned coupling power for the sources and losses listed in \eqref{eq:transducer}. Enclose the winding, mass and spring and exclude the source and loss reservoirs. On a smooth interval $[t_0,t_1]$ without resets, integrate the four inward powers separately:
\begin{align}
 W_V&=\int_{t_0}^{t_1}v_si\,\dd t,&
 W_F&=\int_{t_0}^{t_1}F_sv\,\dd t,\nonumber\\
 W_R&=-\int_{t_0}^{t_1}(Ri)i\,\dd t,&
 W_d&=-\int_{t_0}^{t_1}(dv)v\,\dd t,\nonumber\\
 r_E^{\mathrm{listed}}&=E(t_1)-E(t_0)-W_V-W_F-W_R-W_d
       =\int_{t_0}^{t_1}(g_m-g_e)iv\,\dd t.
 \label{eq:coupling-residual}
\end{align}
When $d=c+c_\ell$, the last loss is split into the internal damper and load integrals before combination. A controller, bias reaction or revised constitutive law may account for the residual. Its signed work must be established independently. Assigning the rightmost integral to a named port does not establish the transfer. One-way coupling $g_m=0$, reversed $g_m=-g_e$ and attenuated $g_m=g_e/2$ remain distinct controls, with stability and port passivity assessed for their own parameters.

The companion gives an exact prepared exponential control with both named drives zero: its store increases by $9/2\ \mathrm J$, its resistor and damper works sum to $-3\ \mathrm J$, and its listed-port residual is $+15/2\ \mathrm J$. Those values belong to the stated unstable finite prefix, not a periodic operating state. They illustrate \eqref{eq:coupling-residual}; neither the residual nor a proposed transfer is an observed physical result.

#### A separately instrumented coupling control
\label{sec:coupling-control}

A reciprocal transducer of coupling $g$, together with a series voltage actuator commanded by velocity, realizes an explicit candidate port. Let $u_c=Kv$ and
\begin{equation}
 L\dot i=v_s+u_c-Ri-gv,\qquad
 \dot x=v,\qquad m\dot v=gi-dv-kx+F_s.
 \label{eq:coupling-actuator}
\end{equation}
The reduced coefficients are $g_m=g$ and $g_e=g-K$. The extra independently specified port power is $u_ci$; substituting the actuator law into the component balance accounts for $(g_m-g_e)iv=Kiv$. Setting $v_s=0$ leaves this port active. The model therefore supplies an explicit coupling account, with output transfer distinguished from actuator-supply work. The companion develops the finite exponential and low-amplitude controls. Finite sensing and actuation add states and can change both order and closed-loop stability.

#### Passivity and a finite supply remain separate questions

For real constants, the Hermitian dissipative part of the impedance matrix is
$\left(\begin{smallmatrix}R&(g_{e}-g_{m})/2\\(g_{e}-g_{m})/2&d\end{smallmatrix}\right)$.
After consistent port scaling it is positive semidefinite exactly when
\begin{equation}
 R\geq0,\qquad d\geq0,\qquad (g_{e}-g_{m})^2\leq4Rd.
 \label{eq:transducer-pr}
\end{equation}
Thus unequal coupling is not automatically a nonpassive terminal map; damping can satisfy this inequality. A model implemented with an active controller and a passive external map are compatible descriptions at different boundaries. Electrical linkage and mechanical momentum have different units and must not be added as a scalar stress measure.

A finite bias coil adds its own store, copper loss and source path. To make one conditional account explicit, let $I_*>0$ be a reference bias current and prescribe $g_e=\bar g_e i_b/I_*$, $g_m=\bar g_m i_b/I_*$. Define the reaction effort $A=(\bar g_m-\bar g_e)iv/I_*$, which has voltage units, and the plant transfer $P_a=i_bA$. For a nonnegative converter loss $\ell(P)=\epsilon_\ell P^2/(P_*+|P|)$, with $\epsilon_\ell\geq0$ and $P_*>0$, a candidate bias-winding equation is
\begin{align}
 L_b\dot i_b&=u_b-R_bi_b-A-v_\ell,&
 v_\ell&=\frac{\epsilon_\ell i_bA^2}{P_*+|i_bA|},\nonumber\\
 E_b&=\frac12L_bi_b^2,&
 \dot E_b&=u_bi_b-R_bi_b^2-P_a-\ell(P_a).
 \label{eq:bias-state}
\end{align}
Here $u_b$ is the converter voltage applied to the bias coil, and $v_\ell i_b=\ell(P_a)\geq0$. The formula is continuous at $i_b=0$: $v_\ell=0$ there, while the reaction effort $A$ may remain nonzero. The illustrative choice $\epsilon_\ell=1/50$, $P_*=1\ \mathrm W$ gives the stated loss law without asserting measured converter behavior. This supplies a declared dynamical hypothesis, not an identified physical supply.

This bias-dependent plant is nonlinear and differs from the constant-coupling actuator. Retaining a finite supply can add DC-link voltage $V_b$, sensor voltage $z$ and thermal energy $E_\theta$ to $(i,x,v,i_b)$: seven regular continuous coordinates in the companion's declared model. Their constitutive laws, initial states and operating modes are needed before elimination; the count does not assert a constant-coefficient seventh-order equation.

Does a physical bias supply realize the specified couplings and source-off coil increase with consistent actuator, coil, DC-link, thermal and plant accounts [OP-LR59-02]? Independent voltage/current products and endpoint coil storage distinguish a reaction transfer from an unassigned residual. [*Hidden States and Unassigned Work*][companion] gives the complete finite supply and its separate interval checks. The reciprocal actuator control does not settle that different nonlinear realization.

# Networks, finite supplies and implementation
\label{app:networks}

These constructions show how actual connections, loaded ports and finite supplies determine additional coefficients and preparations. The coupled models and exact limiting cases remain explicit.

## Network constructions and changes of physical implementation
\label{sec:networks}

Network interconnection extends coefficient synthesis beyond one component pair. Incidence, observation and constraints determine which states survive scalar elimination. Switching and finite reference implementations can change both the coefficient law and its admissible preparation.

### A common three-state conservative template

Two primary states $s_{1},s_{2}$ coupled by a mediator $z$ obey
\begin{equation}
 \dot s_{1}=-z,\qquad \dot s_{2}=z,\qquad
 h_{z}\dot z=h_{1}s_{1}-h_{2}s_{2},
 \quad E=\frac12(h_{1}s_{1}^2+h_{2}s_{2}^2+h_{z}z^2).
 \label{eq:three-state}
\end{equation}
Here $h_{j}$ are inverse masses for momenta, spring stiffnesses for extensions, inverse capacitances for charges, or inverse inductances for linkages. The mediator coefficient is respectively inverse spring stiffness, mass, inductance or capacitance. Multiplication of each state equation by its constitutive effort shows that the three separately integrated internal powers cancel; endpoint stores independently agree on the isolated operating interval. Preparation and reset are additional intervals.

The signed sum $c=s_{1}+s_{2}$ is constant. With $d=s_{2}-s_{1}$,
\begin{equation}
 |s_{1}|+|s_{2}|=\max(|c|,|d|),\qquad
 h_{z}\ddot d+(h_{1}+h_{2})d=(h_{1}-h_{2})c.
 \label{eq:pair-geometry}
\end{equation}
A scalar primary state generally satisfies a third-order homogeneous annihilator containing the zero common mode; specifying $c$ instead yields a second-order affine equation. This is an elementary example of how elimination and initialization change the apparent order.

Specifying the common state therefore changes the scalar equation and its forcing information without changing the component laws. Appendix \ref{sec:network-pair} gives the exact mechanical and electrical excursions, their distinct magnitude diagnostics, and a three-body counterexample to a pair-specific ceiling. Those diagnostics audit an already declared realization and preparation.

A pickup or receiver can change this construction in two ways: its physical loading adds states or changes the connections, while its observation may leave a common preparation hidden. Appendix \ref{sec:pickup-observation} derives both distinctions and the associated load and preparation questions. Its coupled-winding crossing boundaries are retained in Appendix \ref{sec:crossing-diagnostics}; their parameter measures describe the specified event rather than determine operator coefficients.

### From an interconnection graph to a scalar operator
\label{sec:network-elimination}

For a connected oriented graph with $n_v$ vertices and $n_e$ edges, let $B_v\in\mathbb R^{n_v\times n_e}$ be its vertex-edge incidence matrix, $H=\diag(1/L_j)$, and take unit edge capacitances in normalized units. Vertex linkages $\lambda_v\in\mathbb R^{n_v}$ and edge charges $q_e\in\mathbb R^{n_e}$ obey
\begin{equation}
 \dot\lambda_v=-B_vq_e,\qquad \dot q_e=B_v^TH\lambda_v,
 \qquad \ddot\lambda_v=-B_vB_v^TH\lambda_v.
 \label{eq:graph}
\end{equation}
They imply $\mathbf1^T\lambda_v=$ constant and, for a vertex subset $U$,
$\Delta(\mathbf1_U^T\lambda_v)+\int\mathbf1_U^TB_vq_e\,\dd t=0$.
More generally, $h_v^T\lambda_v$ is conserved for every edge state exactly when $B_v^Th_v=0$, since its derivative is $-h_v^TB_vq_e$. For a connected graph this kernel is spanned by $\mathbf1$.
The store is $(\lambda_v^TH\lambda_v+q_e^Tq_e)/2$; its internal powers cancel by the same incidence identity. If $p$ is the characteristic polynomial of $B_vB_v^TH$, Cayley--Hamilton gives
$p(-D^2)\lambda_{v,j}=0$. This is generally a dense, nonminimal higher-order annihilator. Repeated, zero and unobservable factors need reduction for the chosen output. An exact graph nullspace is a zero-frequency mode, not an extremely slow nonzero oscillator.

The mechanical counterpart has $\dot p=-B_v f$, $\dot e=B_v^TM^{-1}p$, and $f=Ke+CB_v^TM^{-1}p$ for elastic and viscous edges. Damper powers are separately $-c_e(v_{\mathrm{tail}}-v_{\mathrm{head}})^2$. A unilateral edge uses an active-contact law such as $k_e\max(e_e,0)$. Its active graph changes at engagement and release; there is no single global constant-coefficient scalar elimination. Initial zero gaps, simultaneous activation, chatter, restitution, plasticity and rigid limits require event laws and limiting paths. Finite compliant states have no impulse merely because the active graph changes continuously at zero force.

A distinct circuit construction places linkage on branches. Let $B_e$ be that circuit's node-branch incidence matrix, $\phi$ its node potentials, $v_e=B_e^T\phi$ its branch voltages and $B_ei_e=0$ its Kirchhoff current law. Then $v_e^Ti_e=0$, even if the two vectors were evaluated at different times on the same graph. For branches whose voltage is the linkage derivative, $\dot\lambda_e=v_e$, an edge functional $h_e^T\lambda_e$ is conserved under all node potentials precisely when $B_eh_e=0$. This follows from $(h_e^T\lambda_e)'=(B_eh_e)^T\phi$. With winding resistance, $\dot\lambda_e=v_e-R_ei_e$ instead gives the additional term $-h_e^TR_ei_e$; a cycle vector alone no longer establishes conservation.

The two kernels concern different spaces. For a two-vertex, one-edge tree, $B_v=(1,-1)^T$ gives the vertex invariant $\lambda_{v,1}+\lambda_{v,2}$, whereas the corresponding node-branch matrix has trivial edge-cycle kernel. Across different circuit graphs the cross-power identity requires inclusion of the voltage subspace in the orthogonal complement of the current subspace. A switch can destroy it. It does not replace the event work audit.

The graph, component matrices and chosen observation therefore determine the candidate scalar coefficients and their removable factors. Reachability and observation bounds answer the next question: which states and measured magnitudes can that realization produce from a declared preparation? Appendix \ref{sec:observation-bounds} gives the exact geometric and finite-time bounds, including their dependence on sensors, coordinate changes and physical ports.

### Interruption, perfect coupling and a third-order clamp
\label{sec:clamp}

Two mutually coupled windings with a secondary capacitor have inductance matrix
$\mathsf L=\left(\begin{smallmatrix}L_{1}&M\\M&L_{2}\end{smallmatrix}\right)$,
$\Delta=L_{1}L_{2}-M^2>0$. During a constant opposing primary clamp voltage $V_{c}>0$,
\begin{equation}
 \mathsf L\binom{\dot i_{1}}{\dot i_{2}}=\binom{-V_{c}}{v_{C}},\qquad
 C\dot v_{C}=-i_{2}.
 \label{eq:clamp-state}
\end{equation}
The system has three state coordinates. Eliminating the secondary variables gives
\begin{equation}
 C\Delta i_{1}^{(3)}+L_{1}\dot i_{1}+V_{c}=0.
 \label{eq:clamp-third}
\end{equation}
Here the cubic coefficient is $C(L_1L_2-M^2)$, the first-derivative coefficient is $L_1$, and the clamp supplies the affine forcing. Thus the component values determine both the higher-order term and its singular perfect-coupling boundary; the observation can lower the effective order even away from that boundary.

For $i_{1}(0)=I$, $i_{2}(0)=v_{C}(0)=0$, put
$\omega^2=L_{1}/(C\Delta)$. The exact solution is
\begin{align}
 v_{C}(t)&=\frac{MV_{c}}{L_{1}}(\cos\omega t-1),\nonumber\\
 i_{2}(t)&=\frac{CMV_{c}\omega}{L_{1}}\sin\omega t,\nonumber\\
 i_{1}(t)&=I-\frac{V_{c}t}{L_{1}}
             -\frac{M^2V_{c}}{L_{1}\Delta\omega}\sin\omega t.
 \label{eq:clamp-solution}
\end{align}
At $M=0$ the primary has first-order dynamics, so the third-order annihilator is not minimal. Otherwise opening the primary at its first current zero switches to the two-state secondary LC interval. The capacitor voltage and secondary current are transported continuously under the declared ideal opening; this is an actual change of governing order.

The store is $E=(L_{1}i_{1}^2+2Mi_{1}i_{2}+L_{2}i_{2}^2+Cv_{C}^2)/2$. The sole external power during the ideal clamp is $-V_{c}i_{1}$. Its integral to any $t$ in that interval is
\begin{equation}
 W_{c}=-V_{c}It+\frac{V_{c}^2t^2}{2L_{1}}
       +\frac{M^2V_{c}^2}{L_{1}\Delta\omega^2}(1-\cos\omega t),
 \label{eq:clamp-work}
\end{equation}
and independently evaluating \eqref{eq:clamp-solution} in $E$ verifies $\Delta E=W_{c}$. This assigns work to the clamp; it does not decide whether real switch hardware returns it to a supply, heats, arcs or radiates.

An alternative rapid primary-current removal preserves secondary linkage only under a declared limiting topology. If capacitor voltage remains continuous and secondary winding voltage has no impulse, then
$L_{2}\Delta i_{2}+M\Delta i_{1}=0$.
From the canonical initial state this gives $i_{2}^+=MI/L_{2}$ after $i_{1}^+=0$. Direct integration along the finite limiting path assigns the remaining outward work
$(L_{1}-M^2/L_{2})I^2/2$ to the switch boundary. A different clamp, parasitic capacitor or edge sequence can change the partition. A prescribed current reset is not the same model as a finite constant-voltage clamp.

At perfect coupling $\Delta=0$, write $\mathsf L=aa^T$ and let $n^Ta=0$. For a connection vector $b$, the descriptor equation $\mathsf L\dot i=bv_{C}$ imposes $n^Tb\,v_{C}=0$. If $n^Tb\ne0$, compatibility requires $v_{C}=0$ and its derivative imposes the corresponding current constraint. An inconsistent initial state is not made admissible by using an inverse matrix at nearby coupling. A named parasitic path must select any impulsive projection and its work. For one constraint $i_{1}=i_{2}$ and $a=(1,\sqrt{19})^T$, conserving $a^Ti$ from $(10,0)$ gives the compatible common current $10/(1+\sqrt{19})$; this is conditional on that projection law, not a universal perfect-coupling limit.

Motion can itself introduce further states and coupling terms. For a position-dependent symmetric inductance matrix $\mathsf L(q)$, a consistent winding law and magnetic force are
\begin{equation}
 v=Ri+\mathsf L(q)\dot i+\mathsf L_q(q)i\dot q,
 \qquad F_{\mathrm{mag}}=\frac12i^T\mathsf L_q(q)i.
 \label{eq:moving-inductance}
\end{equation}
Consequently $\dot E_{\mathrm{mag}}=i^Tv-i^TRi-F_{\mathrm{mag}}\dot q$ for $E_{\mathrm{mag}}=i^T\mathsf L(q)i/2$. Coupling a mechanical mass adds displacement and momentum, and the same force--velocity product enters its store with the opposite sign. Keeping the motional voltage while changing or omitting this reaction force leaves an unmatched force--velocity contribution. A controlled nonreciprocal realization must establish that transfer and its supply independently. A permanent magnet held on a prescribed path needs a holding/mechanical port; a relaxing material coordinate adds memory and its conjugate loss, as in \eqref{eq:material}. A near-match of two current traces does not establish equality of their forces, stores or signed work.

Spatial field cancellation is a different observation from temporal state order. A local gradient and a distant field can change independently with winding geometry and orientation. A finite-core dipole model or a finite spatial integration domain does not identify the field store of surveyed windings and magnetic material. Local/exterior geometry, core radius, field boundaries and calibrated internal sensors remain necessary before promoting a terminal or coordinate magnitude into a component rating.

Two coupled LC resonators have four continuous states. A memoryless threshold gap switches their graph without adding a continuous state; a gap-conductance evolution equation adds one. A distributed winding has further field modes, so even an exact finite clamp law does not validate a lumped description of an interruption front. Winding geometry, mutual orientation, arc ignition and restrike, winding capacitance, clamp release, core material and exterior-field ports remain unresolved physical inputs. Zero capacitance, zero switching time and simultaneous perfect coupling must be analyzed separately. Interruption work can depend on their relative limiting rates.

### A loaded transformer is a three-state physical model
\label{sec:loaded-transformer}

An explicit finite transformer circuit clarifies the difference between a voltage reference and an attached return. Take $L_{2}=n^2L_{1}$, $M=\sigma\kappa nL_{1}$, $\sigma=\pm1$, $|\kappa|<1$, winding resistances $R_{1},R_{2}$, source resistance $R_{s}$, core conductance $G_{c}$, output capacitance $C_{o}$ and load/probe conductances $G_\ell,G_{p}$. Let $\mu=1$ for a tapped connection and $\mu=0$ for an isolated secondary. The equations are
\begin{align}
 v_{a}&=\frac{u-R_{s}(i_{1}-\mu i_{2})}{1+R_{s}G_{c}},\quad
 i_{s}=i_{1}-\mu i_{2}+G_{c}v_{a},\nonumber\\
 \mathsf L\binom{\dot i_{1}}{\dot i_{2}}
 &=\binom{v_{a}}{v_{o}-\mu v_{a}}
          -\diag(R_{1},R_{2})\binom{i_{1}}{i_{2}},\nonumber\\
 C_{o}\dot v_{o}&=-i_{2}-(G_\ell+G_{p})v_{o}.
 \label{eq:finite-transformer}
\end{align}
This has generic scalar order three. The complete store is $i^T\mathsf Li/2+C_{o}v_{o}^2/2$; its separately integrated inward powers are
$ui_{s}$, $-R_{s}i_{s}^2$, $-R_{1}i_{1}^2$, $-R_{2}i_{2}^2$, $-G_{c}v_{a}^2$, $-G_\ell v_{o}^2$ and $-G_{p}v_{o}^2$.
Substitution proves their sum equals the store derivative. A drive-to-zero event is not an opened primary conductor, and removal of the resistive load does not remove the output capacitor. Finite state continuity gives zero ideal impulse under those specific switch actions; omitted switch-control work remains a model limitation.

Changing a voltage origin is a coordinate operation. Connecting a finite probe or a different return changes $G_{p}$, $\mu$ or the circuit graph and therefore the trajectory and order conditions. A common voltage shift leaves the total terminal power unchanged only when total terminal current is zero; it need not preserve individual terminal contributions. Linkage reconstruction requires
$\lambda_{j}(t)=\lambda_{j}(t_{0})+\int_{t_{0}}^t(v_{j}-R_{j}i_{j})\,\dd t$
and an independently known initial linkage. Perfect coupling alone does not produce an ideal transformer if finite magnetizing dynamics remain. For a pair of winding voltage integrals $\Psi_j=\int v_j\dd t$, the ideal ratio discrepancy satisfies exactly
\begin{equation}
 \Psi_2-\sigma n\Psi_1
 =\Delta(\lambda_2-\sigma n\lambda_1)
       +\int(R_2i_2-\sigma nR_1i_1)\,\dd t.
 \label{eq:transformer-integrals}
\end{equation}
Linkage endpoints and copper integrals are evaluated independently. The ideal comparison is $v_2=\sigma n v_1$ in these winding orientations; reversing a winding changes $\sigma$, not the physical conclusion. This volt-second discrepancy is not an energy residual. Physical grounding, probe common-mode paths, winding-to-chassis capacitance, core saturation and remanence, frequency-dependent loss and thermal evolution require more states or ports. Zero source resistance, zero output capacitance, zero turns ratio, an exact output short, tap commutation and prepared nonzero states require separate constraints and finite switching laws. Appendix \ref{sec:compound-limits} derives specific constrained and prepared limits; arbitrary joint limits remain open.

A mechanical gear ratio and a winding ratio may share a kinematic relation without sharing dynamics. Under $V=\alpha\omega$, $i=\tau/\alpha$, rotational inertia maps to capacitance $J/\alpha^2$, not automatically to inductance. In a rotating frame, kinetic energy transforms as
$E'=E-\Omega H_{z}+\Omega^2 I_{z}/2$ for rotation about a fixed axis. Its derivative includes the frame-rate and angular-momentum terms; a moving frame can change shaft, support and field powers separately. Euler and centrifugal terms must be retained when their assumptions apply. Thus a readout reference or gear count cannot identify a higher-order transformer realization. The finite correspondence in Appendix \ref{sec:compound-states} establishes a specified elastic network and physical reference cell. It leaves broader joint-force identification, non-rigid extensions and measured supply correspondence open.

#### Physical attachments and calibrated transfer

What changes in individual work and endpoint stores when an actual return, ground or probe is attached [OP-TRF-01]? A common voltage-origin shift leaves a floating network unchanged; an attachment adds a constitutive branch and changes its graph. For node voltages $v$, a capacitance $C_p$ between nodes with incidence $b$ adds $C_pbb^T$ to the nodal capacitance matrix; a conductance $G_p$ adds $G_pbb^T$ to the conductance matrix. This follows from branch current $C_pb^T\dot v+G_pb^Tv$ and node injection $b$ times that current. Added independent capacitive coordinates can raise order; algebraic constraints or observation cancellations can reduce it. [*Hidden States and Unassigned Work*][companion] constructs explicit isolated and tapped five-state graphs and their separate port predictions.

Can independently calibrated winding and probe parameters predict both configurations' local works and endpoint states [OP-TRF-07]? Synchronized voltage/current integrals and independently reconstructed magnetic and electric stores test that transferability. Retain joint uncertainty in $L_1,L_2,M$, including winding orientation. The companion develops the hardware comparison and its resolution criteria. Saturation, chassis paths, thermal drift and unmeasured initial flux remain distinct physical hypotheses. An opened winding requires a finite commutation path, rather than a zero-command substitution into closed-circuit equations.

### Finite implementation changes the coefficient problem
\label{sec:finite-implementation}

A prescribed reference or controller becomes a different synthesis problem when its physical driver, sensors and supply are retained. Their laws and connections supply additional coefficients and forcing. Clipping, state-dependent commands and rail cutoff delimit the intervals on which a constant-coefficient elimination applies. The prepared sensor and supply states must also be carried. For the impact driver this is the distinction between a prescribed hammer torque and a declared motor, drive and supply realization.

#### A finite reference construction
\label{sec:compound-states}

A finite compound network has nodes $A,B,C,P$ and four oriented winding branches $A\to C$, $P\to C$, $B\to C$, $P\to C$. Let $\mathsf B$ be its node--branch incidence matrix, positive at each branch origin, $\mathsf C$ its positive diagonal node-capacitance matrix and $j$ its external node-current vector. For two coupled pairs $X=A,B$, take signed nonzero ratios $h_X$, $L_0,R_0>0$ and $|\kappa|<1$:
\begin{align}
 \mathsf C\dot v&=j-\mathsf B i,&
 \mathsf L\dot i&=\mathsf B^Tv-\mathsf R i,\nonumber\\
 \mathsf L_X&=L_0
 \begin{pmatrix}h_X^2&\kappa h_X\\\kappa h_X&1\end{pmatrix},&
 \mathsf R_X&=R_0\diag(h_X^2,1).
 \label{eq:compound-state}
\end{align}
The pair matrices form block diagonals. Four node voltages and four winding currents give eight independent continuous states when all nodes are dynamic. Holding one node at a compatible ideal reference removes one capacitive coordinate and gives seven; several capacitors sharing a node contribute stores without creating additional independent voltages. Generic scalar order is at most the state dimension and still depends on controllability, observation and initialized cancellations.

With $\omega=v/\alpha$, $z=\mathsf Li/\alpha$, $\mathsf J=\alpha^2\mathsf C$, $\mathsf K=\alpha^2\mathsf L^{-1}$ and $\tau=\alpha j$, the mechanical equations are
\begin{equation}
 \mathsf J\dot\omega=\tau-\mathsf B\mathsf Kz,\qquad
 \dot z=\mathsf B^T\omega-\frac{\mathsf R}{\alpha^2}\mathsf Kz.
 \label{eq:compound-mechanical}
\end{equation}
This is an exact finite inertia--elastic-state correspondence, not a rigid ideal gear. Its store is both $v^T\mathsf Cv/2+i^T\mathsf Li/2$ and $\omega^T\mathsf J\omega/2+z^T\mathsf Kz/2$. Each node power $v_Xj_X=\omega_X\tau_X$ and each winding heat $-R_bi_b^2$ is separately integrated. Direct differentiation proves the full conditional residual zero. Shaft and mesh diagnostics alone omit inertia, elastic and resistive accounts; a support constraint can carry force or torque while doing zero work at its held coordinate.

For example, a carrier source behind $R_s$ and two receiver paths, one to ground and one to the carrier, contribute $ui_s$, $-R_si_s^2$, $-G_gv_F^2$ and $-G_n(v_F-v_C)^2$. Four winding losses, a probe $-G_pv_F^2$ and a reset path $-G_rv_F^2$ complete ten separately integrated powers. Retain distinct preparation, operation, receiver-change, relaxation and reset intervals with independently evaluated endpoint stores. Changing finite conductances with all current paths retained leaves the states continuous and has no ideal impulsive work. Rewiring a charged capacitor or opening an energized winding is a different event.

For a physical common reference $r$, let $w=v-\mathbf1r$ and install four compensation currents $-\mathsf C\mathbf1\dot r$. Then
\begin{equation}
 \mathsf C\dot w=j-\mathsf B i-\mathsf C\mathbf1\dot r,\qquad
 \mathsf L\dot i=\mathsf B^Tw-\mathsf Ri.
 \label{eq:compound-reference}
\end{equation}
Since $\mathsf B^T\mathbf1=0$, this reproduces \eqref{eq:compound-state} for $v=w+\mathbf1r$ from compatible initial data. Each receiver capacitor sees a node-source power $w_Xj_X$ and a compensation power $-C_Xw_X\dot r$. The reference conductor's net ideal bias current is zero by node balance, not by assuming these individual powers vanish. A prescribed $r(t)$ is distinct from a state-dependent command $r=\chi(t)v_S$: the latter needs the actual selected node state and $\dot r=\chi\dot v_S+\dot\chi v_S$. Its exact algebraic tracking relation restricts initialization and is not an additional free state.

A finite implementation has four receiver voltages, four winding currents, nine sensor-capacitor voltages, eight actuator-inductor currents, one command-capacitor voltage, one reference-driver voltage and one rail voltage: 28 regular coordinates before extra ideal constraints. The companion specifies the sensor RC laws, actuator feedback, voltage limits, converters and rail. This is a physical inventory; only a regular linear interval supplies the usual scalar elimination bound, and observation and cancellation determine the actual degree. A nonlinear controller needs its full nonlinear equations.

Which independently measured supply transfers realize a moving reference in a finite electromechanical correspondence [OP-TRF-12]? A coordinate change supplies none. Separate compensation currents, receiver endpoints and driver voltage/current products make the question observable. [*Hidden States and Unassigned Work*][companion] develops the capacitor cell, equal-endpoint ramps, complete controller and rail accounts, preparation and event certificates. Appendix \ref{sec:compound-limits} retains the exact constraints and prepared limits needed for this article's order claims.

### Loaded auxiliary ports and observable order
\label{sec:loaded-auxiliary}

An extra accessible port can alter the coefficient construction without adding an independent motion. For positive gear teeth $Z_r=Z_s+2Z_p$, the four shaft rates $(s,c,r,o)$ equal $\mathsf B(u,d)^T$, where
$$
 \mathsf B=\begin{pmatrix}1&1\\1&0\\1&-Z_s/Z_r\\1&-Z_s/Z_p\end{pmatrix},\qquad
 u=\omega_c,\quad d=\omega_s-\omega_c.
$$
The rank is two. Its electrical ideal counterpart has $h_s=-Z_p/Z_s$, $h_r=Z_p/Z_r$ and
$$
 V_S-V_C=h_s(V_P-V_C),\quad V_R-V_C=h_r(V_P-V_C),\quad
 I_P=-h_sI_S-h_rI_R,\quad I_C=-I_S-I_R-I_P.
$$
External voltages are measured to a physical return $O$. Loading $P$ invalidates the unloaded relation $I_P=0$. At teeth $(24,18,60)$, a common-flux winding with taps $(35,20,14,0)$ has section currents $I_S,I_S+I_C,-I_P$ and constraint $35I_S+20I_C+14I_R=0$. Together with KCL this gives the same ideal terminal domain; it does not identify finite magnetic states with rigid mechanical motion. Dynamically $\mathsf B^T\tau=\mathsf B^T\mathsf M\mathsf B(\dot u,\dot d)^T$, so zero summed torque alone does not imply no acceleration.

A finite construction retains three node voltages and four winding currents. With $R$ clamped to $O$, use
\begin{align}
 B_f&=\begin{pmatrix}1&0&0&0\\-1&-1&-1&-1\\0&1&0&1\end{pmatrix},\quad C=I\ \mathrm F,\\
 L&=\operatorname{diag}\left[
 \begin{pmatrix}9/16&-3/8\\-3/8&1\end{pmatrix},
 \begin{pmatrix}9/100&3/20\\3/20&1\end{pmatrix}\right]\mathrm H,\\
 C\dot v&=b-Gv-B_fi,\qquad L\dot i=B_f^Tv-R_wi,
 \label{eq:loaded-auxiliary-state}
\end{align}
where $R_w=\operatorname{diag}(9/160,1/10,9/1000,1/10)\ \Omega$, $G=\operatorname{diag}(1,1/2,G_P)$ in siemens and $b=(U/(1\ \Omega),0,0)^T$. On each fixed-parameter interval these laws determine
$$
 A=\begin{pmatrix}-C^{-1}G&-C^{-1}B_f\\L^{-1}B_f^T&-L^{-1}R_w\end{pmatrix},\quad
 b_u=\binom{C^{-1}(1/(1\ \Omega),0,0)^T}{0}.
$$
For a declared observation $y=c_y^T(v,i)^T$, exact synthesis returns $P(s)=\det(sI-A)$ and $N(s)=c_y^T\operatorname{adj}(sI-A)b_u$, with $P(D)y=N(D)U$ and the physical state-to-jet preparation. Seven physical states give degree at most seven before common-factor and observability analysis; they do not prove a seventh-order scalar output. Fixed $L,C,R_w$ and independently varied positive $G_P$ define one coefficient family, not arbitrary per-setting fits. A changed $G_P$ preserves states and requires new jets.

The exact compliant map $v=\alpha_v\omega$, $z=Li/\alpha_v$, $J=\alpha_v^2C$, $K=\alpha_v^2L^{-1}$ preserves kinetic/capacitive and elastic/magnetic stores and gives $\dot z=B_f^T\omega-R_wKz/\alpha_v^2$. It supplies a distinct compliant realization. The [companion][companion] develops the initialized four-port controls, full finite preparation/loading/relaxation sequence, individual works, actual nonzero endpoints and phasing qualifications. Those accounts do not certify a rigid spatial mechanism or finite-core DC operation.

### Many branches, finite service and incomplete observation
\label{sec:many-branch-limits}

A larger constructive example uses six three-winding input cores and one shared thirteen-winding output core. Their inductances are $L_j=(1\ \mathrm H)(I+nn^T/4)$, $n=(1,1/2,1/2)^T$, and $L_o=(1\ \mathrm H)(I+\mathbf1_{13}\mathbf1_{13}^T/4)$. Individual leakage is positive. The connected laws have the form $L\dot i=B^Tv-R_wi$, $C\dot v=-Bi-G(z)v+d-K^Ti_c(Kv)$, with positive capacitance, physical incidence $B$, finite gate states $C_g\dot z=(c-z)/R_g$ and monotone clamps. Its 31 winding currents, 50 node/probe voltages, 24 gate states and heat are physical coordinates. Time-varying selectors and nonlinear clamps prevent inferring a constant scalar order of 106. A constant linearized plateau permits the determinant/adjugate construction only for that declared plateau and observation.

The [companion][companion] specifies all incidences, components and initial states, and proves a loaded $1/200\ \mathrm s$ transition with receiver work at least $259081/141120000\ \mathrm J$. The result uses a prepared neighborhood, finite selector response and actual probes; it is a finite service certificate. Extending the fixture with generators, a shaft and an insulated timing drive changes the state equations. If the timing bearing has $b_t=1/10\ \mathrm{N\,m\,s}$, its independent heat law on a full timing revolution with $T\in[1/2,2]\ \mathrm s$ gives
$$
 \Delta H\geq b_t\int_0^T\Omega^2dt
 \geq\frac{b_t}{T}(2\pi)^2\geq\frac{\pi^2}{5}\ \mathrm J.
$$
There is no full-state return in that insulated domain. Heat rejection or an electrical trace that repeats while heat drifts is a different problem. Neither the work result nor this obstruction selects coefficient weights.

The same finite fixture supplies a precise observation limit. Two preparations differ only by opposite $1/10\ \mathrm V$ changes at two exchangeable positive-cell nodes. Their independently evaluated electrical energies are $392079/8000$ and $392239/8000\ \mathrm J$. With the same selector history their homogeneous difference has $D=\delta i^TL\delta i/2+\delta v^TC\delta v/2$, $\dot D\leq0$, $D(0)=1/50\ \mathrm J$. Each source-node voltage difference is at most $1/5\ \mathrm V$. A physical $10\ \Omega$, $1\ \mathrm F$ source probe with zero initial difference has unit-gain nonnegative response, so the reported source-current difference is at most $1/5\ \mathrm A$. Channel-exchange symmetry makes the complete receiver history identical, including its probe; gates also agree. Allowing $1/10\ \mathrm A$ pointwise error on each source-current record admits their common midpoint. All other electrical observations agree exactly. Thus a two-preparation energy estimator has worst-case error at least $1/100\ \mathrm J$, attained by the midpoint, exceeding a $1/250\ \mathrm J$ target. This is overlap of calibrated prediction sets; it is not a claim that all exact source traces coincide. The complete local graph, loading and proof are repeated in the [companion][companion] so its inference does not depend on this summary.

## Network observations, crossings and magnitude bounds
\label{sec:network-diagnostics}

The constructions in Appendix \ref{sec:networks} determine scalar operators from physical states and connections. This appendix establishes complementary observation and preparation results: a large magnitude excursion, a crossing fraction or a geometric envelope does not by itself identify the coefficients or internal realization. Each result retains its specified system and measurement.

### Exact pair excursions and a three-body control
\label{sec:network-pair}

The three-state equations and common coordinate are defined in \eqref{eq:three-state}--\eqref{eq:pair-geometry}. Their prepared excursions give the following exact controls.

For two masses $1$ and $19\ \mathrm{kg}$, initial velocities $10$ and $0\ \mathrm{m\,s^{-1}}$, and contact stiffness $19/20\ \mathrm{N\,m^{-1}}$, the exact compliant interval is $0\leq t\leq\pi\ \mathrm s$:
\begin{equation}
 p_{1}=\frac12+\frac{19}2\cos t,\qquad
 p_{2}=\frac{19}2(1-\cos t),\qquad
 \delta=10\sin t.
 \label{eq:canonical-pair}
\end{equation}
The contact force is $(19/2)\sin t$ in newtons. The signed momentum stays $10$, while the endpoint magnitude sum is $28$, a ratio $14/5$. Its first sign crossing is $t=\arccos(-1/19)$. Direct integration of $-k\delta\dot x_{1}$ and $k\delta\dot x_{2}$ gives works $-19/2$ and $19/2\ \mathrm J$; the spring starts and ends unstrained, and both endpoint total stores are $50\ \mathrm J$. In the center-of-mass frame the magnitude sum is $19$ at both endpoints. The change of observer modifies kinetic stores and individual works, not the physical contact law.

For an uncoupled inductive pair with ratio $r=L_{2}/L_{1}$, the corresponding zero-mediator endpoint ratio is $(3r-1)/(r+1)$ for $r>1$, and one for $r\leq1$. The ceiling three belongs to that particular pair and preparation. It is not a general multi-state limit. An exact three-body counterexample consists of two separated compliant elastic encounters: masses $1,19,361$, initially velocities $(10,0,0)$, first let masses $1,19$ exchange, then $19,361$. At the end the velocities are $(-9,-9/10,1/10)$, with momenta $(-9,-171/10,361/10)$. The magnitude ratio is $311/50>3$. Each encounter is realized by the sinusoidal relative solution with its own positive stiffness and reduced mass, and the gaps are chosen so they do not overlap. This establishes a wider counterexample, while maxima for a specified continuously connected chain still require its own exact trajectory and extremum analysis.

A physical two-cell LC version also shows why charge magnitude is not an energy measure. With $C_1=1\ \mathrm F$, $C_2=19\ \mathrm F$, $L=20/19\ \mathrm H$, $\dot q_1=-i$, $\dot q_2=i$, $L\dot i=q_1-q_2/19$ in SI coordinates, initial $(10,0,0)$ evolves as $q_1=(1+19\cos t)/2$, $q_2=19(1-\cos t)/2$, $i=19\sin t/2$. At $t=\pi\ \mathrm s$ the absolute charge sum grows from $10$ to $28\ \mathrm C$ while both total reactive endpoint stores are $50\ \mathrm J$. Separate cell works are $-19/2,+19/2\ \mathrm J$ and inductor work zero. Isolated resistive parallel exchange instead conserves $q_1+q_2$ and has nonincreasing absolute charge, with rate $-2|v_1-v_2|/R$ for opposite signs.

Adding a unit shunt across the first LC cell only on $[\pi/2,\pi/2+1/10]\ \mathrm s$ replaces its law by $\dot q_1=-i-q_1/(1\ \mathrm s)$. The former sum invariant fails on that interval. The component laws give $\dot E=-q_1^2/(1\ \mathrm{F}^2\,\Omega)$, so $A_q^2\leq2(C_1+C_2)E_C\leq2000\ \mathrm{C^2}$ for the energized preparation; the zero preparation stays zero. The companion proves the complete sign certificate: initial $q_2$ tangency, one cell-1 zero in $(\pi/2+1/21,\pi/2+1/16)\ \mathrm s$, a magnitude cusp minimum, continuous states and the two one-sided switch derivatives, followed by positive magnitude growth through $2\ \mathrm s$. These particular states and graph do not establish a universal magnitude factor. The shunt changes the coefficient matrix and invariant eligibility before its work is audited.

### Coupled pickups and hidden common preparation
\label{sec:pickup-observation}

For opposed primary windings a differential pickup can sense
$\lambda_{3}=\kappa_{d}(\lambda_{2}-\lambda_{1})$. In the canonical excursion from $(10,0)$ to $(-9,19)$, its open-circuit volt-second integral is $38\kappa_{d}$. Its work is zero when its current is zero. Loading the pickup changes the full inductance matrix and back-reacts on the primary trajectory. If $K_{d}^2=\kappa_{d}^2(L_{1}+L_{2})/L_{3}$, positive semidefiniteness requires $0\leq K_{d}\leq1$; the endpoint is a descriptor boundary, not an ordinary invertible inductance matrix.

A receiver winding adds a state; a receiver capacitor adds another. A figure-eight pickup followed by one rectifier and two separately rectified pickups feeding one bus have different state and connection graphs. For the declared smooth bridge law $v_{b}=V_{b}\tanh(i/i_\varepsilon)$, receiving bus power is $V_{b}i\tanh(i/i_\varepsilon)\geq0$. Copper and bus powers are integrated separately. This positivity does not decide which architecture has higher peak bus power at a specified voltage or which preserves a specified flux excursion. A receiver's natural frequency, load phase and damping change the extrema and their ordering; a peak at the end of an observation interval is not an interior extremum.

For the canonical pair, let the initial currents be $(10+u,u)$ with $L_{1}=1,L_{2}=19$. The common linkage is $10+20u$ while the differential terminal evolution can remain unchanged in an ideal differential coupling. Unloaded endpoint linkages are $(-9+u,19+19u)$. Individual winding works become
$W_{1}=-19/2-19u$, $W_{2}=19/2+19u$, by integrating their own powers along the shifted solution. The initial magnetic store is $50+10u+10u^2$, evaluated from the prepared state. For $u=-1/2$ the common sum is zero and the magnitude sum is unchanged, even though a differential receiver can see the same trajectory. This changes physical preparation; it is not merely a relabeling of the observer. Preparing and resetting the common current requires actual sources and finite paths.

Normalize the differential extremum by $\mathcal R=(d_{\max}+10)/38$ for the initial canonical state $c=10,d_{0}=-10$. Entry into positive counterflow is exactly $\mathcal R>10/19$, not $\mathcal R>1/2$. With another initial state this threshold must be recomputed. Load-phase and state interactions, disappearing extrema, tangent roots, folds, extreme inductance ratios and exact open/short or perfect-coupling boundaries remain unresolved beyond this algebraic criterion. Work does not select any of those operating conditions.

### Exact coupled-winding crossing boundaries
\label{sec:crossing-diagnostics}

For the connected lossless pair, let $\mathsf L=\left(\begin{smallmatrix}L_1&M\\M&L_2\end{smallmatrix}\right)$, $M=\sigma\kappa\sqrt{L_1L_2}$, $\sigma=\pm1$, $0\leq\kappa<1$, and initial current $(I,0)$ with $I>0$. The connection vector is $(1,-1)^T$, so $c=\lambda_1+\lambda_2=I(L_1+M)$. At the zero-mediator equilibrium,
\begin{equation}
 \lambda_{\mathrm{eq}}=
 \frac{I(L_1+M)}{L_1+L_2+2M}
 \binom{L_1+M}{L_2+M},\qquad
 \lambda(\theta)=\lambda_{\mathrm{eq}}
             +[\lambda(0)-\lambda_{\mathrm{eq}}]\cos\theta.
 \label{eq:coupled-halfcycle}
\end{equation}
Here $\theta$ is the exact normalized oscillation phase on $[0,\pi]$. The absolute sum is convex in $\cos\theta$, so its maximum lies at an endpoint. For $r=L_2/L_1>1$, the applicable growth boundaries are
\begin{equation}
 \kappa_+(r)=\frac{\sqrt{2r-1}-1}{2\sqrt r},\qquad
 \kappa_-(r)=\frac1{\sqrt r}.
 \label{eq:crossing-boundaries}
\end{equation}
Growth occurs below the respective boundary and no growth above it in this stated connected model. To derive the positive-orientation result, set the endpoint candidate $-\lambda_1(\pi)+\lambda_2(\pi)$ equal to $I(L_1+M)$; the condition reduces to
$2M^2+2L_1M-L_1(L_2-L_1)=0$.
For negative orientation the same comparison with $I(L_1-M)$ reduces to $L_1+M=0$. Checking the endpoint signs supplies the stated $r>1$ branches. At the threshold equality holds exactly. At $\kappa=1$ the invertible-state derivation ceases to apply.

A first zero of a component satisfies a scalar cosine equation from \eqref{eq:coupled-halfcycle}; its exact existence condition is that the resulting cosine lies in $[-1,1]$. Tangencies and zero modal amplitudes need their own event classification. This distinguishes an analytic enclosure of a root from a finite observation bracket or a dense-interpolation estimate. Loaded receivers and other initial states need new guards; a no-growth maximum can have an initial-time plateau, so differentiating that maximum is not a regular surface continuation.

An entry fraction also needs a measure. For a rectangle $r\in[r_a,r_b]$, $\kappa\in[0,K]$, the uniform-product fraction is exactly
\begin{equation}
 \frac1{(r_b-r_a)K}\int_{r_a}^{r_b}\min\{K,\kappa_\sigma(r)\}\,\dd r.
\label{eq:entry-measure}
\end{equation}
while a uniform logarithmic-ratio measure replaces $\dd r/(r_b-r_a)$ by $\dd r/[r\log(r_b/r_a)]$. An illustrative prior can instead use a truncated lognormal ratio with logarithmic center $\log4$ and width $3/4$, independently of a beta density $6u(1-u)$ for $u=\kappa/K$. A finite equal-weight set defines yet another, discrete measure. None is a measure-free probability of counterflow. Joint parameter enclosures, untraced folds, more general preparations and actual prior calibration remain open.

### Observation maps and reachable bounds
\label{sec:observation-bounds}

Magnitude bounds are useful diagnostics once the physical state and metric are known. If $E=x^THx/2$, $H>0$, and $y=Cx$ with full observation rank, constrained minimization gives
\begin{equation}
 E_{\min}(y)=\frac12y^TQy,\qquad
 Q=(CH^{-1}C^T)^{-1},\qquad
 \|y\|_1\leq\sqrt{2E\max_{\sigma_{j}=\pm1}\sigma^TCH^{-1}C^T\sigma}.
 \label{eq:ellipsoid}
\end{equation}
The proof completes the square in $x$ under $Cx=y$, then uses $\|y\|_1=\max_\sigma\sigma^Ty$. This is a current-state envelope using independently evaluated $E(t)$, not an assumption that initial energy stays constant. Additional invariants restrict the ellipsoid further, as derived in Appendix \ref{sec:bounds}. A Euclidean $\sqrt N$ scaling is an isotropic reference only, not a universal network ceiling.

![Schematic observation geometry. The illustrative ellipse $y_{1}^2/4+y_{2}^2\leq1$ is restricted by $y_{1}+y_{2}=1$. Its center and endpoints follow from Appendix \ref{sec:bounds}. Magnitude extrema depend on the metric, observation and invariant.](figures/observation-geometry.pdf){#fig:geometry width=82%}

\FloatBarrier

For a fixed linear system and componentwise source limits $|u_{j}(t)|\leq U_{j}$, a direction $a$ has exact reachable support
\begin{equation}
 \sup a^Tx(T)=a^Te^{FT}x_{0}+
       \sum_{j} U_{j}\int_{0}^T|a^Te^{F(T-t)}b_{j}|\,\dd t.
 \label{eq:reach-support}
\end{equation}
Choose the input signs to attain each integrand; constrained bandwidth or slew requires a smaller reachable set. Matrix logarithmic norms also give trajectory bounds in a declared metric. These bounds certify reachable observations and sensitivity, not an energy-based design rule.

The weighted one-norm has the exact logarithmic norm
\begin{equation}
 \mu_{1,W}(F)=\max_j\left[F_{jj}+\sum_{i\ne j}\frac{W_i}{W_j}|F_{ij}|\right],
 \qquad \|x(t)\|_{1,W}\leq e^{\mu_{1,W}t}\|x(0)\|_{1,W},
 \label{eq:lognorm}
\end{equation}
for constant $F$ and positive weights. A nonpositive value certifies contraction in that norm; a positive value still supplies a finite bound. The observation map must be included before comparing it with $\|y\|_1$. Total variation of each observed coordinate, the time fraction in counterflow, and $\|y\|_1-|\sum y_j|$ describe different trajectory features. Absolute port throughput $\sum_\ell\int|P_\ell|\dd t$ is a separate audit diagnostic after the signed works are retained.

A physical ideal transformer can also change a magnitude diagnostic. With secondary-to-primary voltage ratio $\nu$, $\lambda_s=\nu\lambda_p$, $i_s=i_p/\nu$, and $L_s=\nu^2L_p$. In the canonical pair the conserved functional is $\lambda_1+\lambda_{2,s}/\nu$, while the raw secondary-coordinate peak is $\max(10,9+19\nu)$. The two transformer port products cancel and it stores no energy. An ideal gyrator has $v_a=R_gi_b$, $v_b=-R_gi_a$, so its two inward powers likewise sum to zero. The mapping $q=-\lambda/R_g$, $C=L/R_g^2$ preserves the corresponding component energy and gives canonical charge peak $28/R_g$. It changes units and components; it does not supply a new invariant absolute sum. Integrate both two-port powers on the same interval before using their cancellation.

Orthogonal common/differential or polyphase transformations preserve the corresponding quadratic form but not a componentwise absolute sum. Physical branch states must be reconstructed before interpreting stress. Hidden zero-sequence motion requires neutral or internal sensors; adding parasitic RL or RLC branches adds physical states, while a capacitor alone does not define a resonance. A reduced passive terminal model need not preserve any internal magnitude sum. Phase imbalance, noncommensurate harmonics, nonlinear or asymmetric parasitics and sensor placement require separate identification.

An ordered sequence of component signs, with zeros retained as boundary events, is invariant under positive diagonal scaling. It is generally changed by modal mixing or affine observer shifts and reverses under time reversal. Winding counts of an open observation path are not general invariants. A closed-path topological statement requires a specified excluded point, orientation, physical frame and homotopy class. These qualifications matter when a proposed higher-order signature is based on sign crossings rather than on the operator itself.

### Invariant sections and exact bounds on observed magnitude
\label{sec:bounds}

For \eqref{eq:ellipsoid}, impose independent linear invariants $A^Ty=b$, as illustrated in Figure \ref{fig:geometry}. Set
\begin{align}
 y_{c}&=Q^{-1}A(A^TQ^{-1}A)^{-1}b,\nonumber\\
 E_{c}&=\frac12b^T(A^TQ^{-1}A)^{-1}b,\nonumber\\
 K_{c}&=Q^{-1}-Q^{-1}A(A^TQ^{-1}A)^{-1}A^TQ^{-1}.
 \label{eq:section-metric}
\end{align}
Completing the square gives, for $E\geq E_{c}$,
\begin{equation}
 \max a^Ty=a^Ty_{c}+\sqrt{2(E-E_{c})a^TK_{c}a}.
 \label{eq:section-support}
\end{equation}
If $a^TK_{c}a>0$, an attaining observation is
$y_{c}+\sqrt{2(E-E_{c})/(a^TK_{c}a)}K_{c}a$.
If that scalar is zero, the objective is constant on the section. If $E<E_{c}$, no compatible state exists. Taking the maximum over all sign vectors $a$ gives the exact one-norm envelope for the ellipsoid section. Restricting to a specific sign cell additionally requires its inequalities and boundary faces. These are geometric audits of the current independently determined store and constraints, not a prescription for choosing a physical trajectory.

A reachable observation can lie strictly inside this geometric envelope because topology, input limits and finite time constrain the state. Conversely, appending an independently prepared hidden store can enlarge the full physical energy without changing the observed section. This is why a terminal rational function and a geometric upper bound do not identify an actual internal stress trajectory.

## Constrained and prepared limits of the compound network
\label{sec:compound-limits}

Singular component values change the equation class. A descriptor system $\mathsf E\dot x=\mathsf Ax+b$ at singular $\mathsf E$ requires its algebraic constraints and compatible initial charge/flux before an ODE order is assigned. Setting a capacitance to zero imposes node-current balance; setting source resistance to zero imposes a voltage clamp. Neither operation allows arbitrary initial voltage. A zero signed winding ratio changes topology rather than giving the regular inverse in \eqref{eq:compound-state}.

### Perfect coupling retains a magnetizing state

For one pair at $\kappa=1$, put $a=(h,1)^T$ so $\mathsf L=L_0aa^T$. Compatible flux is $\lambda=a\phi$. With positive winding resistance matrix $\mathsf R$ and winding effort vector $u$, KVL and $a^Ti=\phi/L_0$ imply
\begin{equation}
 \dot\phi=\frac{a^T\mathsf R^{-1}u-\phi/L_0}
                 {a^T\mathsf R^{-1}a},\qquad
 i=\mathsf R^{-1}(u-a\dot\phi),\qquad
 E_\phi=\frac{\phi^2}{2L_0}.
 \label{eq:perfect-coupling-state}
\end{equation}
This still has a dynamic magnetic state. Its source works are the individual $\int u_ji_j\,\dd t$ and its heat works the individual $-\int R_ji_j^2\,\dd t$; endpoint flux determines the store independently. Reversing the coupling sign changes $a$ consistently. Removing resistance, magnetizing inductance and capacitance in a joint limit is a different constrained problem.

An energized clamp must retain its prepared charge or flux and a finite connection law before taking a singular limit. The companion derives the source and resistor shares and the obstruction to a finite-work instantaneous reference change. A bounded-voltage inductor retains continuous flux; a discontinuity requires a separately justified impulse law. These event conditions cannot be replaced by an arbitrary reset of the reduced ODE.

### A specified rigid family and its hidden preparations

For $0<\varepsilon\leq1$ set $L_0=\ell_0/\varepsilon$, $\kappa=1-\varepsilon^2$, $R_0=r_0\varepsilon^2$, and node capacitances $\mathsf C=\varepsilon\mathsf C_0$, with fixed positive $\ell_0,r_0,\mathsf C_0$ and fixed nonzero ratios. For one pair define $p=hi_1$, $q=i_2$, common current $s_c=p+q$ and differential current $d_c=p-q$. The exact independent winding equations and store are
\begin{align}
 L_+\dot s_c&=S-R_0s_c,& S&=u_1/h+u_2,&
 L_+&=\ell_0(2-\varepsilon^2)/\varepsilon,\nonumber\\
 L_-\dot d_c&=D-R_0d_c,& D&=u_1/h-u_2,&
 L_-&=\ell_0\varepsilon,\nonumber\\
 E_{\mathrm{pair}}&=\frac14(L_+s_c^2+L_-d_c^2).
 \label{eq:compound-modal-limit}
\end{align}
Here $d_c$ denotes this appendix's differential current, not a contact damping coefficient. Both modes retain their independently prepared initial values:
\begin{equation}
 y(t)=y(0)e^{-R_0t/L_\pm}
       +\frac1{L_\pm}\int_0^te^{-R_0(t-\xi)/L_\pm}f(\xi)\,\dd\xi,
 \quad (y,f)=(s_c,S)\ \hbox{or}\ (d_c,D).
 \label{eq:compound-modal-solution}
\end{equation}
This exact convolution, not a truncated expansion, determines what survives.

For matched constant winding efforts $u_1/h=u_2=U$ and $s_c(0)=0$,
$s_c=2U(1-e^{-R_0t/L_+})/R_0$ and $d_c=d_c(0)e^{-R_0t/L_-}$. The identity $1-e^{-z}=\int_0^ze^{-u}\dd u\leq z$ gives, uniformly on $[0,T]$,
\begin{equation}
 |s_c(t)|\leq\frac{2|U|T}{L_+},\qquad
 |d_c(t)-d_c(0)|\leq
 |d_c(0)|\frac{R_0T}{L_-}.
 \label{eq:matched-mode-bounds}
\end{equation}
For bounded initial differential current both magnetic stores vanish along this matched family. Bounded voltages also make the capacitive stores vanish. This is a conditional reduction, not a claim about arbitrary preparation or drive.

The companion gives finite current and voltage ramps preparing these states, with separately integrated source and heat works. Compatible reconnection preserves charge and flux under the declared path; real switching needs its own finite law. A prepared limit must transport those states rather than infer them from the limiting motion.

An independently imposed common preparation $s_c(0)=s_*\varepsilon^p$ instead gives exactly
\begin{equation}
 E_+(0)=\frac{\ell_0s_*^2}{4}
              (2-\varepsilon^2)\varepsilon^{2p-1}.
 \label{eq:prepared-common-store}
\end{equation}
It vanishes for $p>1/2$, tends to $\ell_0s_*^2/2$ for $p=1/2$, and grows without bound for $p<1/2$ when $s_*\ne0$. At $p=1/2$ the current tends to zero while a finite store remains; at $p=0$ a fixed common current carries a diverging store in this ideal parameter family. Opposed common preparations in a compound assembly may cancel in selected terminal observations without canceling either store. Their finite preparation paths, component ratings and signed source-return works must be evaluated, not inferred from apparent rigid motion.

A small drive mismatch can survive as well. With $d_c(0)=0$ and constant $D=D_*\varepsilon^q$,
\begin{equation}
 d_c(t)=\frac{D_*\varepsilon^q}{R_0}
                    (1-e^{-R_0t/L_-}),\qquad
 \frac{L_-d_c(t)}{D_*\varepsilon^qt}
 =\frac{1-e^{-z}}z,\quad z=R_0t/L_-.
 \label{eq:drive-mismatch-limit}
\end{equation}
For fixed $t>0$ and $D_*\ne0$, the last ratio tends to one. Consequently the current tends to zero for $q>1$, to $D_*t/\ell_0$ for $q=1$, and grows for $q<1$. Its differential store tends to $D_*^2t^2/(4\ell_0)$ when $q=1/2$, even though the effort mismatch tends to zero. For nonconstant drive, the signed convolution, including cancellation and initialization, replaces this constant-drive conclusion.

### Passive loading and fast-layer conditions

For a held member of ratio $h_H\ne0$ and free member of ratio $h_F$, the ideal rigid voltage relation is $v_F=a v_C$, $a=1-h_F/h_H$. Retain a passive source resistor $R_s$, a receiver conductance $G_g$ to ground and $G_n$ to the carrier. Their matched static solution is
\begin{equation}
 v_C=\frac{u}{1+R_s[G_ga^2+G_n(a-1)^2]},\qquad
 v_F=av_C,\qquad
 i_F=-[G_ga+G_n(a-1)]v_C.
 \label{eq:compound-passive-limit}
\end{equation}
This follows directly from constrained node balance and each receiver's current law. Different receiver connections change both the loading and finite dynamics. Matching a prescribed winding drive does not establish this passive-source limit.

For the differential fast subsystem, let $\mathsf B_-$ be the differential-mode incidence after the held coordinate is eliminated and let $\mathsf G$ describe the retained passive conductances. Its scaled matrix and positive metric are
\begin{equation}
 \mathsf F_f=
 \begin{pmatrix}
 -\mathsf C_0^{-1}\mathsf G&-\mathsf C_0^{-1}\mathsf B_-\\
 (2/\ell_0)\mathsf B_-^T&0
 \end{pmatrix},\qquad
 \mathsf H_f=\diag(\mathsf C_0,(\ell_0/2)\mathsf I).
 \label{eq:compound-fast}
\end{equation}
Direct multiplication gives $\mathsf F_f^T\mathsf H_f+\mathsf H_f\mathsf F_f=\diag(-2\mathsf G,0)$. Strict decay requires the absence of a nonzero invariant undamped subspace; positive semidefinite dissipation alone is insufficient. If this condition makes $\mathsf F_f$ Hurwitz, constants $M,\gamma>0$ give $\|\exp(\mathsf F_ft/\varepsilon)\|\leq M e^{-\gamma t/\varepsilon}$. Variation of constants then bounds forced deviations when the forcing and compatible slow states are bounded. Initial layers remain at $t=0$ unless prepared away. Degenerate geometry, unmatched forcing, precharged fast stores or a changing limiting constraint need separate analysis.

These limits distinguish convergence of node rates, of winding currents, of separately integrated port works and of endpoint stores. None implies the others without its own bounds. A favorable signed-work comparison can coexist with large hidden stores or a different current history. Exact finite initial-state formulas retain those alternatives as physical preparation and measurement questions.

# Distributed, fractional and delayed representation
\label{app:histories}

This appendix specifies the field and history information, exact discrepancies and validity domains that finite coefficient models must retain.

## Distributed, fractional and delayed limits
\label{sec:distributed}

For field, fractional and delayed dynamics, a finite coefficient construction is a representation on a declared domain. The finite-state and rational-series constructions of Appendix \ref{sec:construction} motivate two distinct questions here: which finite realization supplies the coefficients, and how its law differs from the infinite-dimensional target. The following exact laws and discrepancies delimit that domain and state the additional field or history preparation that a finite ODE cannot infer.

For the impact driver, a resolved flexible bit, socket or joint mode would enter through its declared physical coordinates and coupled equations. Replacing those modes by a distributed compliance instead requires a field preparation and a domain for any finite representation. The line, relaxation spectrum and delay below establish complementary mathematical limits for that decision; a mechanical specialization still requires its own constitutive and connection laws.

### Transmission lines and finite passive ladders

For a uniform line of length $\ell$, per-length constants $L',C'>0$, $R',G'\geq0$ and current directed toward the load, the telegrapher equations are
\begin{equation}
 \partial_{x}v=-(R'+sL')i,\qquad
 \partial_{x}i=-(G'+sC')v,
 \quad \gamma=\sqrt{(R'+sL')(G'+sC')},\quad
 Z_{c}=\sqrt{\frac{R'+sL'}{G'+sC'}}.
 \label{eq:telegrapher}
\end{equation}
The load-to-input matrix is
$\left(\begin{smallmatrix}\cosh\gamma\ell&Z_{c}\sinh\gamma\ell\\
 Z_{c}^{-1}\sinh\gamma\ell&\cosh\gamma\ell\end{smallmatrix}\right)$,
with branches chosen by physical continuation from $\Rea s>0$. Equivalently it is the exponential of
$\ell\left(\begin{smallmatrix}0&R'+sL'\\G'+sC'&0\end{smallmatrix}\right)$.

An ideal shorted lossless line has
\begin{equation}
 Z_{\mathrm{short}}(s)=Z_{0}\tanh(st_{d}),\qquad
 \frac{Z_{\mathrm{short}}(s)}{Z_{0}}
 =st_{d}-\frac{(st_{d})^3}{3}+\frac{2(st_{d})^5}{15}
       -\frac{17(st_{d})^7}{315}+\cdots,
 \label{eq:short-line}
\end{equation}
where the infinite series converges for $|st_{d}|<\pi/2$. Its coefficients follow exactly by dividing the entire-function series for $\sinh$ and $\cosh$; no finite displayed polynomial is asserted equal to the line. For illustrative $Z_{0}=50\ \Omega$, $t_{d}=5\ \mathrm{ns}$, the first imaginary-axis pole has frequency $1/(4t_{d})=50\ \mathrm{MHz}$. References $L=Z_{0}t_{d}$, $R=Z_{0}$, $C=t_{d}/Z_{0}$ give $\rho=1$; this $R$ is an impedance scale, not a dissipative resistor. A finite polynomial has no distributed pole sequence, and a finite rational function has only finitely many poles. Neither is the exact line on an unrestricted frequency domain.

A physical finite model subdivides the line into $N$ series branches of $L'\Delta x,R'\Delta x$ and $N+1$ shunt nodes. With $\Delta x=\ell/N$, use half weights at both endpoints for $C'$ and $G'$ and full weights inside. Generically it has $2N+1$ reactive state coordinates, subject to termination constraints, and exact finite transfer
\begin{equation}
 H_{N}(s)=c^T(sI-F_{N})^{-1}b.
 \label{eq:line-finite}
\end{equation}
For this declared ladder, the node and branch parameters supply a finite state matrix and hence both operators in \eqref{eq:elimination}. Increasing the subdivision changes that finite construction; comparison with the fixed line additionally requires a frequency domain, a field-to-state preparation and a bound on their transfer difference. Appendix \ref{sec:line-accounts} retains the weighted spatial observables, scattering definitions, separate field and ladder work accounts, and termination and material-profile limits. These establish which physical line a coefficient comparison concerns.

### Fractional response

For $0<\alpha<1$, take the principal branch
$H_\alpha(s)=(1+s\tau)^{-\alpha}$. The exact integral
\begin{equation}
 H_\alpha(s)=\frac{\sin(\pi\alpha)}\pi
 \int_{1}^\infty\frac{(t-1)^{-\alpha}}{t+s\tau}\,\dd t
 \label{eq:fractional}
\end{equation}
is obtained by substituting $u=t-1$ in the beta integral. It represents a continuous positive relaxation spectrum. A finite positive quadrature defines a positive-residue rational candidate and thus a finite RC realization after the port scale is supplied; its exact error is the difference between the integral and that quadrature. Positivity alone does not bound this error or ensure monotonic improvement with order.

At $1+s\tau=-r$, $r>0$, the two boundary values differ by
$-2\ii\sin(\pi\alpha)r^{-\alpha}$. A finite rational function has no such branch discontinuity and cannot equal the fractional function globally. The binomial Taylor series is exact only as an infinite convergent series for $|s\tau|<1$; a finite polynomial is generally nonproper and has no automatically assigned physical stores. Finite-band bounds, nonprincipal paths, material identification and the continuous-spectrum initial history remain open. The stores of a chosen finite RC approximation belong to that approximation, not to the bare fractional formula.

### Exact delay and feedback

A delay has transfer $e^{-sT}$, requiring the input history on an interval of length $T$. In a feedback relation $y(t)=u(t)+g y(t-T)$, the characteristic roots for $g\ne0$ satisfy
\begin{equation}
 s_{n}=\frac{\log|g|+\ii(\arg g+2\pi n)}T,\qquad n\in\mathbb Z.
 \label{eq:delay-roots}
\end{equation}
The homogeneous dynamics decay for $|g|<1$, are neutral at $|g|=1$, and grow for $|g|>1$. By repeated substitution, on each successive length-$T$ interval the response is a finite sum of delayed inputs plus a known factor $g^m$ multiplying the original history. This method-of-steps identity is exact and keeps the preparation explicit.

A diagonal Padé delay candidate can be written $Q_n(-sT)/Q_n(sT)$, where
\begin{equation}
 Q_n(z)=\sum_{k=0}^n
 \frac{(2n-k)!\,n!}{(2n)!\,k!\,(n-k)!}z^k.
 \label{eq:pade-delay}
\end{equation}
Real coefficients make numerator and denominator conjugate at imaginary $s$, proving unit modulus there wherever the quotient is defined. This candidate is rational and all-pass on the imaginary axis; this scattering property does not make it a positive-real impedance. No finite proper rational function approximates the unit delay with arbitrarily small absolute error on the entire imaginary axis: its limit at infinite frequency is a constant, whereas the delay traverses the unit circle endlessly. The worst limiting error is at least one, and is two for a unit-modulus limiting constant. An improper rational function is unbounded there. Thus every finite approximation requires a finite active band and a history-to-state map. Appendix \ref{sec:history-examples} proves that these finite moments and present derivatives do not determine an arbitrary delayed observation. A prepared transmission-line field can realize a physical delay with distributed storage, but the bare delay or Padé expression has no uniquely specified store or radiation boundary.

## Field and history data for finite coefficient models
\label{sec:field-history-details}

The finite constructions in Appendices \ref{sec:histories} and \ref{sec:distributed} require preparation information beyond their coefficients. The following controls retain the exact history counterexamples and the physical field and termination accounts used to delimit those constructions.

### Finite moments do not determine delayed observations
\label{sec:history-examples}

A finite chain is not a complete delay history. To see this exactly, add to any history a perturbation equal to $1,-4,6,-4,1$ on the five consecutive intervals
$[-1+j/8,-1+(j+1)/8)$, $j=0,\ldots,4$, and zero elsewhere. Its first four moments against $(-t)^j/j!$, $0\leq j\leq3$, vanish: the integral over each bin is a polynomial of degree at most $j$ in the bin index, and the five weights take its fourth finite difference. It also vanishes near the present, so every present derivative agrees for smooth base histories. Nevertheless its delayed value at lag $11/16$ differs by $6$. A second perturbation equal to $2$ on $[-2,-3/2)$ changes no history integral based at $-1$, but changes the delayed value at lag $7/4$ by $2$. Both controls work with a constant or a sinusoidal base history. Neither any finite present jet nor these four moments uniquely represents arbitrary delay history.

### Scattering, spatial diagnostics and field work
\label{sec:line-accounts}

Use the line, propagation constant and finite ladder defined in Appendix \ref{sec:distributed}. The physical spatial and boundary observations are as follows.

The load reflection coefficient is
$\Gamma_{L}=(Z_{L}-Z_{c})/(Z_{L}+Z_{c})$.
Forward and reflected waves define local reflection magnitude and phase. For a lossless line the standing-wave ratio is $(1+|\Gamma|)/(1-|\Gamma|)$; in a lossy line a local ratio does not generally equal the global envelope ratio along an arbitrary length. Group delay is $-\dd\arg H(\ii\omega)/\dd\omega$ where the phase derivative exists; transfer zeros require separate treatment.

For the finite ladder, the stores and physical spatial diagnostics are
\begin{equation}
 E_{N}=\frac12\sum_{j}L'\Delta x\,i_{j}^2+\frac12\sum_{j}C_{j}v_{j}^2,
 \quad \Lambda_{\mathrm{abs}}=\sum_{j}L'\Delta x\,|i_{j}|,
 \quad Q_{\mathrm{abs}}=\sum_{j}C_{j}|v_{j}|.
 \label{eq:line-stores}
\end{equation}
Raw sums without spatial weights change just because the subdivision changes. Linkage and charge sums have different units and are not added.

For the continuum boundary, $E=\int_{0}^\ell(L'i^2+C'v^2)\dd x/2$. Multiplying the time-domain telegrapher equations by the conjugate fields and integrating by parts gives
\begin{equation}
 \dot E=v(0)i(0)-v(\ell)i(\ell)
       -\int_{0}^\ell(R'i^2+G'v^2)\,\dd x.
 \label{eq:line-power}
\end{equation}
For a Thevenin source and resistive load these are the separately integrated powers $V_{s}i_{s}$, $-R_{s}i_{s}^2$, $-G_{L}v(\ell)^2$ and the two distributed loss integrals. The finite ladder gives the same identity by telescoping internal port products. Endpoint electric and magnetic fields or node states are independently evaluated. A post-pulse reflection tail need not have vanished at a chosen finite time. Deleting it by an ideal reset requires outward event work equal to its actual store and does not describe a constructed hardware reset.

A degree-six Taylor matrix or a $[3/3]$ Padé matrix is a finite candidate with its own exact residual against the matrix exponential. Neither the order nor a small low-frequency discrepancy certifies a near-open high-frequency corner. An alternating zero-weighted-mean capacitance change preserves total capacitance but alters the medium; it cannot be called mere refinement of a fixed uniform line. A continuum comparison needs either a fixed material profile with refinement or a proved homogenization limit. Ideal open and short terminations are separate boundary conditions. Long reflection tails, dispersive loss, discontinuous edges, exterior fields, radiation and measured terminations remain unresolved physical limits. A separately normalized line model does not automatically audit the field and termination realization of a dimensional RF device.

### What a field reduction preserves
\label{sec:field-reduction}

A finite coefficient model needs a specified electromagnetic boundary before its work interpretation can be assessed. For a fixed vacuum volume, Maxwell's curl equations imply
\begin{equation}
 \frac{d}{dt}\int_V\left(\frac{\epsilon_0|E|^2}{2}+\frac{|B|^2}{2\mu_0}\right)dV
 =-\int_VJ\cdot E\,dV-\int_{\partial V}(E\times H)\cdot n\,dS.
 \label{eq:field-boundary}
\end{equation}
The volume and surface works are separately integrated. Material dispersion, hysteresis, heat and motion require their own constitutive states; a moving volume adds Reynolds transport and a declared frame. A finite surface cannot be replaced by infinity without a decay bound. Terminal $vi$ and the surface transfer across that same interface are not two independent inputs: integrating \eqref{eq:field-boundary} between reference planes also retains intervening storage and material conversion. The actual return conductor belongs to that comparison.

An exact invalid-reduction control makes the issue explicit. Let $A_0$ be a smooth divergence-free vector potential, $B_0=\nabla\times A_0$, $H_0=B_0/\mu_0$, $J_0=\nabla\times H_0$. Put $A=g(t)A_0$, $E=-\dot gA_0$, $B=gB_0$, $J=gJ_0$. Faraday's law and both Gauss equations hold, but
\begin{equation}
 \nabla\times H-J-\epsilon_0\dot E=\epsilon_0\ddot gA_0.
 \label{eq:field-omission}
\end{equation}
Thus this is a magnetoquasistatic construction, not a full-Maxwell solution for the same source whenever the right side is nonzero. Define independently $K_B=\int_V|B_0|^2/(2\mu_0)$, $K_A=\int_V|A_0|^2$, $K_J=\int_VJ_0\cdot A_0$ and $K_S=\int_{\partial V}(A_0\times H_0)\cdot n$. Integration by parts gives $2K_B=K_J+K_S$. Magnetic and electric stores are $K_Bg^2$ and $\epsilon_0K_A\dot g^2/2$; the original volume and surface powers are $K_Jg\dot g$ and $K_Sg\dot g$. Their separate primitives are $K_J\Delta(g^2)/2$ and $K_S\Delta(g^2)/2$.

Including electric storage with those original ports leaves the exact residual $\epsilon_0K_A\Delta(\dot g^2)/2$. A complete ramp with zero endpoint slopes hides this mismatch, whereas its rising and falling subintervals retain opposite signs. A different source $J_{\rm full}=gJ_0+\epsilon_0\ddot gA_0$ restores Maxwell's equation and adds independently derived power $\epsilon_0K_A\dot g\ddot g$, whose integral supplies that electric-store change. It does not validate the original current. Continuous $g,\dot g$ with a jump in $\ddot g$ requires a finite current jump, not a delta impulse. Electric storage scales as the inverse square of ramp duration; a small retardation ratio alone bounds neither radiation nor material and return-path omissions. A physical source/field realization and its uncertainty remain unresolved.

# Signed work, events and verification
\label{app:work}

These accounts audit independently declared models and trajectories. They retain the signs of event residuals and the distinction between equation-term identities, physical port works and unresolved observations.

## Signed physical work and equation-term identities
\label{sec:work}

The article derives results for declared models. Ideal switches, linear contacts, lumped components and prescribed material laws are assumptions, not measurements. Closed-form integrations evaluated here are exact within their declared models. Unevaluated matrix-function or time-ordered work expressions are definitions, not zero-error numerical evaluations; a nonzero balance residual can nevertheless remain when an event deletes a store or the declared ports leave a coupling transfer unassigned. Missing physical mechanisms are kept as named, unevaluated model residuals. Neither work nor energy is used to choose coefficients, derivative order, release criteria, preparation or control strategy.


The coefficient laws and physical trajectories are specified before the audits in this section. Signed work tests their declared boundaries, ports and retained stores. An equation-term identity has a physical interpretation only when the realization supplies it; no work outcome selects coefficient weights or derivative order.

### Boundary, event sides and residuals

For a declared system boundary, positive power enters through a port. An electrical port has $P=vi$, a translational port $P=Fv$, and a rotational port $P=\tau\omega$, with conjugate signs fixed together. On each smooth interval $[t_{0},t_{1}]$ define
\begin{equation}
 W_\ell(t_{0},t_{1})=\int_{t_{0}}^{t_{1}}e_\ell(t)f_\ell(t)\,\dd t,
 \qquad r_{E}=E(x(t_{1}))-E(x(t_{0}))-\sum_\ell W_\ell.
 \label{eq:work}
\end{equation}
Each signed port integral is evaluated before summation. End stores come independently from the component states. Switching work is evaluated on a finite regularization or as a separately justified impulse; one must distinguish $t_{e}^-$ and $t_{e}^+$. A fixed support can deliver impulse with zero work because its velocity is zero. Nonzero reaction force does not imply energy transfer.

The endpoint balance residual $r_E$ is still evaluated for the ports actually declared: an unassigned event or coupling contribution may make it nonzero. The model discrepancy $r_{\mathrm{model}}$ names what a physical implementation adds or changes, including constitutive error and unresolved event destinations; its value is unknown unless a stated assumption determines it. A surviving discrepancy remains open with its sign, magnitude and conditions of occurrence. Reversing a sensor orientation requires reversing the associated incidence map. Voltages and currents from different connection graphs or different event sides cannot be paired without proving a common physical port.

### The collision ledger

During \eqref{eq:collision-state} with $u=0$, let
$K_{h}=J_{h}\dot\theta_{h}^2/2$, $K_{a}=J_{a}\dot\theta_{a}^2/2$,
$U_{j}=k_{j}\theta_{a}^2/2$. Define positive transfer powers
\begin{equation}
 P_{hc}=\tau_{c}\dot\theta_{h},\quad
 P_{ca}=\tau_{c}\dot\theta_{a},\quad
 P_{\mathrm{rel}}=\tau_{c}\dot\delta,\quad
 P_{j}=\tau_{j}\dot\theta_{a}.
 \label{eq:collision-ports}
\end{equation}
These orientations denote transfer out of the hammer, into the anvil, into the contact deformation, and into the joint, respectively. Direct integration of the separate products yields
\begin{align}
 W_{hc}&=-\Delta K_{h},&
 W_{ca}&=\Delta K_{a}+W_{j},\nonumber\\
 W_{\mathrm{rel}}&=\Delta U_{c}+\int_{t_{0}}^{t_{1}}d_{c}\dot\delta^2\,\dd t,&
 W_{j}&=\Delta U_{j}+\int_{t_{0}}^{t_{1}}d_{j}\dot\theta_{a}^2\,\dd t.
 \label{eq:collision-work}
\end{align}
For the complete two-body, two-spring boundary, the external loss powers are $-d_{c}\dot\delta^2$ and $-d_{j}\dot\theta_{a}^2$; contact transfer cancels internally. If a drive acts, its separate inward power is $u\dot\theta_{h}$. Initial preparation belongs to an earlier interval and cannot be omitted when comparing a complete operating cycle.

Return is retained by splitting $W_{hc}$ into the integrals over $P_{hc}>0$ and $P_{hc}<0$. They have opposite signs and need not be small separately. If the hammer reaches its first zero speed monotonically from the illustrative initial state of \eqref{eq:collision-values}, its outward contact work to that instant is exactly $144/5\ \mathrm J$. A later return changes the final hammer store; it does not invalidate the earlier signed integral.

The torque-zero result in Appendix \ref{sec:impact-release} leaves the release law and physical destination open. Assigning a compensating event work equal to the deleted store closes a mathematical account without identifying a transfer. Retained material states and independently measured acoustic, thermal, fracture or fixture channels require their own laws. [*Hidden States and Unassigned Work*][companion] develops those alternatives and repeated contacts, retaining the signed residual for each declared boundary.

### What multiplication by a derivative does, and does not, prove

Multiplying \eqref{eq:template} by $\dot y$ gives
$(a\dot y^2/2+cy^2/2)'=f\dot y-b\dot y^2$.
This is a physical work identity only when the variables and coefficients belong to a declared realization. Multiplication of an arbitrary equation by a constant rescales every term integral without changing its solutions.

For a homogeneous fourth-order scalar equation, integration by parts gives the exact identity
\begin{align}
 Q&=\frac{B_{0}y^2}{2}+\frac{B_{2}\dot y^2}{2}
      +B_{3}\ddot y\dot y
      +B_{4}\left(y^{(3)}\dot y-\frac{\ddot y^2}{2}\right),\nonumber\\
 \dot Q&=-\Pi,\qquad \Pi=B_{1}\dot y^2-B_{3}\ddot y^2.
 \label{eq:formal-work}
\end{align}
For $B_1,B_3>0$, this identity predicts increasing $Q$ precisely when $B_3\ddot y^2>B_1\dot y^2$. In particular, a velocity zero with nonzero acceleration gives $\dot Q>0$. Its effective-rate zeros satisfy $\ddot y/\dot y=\pm\sqrt{B_{1}/B_{3}}$ when those expressions are defined; they need not coincide with an internal component's zero power. Meanwhile the undriven collision store obeys $\dot E=-d_c\dot\delta^2-d_j\dot\theta_a^2$. The formal increase and the physical store change are distinct results to compare. Appendix \ref{sec:parts} derives the arbitrary-order identity.

The physical comparison can be made directly in scalar-jet coordinates. For $q=\theta_h$, put $a_1=J_h\ddot q+k_cq+d_c\dot q$ and $a_2=J_hq^{(3)}+k_c\dot q+d_c(1+J_h/J_a)\ddot q$. Inverting \eqref{eq:collision-jet} when $\Delta\ne0$ gives the reconstructed angle and rate
\begin{align}
 q_a^*&=\frac{(k_c-d_cd_j/J_a)a_1-d_ca_2}{\Delta},&
 w_a^*&=\frac{(d_ck_j/J_a)a_1+k_ca_2}{\Delta},\nonumber\\
 E_{\mathrm{jet}}&=\frac12J_h\dot q^2+\frac12J_a(w_a^*)^2
       +\frac12k_c(q-q_a^*)^2+\frac12k_j(q_a^*)^2.
 \label{eq:physical-jet-store}
\end{align}
This is the positive physical store transported through the invertible state map, not the integration-by-parts form $Q$. Its derivative follows the component balance because the map reconstructs both original state equations. On $\Delta=0$, the hidden state must instead be retained independently. The unresolved realization question is which declared normalization, state map and physical port, if any, makes a higher-derivative boundary form an accessible store or transfer. Its indefinite form, arbitrary equation scaling and lack of an identified component assignment constrain that question. They do not remove the formal sign reversal or supply its physical attribution.

The physical mobility in \eqref{eq:collision-poly} is passive because the independently derived state balance has nonnegative dissipation. For the artificial mobility $s/P(s)$, writing $P(s)=\sum_{k=0}^4p_{k}s^k$ instead gives
\begin{equation}
 \Rea\frac{\ii\omega}{P(\ii\omega)}
 =\frac{\omega^2(p_{1}-p_{3}\omega^2)}{|P(\ii\omega)|^2}.
 \label{eq:false-port}
\end{equation}
It is negative above $\sqrt{p_{1}/p_{3}}$. A stable denominator can thus be used in a nonpassive port map. Stability, positive-realness and a component realization are distinct assertions.

For a real rational impedance with no poles in $\Rea s>0$, positive-realness requires $\Rea Z(s)\geq0$ there, including the appropriate nonnegative residues at allowed imaginary-axis poles. Nonnegative real part on a finite frequency interval is not a global certificate. A cubic $ds^3+as^2+bs+c$ with positive coefficients is Hurwitz exactly when $ab>dc$. Hence $1+s+s^2+\alpha s^3$ is strictly stable for $0<\alpha<1$, marginal at $\alpha=1$, and unstable for $\alpha>1$; for $\alpha<0$ continuity on the positive real axis already gives a positive real root. At $\alpha=0$ the order changes, so the extra initial derivative is no longer free.

### Signed work and unresolved drift under random drive
\label{sec:stochastic-work}

The waveform and statistical assumptions are given in Appendix \ref{sec:waveform-statistics}. Here the same declared realization and preparation determine the physical work account after the coefficient law has been chosen.

A changing mean store under a finite-band random drive raises a separate question from Gaussianity or zero-crossing rate: what signed transfer accounts for the change, and does a residual remain after that transfer is independently evaluated? On each finite operation interval $[t_0,t_1]$, retain the physical source effort $e$, its conjugate flow $f$, all loss ports and the prepared initial state. Zero mean effort does not set mean power to zero, since
\begin{equation}
 \mathbb E[ef]=\mathbb E[e]\,\mathbb E[f]+\operatorname{Cov}(e,f).
 \label{eq:stochastic-power}
\end{equation}
This follows by expanding $(e-\mathbb E e)(f-\mathbb E f)$. With finite second moments and $\int_{t_0}^{t_1}\mathbb E|e_\ell f_\ell|\,\dd t<\infty$, expectation can pass through each separate integral. For every declared port define $W_\ell=\int_{t_0}^{t_1}e_\ell f_\ell\,\dd t$ before forming
\begin{equation}
 \mathbb E[r_E]=\mathbb E[E(t_1)]-\mathbb E[E(t_0)]
                      -\sum_\ell\mathbb E[W_\ell].
 \label{eq:stochastic-residual}
\end{equation}
The stores are evaluated from the states and the identified physical metric, not from the expected powers. For the normalized realization \eqref{eq:nonnormal}, the explicit products are $u(b^Tz)$ and $-(p_jz_j)z_j$, with $E=z^Tz/2$. Duhamel's formula supplies the state path and retains any correlation between preparation and drive. A random input to a merely fitted terminal law supplies no internal store until a realization is specified.

The unresolved operation question is whether a persistent positive or negative residual survives the joint uncertainty of source work, losses and endpoint states. A source-off relaxation interval is audited separately with its actual remaining ports; its initial state is the operation endpoint. Agreement of a relaxation identity or an operation endpoint check does not bound uncertainty in each operation port integral. Shared paths, finite-window leakage, unresolved high-frequency modes and correlated gain or timing errors require their own bounds. A constant bias in one power channel can accumulate with interval duration; extending the interval without resolving that bias does not establish a physical drift.

For a finite damped realization and a specified forcing covariance, exact state and work integrals give conditional predictions. Their exact model identities do not bound finite-precision or physical observation errors. Appendix \ref{sec:residual-outcomes} gives the signed outcome criterion. Non-Gaussian drives, longer tails, nonlinear or time-varying plants and a physical implementation of the metric remain open beyond these conditions.

## Signed residual outcomes and measurement uncertainty
\label{sec:limits}

A comparison of synthesized coefficient laws requires independently bounded observation errors. Physical-accounting comparisons additionally require all signed works and endpoint states. The following enclosures identify the conclusions that those distinct measurements can support.

### Signed residuals and their uncertainty
\label{sec:residual-outcomes}

For measurement estimates $\widehat E_j,\widehat W_\ell$, suppose calibration and the declared observation model establish $|\widehat E_j-E_j|\leq\epsilon_{E_j}$ and $|\widehat W_\ell-W_\ell|\leq\epsilon_{W_\ell}$. Then
\begin{align}
 \widehat r_E&=\widehat E_1-\widehat E_0-\sum_\ell\widehat W_\ell,\nonumber\\
 |\widehat r_E-r_E|&\leq
 \epsilon_{E_0}+\epsilon_{E_1}+\sum_\ell\epsilon_{W_\ell}
 \equiv\epsilon_r.
 \label{eq:residual-enclosure}
\end{align}
The proof is the triangle inequality; it requires no statistical independence. Correlated error sets can give a tighter enclosure when justified. Include event-time and event-side uncertainty in the corresponding store and work bounds. A covariance matrix alone supplies no deterministic bound. Unquantified omitted physics remains an unquantified model limitation, rather than an adjustable allowance chosen after seeing the residual.

The sign is resolved only if the interval $[\widehat r_E-\epsilon_r,\widehat r_E+\epsilon_r]$ excludes zero. A resolved gain or deficit retains its boundary, preparation and separately evaluated ports. Opposite local residuals can cancel in a combined interval or boundary. [*Hidden States and Unassigned Work*][companion] derives channel, endpoint and timing bounds, the illustrative hidden-store budget and the sign-biased integration control. Unknown physical omissions cannot be fitted into an error allowance after observing the residual.

### Projection residuals and remaining physical limits

A residual against a second-order projection is a question about that projection, not a new energy law. For a declared physical power $P_{\mathrm{exc}}$ and an independently chosen template, define
\begin{equation}
 r_{T}(t)=P_{\mathrm{exc}}(t)-
 \left[a\dot v(t)v(t)+bv(t)^2+cy(t)v(t)\right],\quad y'=v,
 \qquad W_{T}=\int_{t_{0}}^{t_{1}}r_{T}\,\dd t.
 \label{eq:template-residual}
\end{equation}
A dimensionless magnitude can use
$\Phi_{T}=\int|r_{T}|\dd t/\int(|P_{\mathrm{exc}}|+|a\dot vv|+|bv^2|+|cyv|)\dd t$
when its denominator is positive. State the normalization explicitly. Signed cancellation can make $W_{T}$ small while $\Phi_{T}$ remains large. Neither quantity replaces \eqref{eq:work}.

A disciplined interpretation first establishes the observation and arithmetic uncertainty on the same interval and port, then considers omitted higher-order states, time-varying coefficients, declared event partitions and other actual ports. A higher-order equation that explains a residual still needs a realization. Local coefficient variation can absorb discrepancy without identifying physical parameter variation. A multi-port projection must show its dependence on the chosen port; selecting a port by integrated throughput would make work part of selection and is excluded here. An exact-model identity supplies no empirical uncertainty bound. Actual instrumentation supplies its own nonzero uncertainty and cannot borrow a floor from another scale, interval or apparatus.

There are three possible failures of such a residual program: the residual may be indistinguishable from its measurement floor; every excess may already be explained by the declared finite model; or the conclusion may depend mainly on arbitrary port choice. In those cases the quantity has, respectively, no discriminating power, only a bounded audit role, or no robust cross-port interpretation. A small residual, a large residual and an unperformed comparison establish different facts. None establishes an unspecified energy destination.

Physical sensor uncertainty includes channel gain, offset, polarity, bandwidth, phase, trigger timing, loading and cross-channel covariance. For an explicitly affine observation-error model $g=g_{0}+J\epsilon$ with covariance $\Sigma$ of $\epsilon$, the covariance is exactly $J\Sigma J^T$; a nonlinear observation requires propagation of the full declared error set or distribution. In particular, polarity faults are discrete alternatives, not a small Gaussian perturbation. A prior probability of reversed polarity or an alarm threshold is an illustrative assumption until calibrated. No synthetic error model establishes a real sensor distribution.

A useful exact gain example avoids linearization: if measured effort and flow are $(1+\epsilon_{e})e$ and $(1+\epsilon_{f})f$, their measured power is $(1+\epsilon_{e})(1+\epsilon_{f})ef$. With offsets and timing shifts the cross terms and phase errors must also be retained. For sinusoidal peak phasors a relative phase error $\Delta\phi$ replaces $\Rea(VI^*)$ by $|V||I|\cos(\arg V-\arg I+\Delta\phi)$. Near quadrature, a small phase error can reverse the sign of inferred real work. Internal branch voltage integration additionally requires an initial-flux reference and drift control. Extra sign crossings induced by noise are not physical contact events.

The unresolved boundaries are specific. Coefficient identification needs independently variable physical coordinates, realistic covariance, full interactions among partition, estimator, phase and fixture changes, and certified roots at stability or passivity boundaries. Finite frequency atlases do not cover intermediate coordinates, arbitrary signed combinations, large condition numbers or the right-half-plane interior. Duality comparisons need transported candidate sets and fully mapped ports. A general six-term combination has no certificate merely because a single cubic continuation is understood.

Preparation and history need attainable source limits, finite clamps, correlated initial states, longer history bases and well-defined simultaneous-event limits. Relaxation over widely separated time constants requires interval bounds that resolve each scale. Exact identities here do not retroactively validate unresolved finite-precision calculations of short preparation, coincident-event work, long-base compatibility, near-neutral modes or unstable prefixes. Those are still uncertainty questions, with no numerical magnitude asserted as an exact physical result.

Driven systems additionally need material identification, thermal and sensor realizations, finite-supply return paths, pole-coalescence analysis, exact singular coupling constraints, noncommensurate forcing and closed-loop robustness. Repeated operation with heating changes resistance and can create self-limiting or runaway behavior only under a declared thermal feedback law. A cycle map $T_{n+1}=\Psi(T_{n})$ has a locally stable fixed point when $|\Psi'(T_*)|<1$; $\Psi'(T_*)=1$ is a neutral boundary requiring higher-order analysis. A finite collection of positive-temperature states does not certify that boundary or continued sign-crossing surfaces. Preparation and reset of the full plant cannot be validated by a reduced two-store template shared by several applications.

Passive network questions still include construction throughout correlated signed-residue regions, minimal physical storage on their boundaries, available and required storage bounds, resistor-loss allocation and finite stress under nonideal transformer constraints. Distributed questions still include continuous spectral error bounds, nonmonotone finite-order improvements, delay history and fields, exterior ports and infinite-band impossibility. Mechanical questions still include order-transition surfaces, nonlinear contacts, independent inertia and stiffness ratios, more complicated re-engagement, absorber coscalings, grip and fixture loading, and thermal/acoustic release destinations. A declared finite model can resolve a local mathematical question without resolving any of these broader physical ones.

For actual validation, ordinary synchronized effort and flow channels should be accompanied by the smallest internal sensor set that separates the proposed alternatives, plus a full internal control where feasible. Keep device calibration, coefficient estimation, model choice and final conditions separate. A full-rank normalized representative map does not guarantee raw-unit identifiability, predictability under a different model family or successful physical probe placement. Coupled gain/phase drift, non-Gaussian noise, sensor saturation, component-temperature-aging dependence and geometry/material covariance require their own uncertainty specification. A finite set of parameter vertices does not enclose a continuous nonlinear region without an interval or monotonicity proof. Hardware apparatus, calibration, authority to operate it and actual observations remain external requirements; no proposed measurement is reported as completed.

## Integration by parts at arbitrary derivative order
\label{sec:parts}

Let $y$ have the required continuous derivatives on a smooth interval. For $m\geq1$ define
\begin{align}
 H_{2m}&=\sum_{j=0}^{m-2}(-1)^j
       y^{(2m-1-j)}y^{(1+j)}
       +\frac{(-1)^{m-1}}2\bigl(y^{(m)}\bigr)^2,\nonumber\\
 H_{2m+1}&=\sum_{j=0}^{m-1}(-1)^j
       y^{(2m-j)}y^{(1+j)},\qquad H_{0}=y^2/2,\quad H_{1}=0.
 \label{eq:boundary-forms}
\end{align}
An empty sum is zero. The product rule gives
\begin{equation}
 y^{(2m)}\dot y=\dot H_{2m},\qquad
 y^{(2m+1)}\dot y=\dot H_{2m+1}
                      +(-1)^m\bigl(y^{(m+1)}\bigr)^2.
 \label{eq:parts-general}
\end{equation}
Adjacent terms telescope; the last product in the even case is the derivative of a square. This proves the identities without a physical interpretation. For $P(D)y=f$ they yield
\begin{equation}
 \frac{\dd}{\dd t}\left(\sum_{k}B_{k}H_{k}\right)
   =f\dot y-\sum_{m\geq0}(-1)^mB_{2m+1}
                               \bigl(y^{(m+1)}\bigr)^2,
 \label{eq:general-formal-balance}
\end{equation}
with only indices present in $P$ included. The fourth-order expression \eqref{eq:formal-work} follows immediately. Multiplying $P$ and $f$ by a nonzero constant multiplies every term here without changing $y$. Positivity, physical dimensions of a selected port and a component realization cannot be inferred from this algebra.

## A finite connection event with nonunique port partitions
\label{sec:reset}

Let two capacitors $C_{1},C_{2}>0$ have voltages $v_{1},v_{2}$ and be joined during $0\leq t\leq\varepsilon$ by two parallel, time-dependent conductances $g_{A},g_{B}\geq0$. Define
$C_{e}=C_{1}C_{2}/(C_{1}+C_{2})$, $d=v_{1}-v_{2}$, and total charge $Q=C_{1}v_{1}+C_{2}v_{2}$. Then
\begin{equation}
 \dot Q=0,\qquad C_{e}\dot d=-(g_{A}+g_{B})d,
 \qquad E=\frac{Q^2}{2(C_{1}+C_{2})}+\frac12C_{e}d^2.
 \label{eq:reset-state}
\end{equation}
The two independently signed resistor powers are $P_{A}=-g_{A}d^2$ and $P_{B}=-g_{B}d^2$. Put
$g_{j}(t)=KC_{e}\phi_{j}(t/\varepsilon)/\varepsilon$ with
$\int_{0}^1\phi_{A}\dd u=\int_{0}^1\phi_{B}\dd u=1$. Exact integration gives
\begin{equation}
 d^+=e^{-2K}d^-,\qquad
 W_{A}+W_{B}=-\frac{C_{e}(d^-)^2}{2}(1-e^{-4K}).
 \label{eq:reset-map}
\end{equation}
For sequential conductances, $A$ then $B$, the separate integrals are
\begin{equation}
 W_{A}=-\frac{C_{e}(d^-)^2}{2}(1-e^{-2K}),\qquad
 W_{B}=-\frac{C_{e}(d^-)^2}{2}e^{-2K}(1-e^{-2K}).
 \label{eq:reset-partitions}
\end{equation}
Reversing the order exchanges the physical port assignments while preserving the endpoint. For identical coincident profiles each integral is half of \eqref{eq:reset-map}. The scalar transition maps commute, but their work partitions need not coincide. Multidimensional reset generators need not commute at all.

For the illustrative $C_{1}=C_{2}=1\ \mathrm F$, $d^-=2\ \mathrm V$, the total loss tends to $1\ \mathrm J$ as $K\to\infty$. The initial and final common-voltage store is unchanged; the independently evaluated difference store falls by that amount. Taking $\varepsilon\to0$ at fixed $K$ yields a finite jump with path-dependent port assignment. A bounded voltage contributes a vanishing $O(\varepsilon)$ amount to an initialized integral history during that shrinking interval; the bound follows directly from $|\int y\dd t|\leq\varepsilon\sup|y|$, without a series approximation.

After the event, a fixed conductance $G_{0}=C_{e}/\tau$ leaves $d'=-d/\tau$ and constant $Q$. Each capacitor voltage therefore satisfies $v_{j}''+v_{j}'/\tau=0$. Before connection the isolated voltage satisfies $v_{j}'=0$. The derivative order changes because the accessible difference mode changes. Jets must be reconstructed from the post-event state, and a discarded difference store must not be concealed in an arbitrary derivative reset.

### Noncommuting finite state maps

The scalar reset above does not exhaust event transport. Three grounded unit capacitors, initially $q=(1,0,-1)^T\ \mathrm C$, can be connected by a unit resistor on edge A, $a_A=(1,-1,0)^T$, or edge B, $a_B=(0,1,-1)^T$. In the corresponding SI coordinates $\dot q=-a_ja_j^Tq$. An interval $\log2/2\ \mathrm s$ gives
$$
 M_A=\begin{pmatrix}3/4&1/4&0\\1/4&3/4&0\\0&0&1\end{pmatrix},\qquad
 M_B=\begin{pmatrix}1&0&0\\0&3/4&1/4\\0&1/4&3/4\end{pmatrix}.
$$
These follow by exponentiating the rank-one generator, whose nonzero eigenvalue is $-2$. The two orders give $M_BM_Aq=(3/4,-1/16,-11/16)^T$ and $M_AM_Bq=(11/16,1/16,-3/4)^T\ \mathrm C$. Physical states are continuous at each connection, but their final maps do not commute. Each first-channel heat is $3/16\ \mathrm J$, each second-channel heat $75/256\ \mathrm J$, and independently evaluated final store $133/256\ \mathrm J$. This stronger state difference is separate from commuting scalar maps with unequal channel works. The [companion][companion] retains both complete signed accounts.

A series two-cell observation supplies a different exact limit. For equal $C$ and a series receiver $R$, $s=v_1+v_2$ obeys $\dot s=-2s/(RC)$, while $\delta=v_1-v_2$ remains constant. At unit $R,C$, initial pairs $(1,1)$ and $(3,-1)\ \mathrm V$ produce identical terminal histories $s=2e^{-2t}\ \mathrm V$ but stores $1$ and $5\ \mathrm J$. Adding a finite cell probe changes the graph and its observation map. It can discriminate a specified binary preparation family only when its predicted filtered histories separate by more than the full error bounds; it does not identify arbitrary unknown cell states. The companion supplies a finite charged bank, its actual probe loading, time-ordered observation map and conditional discrimination criterion.

## Exact verification identities and comparison obligations
\label{sec:verification}

The principal algebraic checks are summarized below to make the derivations reproducible without computational output. They support the coefficient constructions in Appendices \ref{sec:family}--\ref{sec:identification} and distinguish those exact results from further claims about initialization, realization and observation.

| Construction | Exact check | Boundary that must remain separate |
|:--------------------------|:----------------------------------------|:--------------------------------|
| Coefficient monomial | $\alpha+\beta+\gamma=1$, $2\alpha+\beta=k$ | Zero references and nonconvergent tails |
| Collision elimination | Determinant of the two-body dynamic stiffness matrix | $\Delta=0$, fixed or massless bodies |
| Branch coefficient recurrence | Split the added branch in \eqref{eq:battery-poly} to obtain \eqref{eq:branch-coefficients} | Unreduced degree, repeated branch times and prepared states |
| Support uniqueness | Polynomial independence after clearing Laurent denominators, Lemma \ref{lem:support-independence} | Restricted parameter domains and finite-observation uncertainty |
| Cubic stability | First Routh column $d,a,(ab-dc)/a,c$ | Equality and leading-coefficient zero |
| State image | $\mathcal O_{m}x_{0}+a$ and its exact nullspace | Affine forcing and unobservable factors |
| RC positive-realness | Polynomial $q_{N}(x)\geq0$ for $x\geq0$ | Signed regions without a supplied synthesis |
| Finite line | Telescoping node/branch power products | Open/short, field preparation and radiation |
| Clamp | Substitution of \eqref{eq:clamp-solution} into \eqref{eq:clamp-state} | First-zero opening and perfect coupling |
| Absorber | Two-by-two determinant and Schur elimination | Zero mass/damping coscalings |
| Transducer | Cubic determinant and Hermitian port matrix | Bias/controller supply and unstable prefixes |
| Connection event | Integrate $-g_{A}d^2$ and $-g_{B}d^2$ separately | Edge ordering and incompatible initial states |

: Independent checks that determine the scope of the exact results.

There is also an exact discrete algebraic control for a lossless linear state equation. If $F^TH+HF=0$ and an implicit midpoint update is defined by
\begin{equation}
 x_+-x=hF\frac{x_++x}{2},
 \label{eq:midpoint-control}
\end{equation}
then $E(x_+)-E(x)=h[(x_++x)/2]^THF[(x_++x)/2]=0$ whenever the update exists. This identity is independent of arithmetic implementation. It does not supply a finite-precision drift bound, an event rule, or a physical model certificate; those remain separate uncertainty questions. Likewise, a null singular value and a divergent unstable continuation are exact features before any arithmetic error is assessed.

The proved complete-model balances follow from separate port integrals and endpoint states. An exact integral does not make every declared-boundary balance zero. The contact deletion and listed-port coupling examples retain their signed nonzero residuals, while the expanded supply accounts remain conditional on their state and port laws. Unspecified material, sensor, switching, thermal, acoustic and exterior-field effects remain $r_{\mathrm{model}}$, whose sign and magnitude are not invented. Unresolved interval, DC-link, thermal-endpoint and stochastic-work checks retain their own scope. Every surviving discrepancy is reported with its interval, orientation, preparation, event sides and uncertainty rather than absorbed into a presumed destination.

# References {-}

1. Wettstein, A., Grauberger, P., and Matthiesen, S. (2021). [Modeling dynamic mechanical system behavior using sequence modeling of embodiment function relations: case study on a hammer mechanism][wettstein]. *SN Applied Sciences* **3**, article 128. DOI: 10.1007/s42452-021-04149-8.
2. Bible, S. (2002). [Crystal Oscillator Basics and Crystal Selection for rfPIC and PICmicro Devices][bible]. Microchip Technology, Application Note AN826, DS00826A, pp. 1--14.
3. Coilcraft (n.d.). [Measuring Self Resonant Frequency][coilcraft]. Technical application note.
4. Keysight Technologies (n.d.). [Impedance Measurement Handbook][keysight]. Application note 5950-3000.
5. Kalman, R. E. (1963). [Mathematical Description of Linear Dynamical Systems][kalman]. *Journal of the Society for Industrial and Applied Mathematics, Series A: Control* **1**(2), 152--192. DOI: 10.1137/0301010.
6. Willems, J. C. (1972). [Dissipative dynamical systems Part II: Linear systems with quadratic supply rates][willems]. *Archive for Rational Mechanics and Analysis* **45**, 352--393. DOI: 10.1007/BF00276494.
7. Foster, R. M. (1924). [A Reactance Theorem][foster]. *Bell System Technical Journal* **3**(2), 259--267. DOI: 10.1002/j.1538-7305.1924.tb01358.x.
8. Rice, S. O. (1945). [Mathematical Analysis of Random Noise][rice]. *Bell System Technical Journal* **24**(1), 46--156. DOI: 10.1002/j.1538-7305.1945.tb00453.x.

9. Nilre, H., and Herlin, B. C. (2026). [Hidden States and Unassigned Work: Physical questions and signed work behind higher-order coefficients][companion]. Companion manuscript on GitHub.

[wettstein]: https://doi.org/10.1007/s42452-021-04149-8
[bible]: https://ww1.microchip.com/downloads/en/AppNotes/00826a.pdf
[coilcraft]: https://www.coilcraft.com/en-us/resources/application-notes/measuring-self-resonant-frequency/
[keysight]: https://www.keysight.com/us/en/assets/7018-06840/application-notes/5950-3000.pdf

[kalman]: https://doi.org/10.1137/0301010
[willems]: https://doi.org/10.1007/BF00276494
[foster]: https://doi.org/10.1002/j.1538-7305.1924.tb01358.x
[rice]: https://doi.org/10.1002/j.1538-7305.1945.tb00453.x

[companion]: https://github.com/hobnilre/physics-ode-3rd-deg-op
