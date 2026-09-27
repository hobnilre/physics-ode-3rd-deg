# Review 5 resolution and preservation audit

Revision date: 2026-09-27. Scope: implement REVIEW_5.md with coefficient synthesis as the primary objective, generate the revised PDF, and leave the changes unstaged and uncommitted. The review files remain ignored and unchanged.

## Finding-by-finding disposition

| Finding | Concrete revision and acceptance evidence |
|:---|:---|
| R5-1: opening promise | Subtitle, abstract, introduction, conclusion and README now lead with coefficient synthesis, the information it requires and its domain. The introduction follows dimensional construction, exact support, arbitrary-order extension and identification before physical interpretation. Existing signed residuals and unresolved questions remain explicit supporting results. |
| R5-2: synthesis inputs and outputs | sec:synthesis-specification gives the input specification table, eq:coefficient-function, finite-support restriction, normalization and forcing requirements, zero-reference/leading-zero limits and distinct equation classes. Source placement is derived in sec:source-placement rather than treating effective forcing as a physical port by assumption. |
| R5-3: continuous collision construction | The full exact coefficient-support subsection and dimensional comparison now appear together in sec:collision-support, immediately after the physical elimination. The seven/nine-atom identities, candidate alternatives, normalized state matrix and parameter reconstruction are retained. The new domain table compares full and restricted parameter domains and transports both P and N under each normalization. The omitted damping-product term is identified by its actual (k,r,s)=(2,0,1) support. |
| R5-4: arbitrary higher-order construction | sec:construction moves the unchanged polarization state equations and eliminated operator forward. eq:branch-synthesis and eq:branch-coefficients prove branch addition at arbitrary finite N; eq:branch-one and eq:branch-cubic give exact concrete constructions. eq:branch-coordinates through eq:branch-support give a complete independent-ratio chart and map the recurrence into shifted current-convention atoms. eq:series-synthesis proves a different rational-series recurrence, with its analytic domain and fixed-state interpretation. |
| R5-5: identifiable and predictive synthesis | sec:synthesis-evidence defines the exact span claim, proves lem:support-independence, gives restricted-domain counterexamples, and separates representation, recovery, prediction and realization. The existing prediction-set separation inequality is moved intact here. OP-LR31-01 now specifies that independent variation removes a particular null but still requires full-support observation rank and uncertainty. OP-LR12-01 and all other measurement proposals remain. |
| R5-6: equation and realization class | sec:synthesis-specification states the formal/eliminated/constitutive/finite-representation alternatives and the direct-polynomial port obstruction, with its existing complete proof retained in sec:rf. The branch construction retains its forcing operator and diode domain. Existing initial-state, passivity, distributed, fractional and delay cases remain unchanged apart from new orienting prose. |
| R5-7: role of supporting subjects | Main sections now run from the reference family to the collision, arbitrary-order construction and identification, then initial data and applications. The full signed-work section follows the physical applications. Each major supporting section has a specific synthesis-role paragraph. The state/transfer-order table moves intact to initial data. All long existing applications, appendices, signed results and hard open questions remain. |

## Moved material and precise destinations

| Earlier location | Current destination | Preservation |
|:---|:---|:---|
| Introduction's state-dimension/transfer-degree table | sec:initial, before the four admissibility levels | All rows and qualifications retained verbatim. |
| Introduction's prediction-set separation construction | sec:synthesis-evidence | Definition, inequality, proof, nuisance sets and deterministic/probabilistic qualification retained verbatim. |
| Dimensional collision example at the end of generic-order discussion | sec:collision-support | Values, polynomial, reduced inertia, initial-energy examples, normalization and weights retained. Added explicit forcing transport. |
| Exact collision support formerly under identification | sec:collision-support | All coefficient formulas, nine-atom table, seven weights, support alternatives, normalized matrix and reconstruction retained. The ambiguous ordinal phrase about the ninth atom is replaced by its exact support tuple. |
| Battery state equations, domain restrictions and eliminated operator | sec:construction | Original state and polynomial displays, orientation, diode conditions, arbitrary preparation and derivative-convention qualification retained. sec:battery starts with explicit references and retains all event, coincidence, work and preparation cases. |
| Signed physical work and equation-term identities | sec:work, following larger-network applications | Complete section retained, including release proposals and marker, formal boundary form, positive physical jet store, passivity and stability conditions. Added an orienting paragraph. |
| Introduction and conclusion summaries | sec:scope and sec:conclusion | Rewritten around synthesis. Their distinctive physical claims remain both in the new summaries and in the retained local derivations. No release destination or supply interpretation is newly claimed. |

## Source coverage and the changed foundation

