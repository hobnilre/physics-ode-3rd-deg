# Third- and Higher-Order ODEs

Coefficient families, physical realizations, identification, and initial data.

## What this article adds, and why it matters

The strongest contribution is a systematic framework and a set of exact counterexamples for interpreting third- and higher-order ODEs. State elimination, observability, stability tests and passive circuit synthesis are established tools. The manuscript does not establish historical priority; its strongest candidates for original contributions are the specific constructions below.

- **A unified coefficient and initial-data framework.** The article organizes every dimensionally admissible monomial built from the second-order reference coefficients, derives its reference and duality transformations, and gives conditions for finite families of initial derivatives to remain compatible with the ODE. This makes model assumptions explicit: dimensional correctness and a simple coefficient formula cannot determine physical dynamics or admissible preparation.

- **Exact corrections to collision models.** With contact properties and inertias fixed while joint stiffness and damping vary, the derived coefficient representation contains nine monomial contributions; an eight-term version omits a real damping-product term. The article also finds the exact parameter condition under which a fourth mechanical mode disappears from hammer measurements despite positive components. These results explain why a good trajectory fit can conceal incorrect coefficients or hidden motion.

- **Concrete limits on what terminal measurements reveal.** Explicit passive circuits have identical terminal behavior but arbitrarily different internal voltage or current scales under ideal transformer scaling. Another construction contains six reactive components yet has a purely resistive terminal law. These examples show why a fitted ODE cannot, by itself, establish internal stresses, storage or physical component count.

- **Exact examples of order changing with preparation and limiting path.** A coupled-winding clamp changes from a third-order system to a two-state system after opening. A vanishing-mass absorber can retain a finite resonant effect when damping vanishes with it. These results identify when deleting a seemingly small component or carrying old initial derivatives into a reduced model fails.

- **Explicit accounting for contact release and switching.** Force-zero contact release can leave positive spring energy, while different switching sequences can reach the same final state with different component losses. This exposes information that a scalar ODE or endpoint comparison cannot supply and helps distinguish incomplete modeling from a claimed energy anomaly.

These are mathematical results for declared models. The article proposes discriminating measurements but reports no experimental validation.

## Article and build

[Read the article (PDF)](third-and-higher-order-odes.pdf) · [Manuscript source](third-and-higher-order-odes.md)

The standalone article develops exact coefficient and state-elimination results, physical work audits, initialization and preparation, and the limits of finite ODE descriptions. Computational source material is replaced by symbolic derivations and explicit conditional conclusions. It reports no simulations or measured data.

Build with make pdf. This requires Pandoc, XeLaTeX, the TeX Gyre fonts, TikZ/PGFPlots, and the LaTeX packages used in preamble.tex. The make figures target rebuilds the standalone diagrams; make clean removes only ignored build intermediates and inspection images.

Working records are in [coverage](notes/coverage.md), [conventions](notes/conventions.md), [open-problem coverage](notes/open-problem-inventory.md), and [verification](notes/verification.md). Source files outside this project were read only. No simulation code, numerical datasets, or scratch calculation programs are included.