The existing item-level source coverage and earlier mathematical corrections remain the baseline. This revision checks preservation against that baseline and the current source destinations; it is not represented as a fresh full reading of every previously integrated chapter. The second-order foundation and shared power contract were reread, together with the coefficient-family and mixture/selection material relevant to the revision. Current open-problem identifiers were checked directly against their source entries.

A scan of all mapped chapter lengths found that the current second-order foundation extends beyond its previous line map. Its added source-placement discussion was read and integrated into sec:source-placement. The current end-to-end analogy passage is at lines 341–378; its earlier coverage reference to 137–174 was stale. The new coverage entries separate:

- ideal battery/force sources and their four distinct placements;
- series voltage forcing and its mechanically parallel counterpart;
- parallel voltage and mechanically series force constraints, including total source flow;
- gravity in a fixed-reference or relative coordinate and the free-fall null;
- inductor-branch voltage offsets and the derived forcing operator;
- independently integrated source/heat works, offset endpoint states, preparation and switching restrictions.

The article adds the exact variable-source derivative term to the constant-source case by direct substitution. This is a constructive forcing-operator result supporting coefficient synthesis, not an inferred new physical source.

The other mapped chapter lengths remain within their recorded coverage ranges. The additional current-volume scan found only already recorded context/navigation material; the Volume I README supplies navigation and reiterates existing synthesis and audit requirements. The six detailed compound/reference source files recorded in notes/review-3-resolution.md retain exactly the same SHA-256 hashes, so that previous item-specific audit remains applicable. Numerical source output and software procedures were not imported or rerun.

All source chapter destinations are checked against the revised manuscript labels. The complete equation and table treatments in the mandatory chapters and additional mapped passages are preserved through their existing destinations, with the moves above made explicit. The general completeness obligation remains: a source question is retained even when it is not a practical measurement proposal.

## Independent exact checks in this revision

The scratch calculations were evaluated inline and are not retained as scripts. No numerical ODE integration or parameter experiment was performed.

| Construction | Check and scope |
|:---|:---|
| Monomial family | Reconfirmed the dimensional constraints and the identity between a,b,c exponents and S,tau,rho normalization. Current coefficients use the index k+1 with resistance-times-time-to-k dimensions. |
| Collision representations | Expanded the complete four-coordinate representation and both restricted-support representations against their physical polynomial and declared normalization. All coefficient differences are identically zero. The source operator is multiplied by the same factor. |
| Branch recurrence | Algebraically split the added branch from the exact N-branch sum, proving the recurrence for arbitrary finite N. Symbolic expansions through four branches verify the formula and leading coefficient independently. |
| Cubic current coefficients | Expanded the two-branch operator and checked each of the four displayed coefficients, including the cross terms R_1 tau_2 and R_2 tau_1. |
| Normalized branch chart | Checked reconstruction of physical parameters and alpha_j=mu_j chi_j rho. Verified the normalized recurrence and cubic monomial support through four symbolic branches. The N>=1, R_Sigma>0 chart and its failure at R_Sigma=0 are explicit. |
| General rational-series recurrence | Coefficient comparison in V(s)H(s)=U(s) proves the recurrence for any finite denominator with nonzero constant term. Analytic and initialization restrictions remain stated. The retained inductor recurrence is its exact two-state instance. |
| Support uniqueness | Multiplication by a common monomial reduces the finite Laurent identity to a polynomial vanishing on an open set. Coordinate-wise polynomial independence proves uniqueness. The constrained-path counterexample and finite-observation rank restrictions prevent overextension. |
| Source placement | Substitution of V=lambda_dot-V_g gives the full parallel-circuit forcing, including C V_g_dot. Independent differentiation of the capacitor/inductor store gives V_g lambda/L-V^2/R. Source and heat works are then integrated separately. Mechanical offset stores follow the declared variable and parameter map. |

All previous illustrative values are unchanged. New coefficient constructions use symbolic positive parameters. The branch recurrence gives an unreduced operator; its degree is not silently equated with every initialized or reduced observable order. The physical accounts retain their declared boundaries and uncertainty scope, and do not select weights or order.

## Preservation checks

Comparison with the saved pre-revision manuscript confirms that every original numbered equation and align environment is retained without a mathematical change, and the original passivity theorem is unchanged. All 237 original equation/section/figure labels remain. All twelve verified open-problem markers occur exactly once. The bibliography and its existing literature claims are unchanged.

The paragraphs changed beyond relocation are confined to the framing, synthesis-role transitions, explicit coefficient normalization, identification qualification and conclusions. Their former distinctive results have destinations in the retained local treatments. In particular, the +15/2 J listed-port residual, negative release residual, closed RC discharge, seven-state bias supply, 28-state finite reference controller, prepared-store counterexamples and nonlinear/event limits remain present.

The new build and actual visual-inspection outcome are recorded in the current Review 5 section of notes/verification.md. Source files remain read-only. No staging or commit is part of this revision.
