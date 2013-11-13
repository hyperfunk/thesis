# Samuel Rogerson: Thesis corrections

### Long 1: Add short discussion on MC

    $N_{DY}$, $N_{\textrm{top}}$ and $N_{\textrm{di-boson}}$ respectively. These are
    produced in the following way.  The \Wjets and \Znunujets are simulated using
    \MADGRAPH\cite{madgraph} event generator.  The \ttbarjets and single-top events
    are generated using \POWHEG\cite{powheg}.  The di-boson events are produced with
    \PYTHIA\cite{pythia}.  All parton showering and hadronisation processes are
    simulated using \PYTHIA, and the detector simulation is handled by the
    \GEANT\cite{geant} tool.  Each set of calculations is normalized the most
    accurate available cross-section calculations, usually at \ac{NLO} accuracy.


### Long 2: Define how ET is calculated in the candidates analysis
### Long 4: Define how MET is calculated
### Allanach 1:  Precisely define ET and ETmiss
 
    For the purpose of the analysis presented here the transverse energy, \ET, is
    defined as the scalar sum of the transverse projections of the calorimetry
    energy deposits. \MET is the vector which balances the vectorial sum of these
    transverse projections.
    
    sum of the magnitude of the calorimetry read outs projected in
    the transverse plane, and the \MET is defined as the vector which balances the
    vectorial sum of the \ET values.
    
 

### Allanach 2: Incorrect parentheses

        M_{T}^{2} = \parenths{\sum{\ET^{j_{i}}}}^{2}
            - \parenths{\sum{P_{x}^{j_{i}}}}^{2} 
            - \parenths{\sum{P_{y}^{j_{i}}}}^{2} 
 
### Long 3: Define efficiency (purity not mentioned in analysis)

### Allanach 3: Define efficiency and acceptance (contd. later)
 
    The efficiency of a trigger is defined with respect to some inclusive sample.
    It is the fraction of the number of events remaining in the signal region after
    the trigger is applied.
    

    The acceptance for an identified object is defined as the set of kinematic
    requirements for the object to be included in the signal or control region
    
### Long 5: PT 1. Define POIS

### Allanach 7: Define POIS and Gaus
 
    where $\textrm{Pois}\parenths{n|\lambda}$ denotes the Poisson distribution
    function $f\parenths{n|\lambda} = \frac{\lambda^{n}e^{-\lambda}}{k!}$.
    
 
    where $\textrm{Gauss}\parenths{x | \mu, \sigma}$ is the Gaussian distribution function
    $f\parenths{x|\mu, \sigma} =
    \frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{\parenths{x-\mu}^{2}}{2*\sigma^{2}}}$ and
    $\sigma_{X}$ are the uncertainties on their respective $\rho_{X}$ terms.



### Long 5: PT 2. Add citation justify modelling of MC (see also Long 1)
 
    the signal sample denoted $MC_{\Zinv}$ and $MC_{\ttW}$.  The \ac{MC} simulations
    used on \ac{CMS} analyses have been validated extensively \cite{mcvalidation}.

### Long 6: Define Isolation

### Allanach 9: Define isolation

    jets ($b$-quark and $\tau$ jets in particular) as well as hard
    isolated\footnote{An object is isolated when the energy associated with the
    object is above a object type-dependant fraction of the total energy within a cone
    surrounding the object.} photons
    for instance, from \ac{GMSB} like models of \ac{SUSY}).

 
### Long 7: Clarify reason for slackening of x-sec limit for low mParent, mLSP
 
    $\pm 1 \sigma$ experimental uncertainty regions respectively. 
    
    The general trend of the worsening limit on the cross-section as the mass of the
    parent particle decreases for fixed \ac{LSP} mass is due to decreasing expected
    \MET in the events.  As the difference between the daughter and parent particle
    masses is reduced one expects the resulting sparticles that escape the detector
    to be less boosted and hence produce a smaller \MET signature, thereby reducing
    the limit that can be put on the cross-section for processes in this region of
    parameter space.

### Long 8: revise wording of P(A) in frequentist approach

Uncertain that a rewording would be more clear or accurate.  Equation 5.2 and
the subsequent explanation defines frequentist probability.
 
### Long 9: Define DeltaAlpha and motivate choise of nuisance parameters

    $\Delta\alpha_{\textrm{had}}$ is the hadronic contribution to the shift in
    the electromagnetic fine structure constant, evaluated at scale
    $Q^{2}=M_{Z}^{2}$, and $m_{t}$ and $m_{Z}$ are the mass of the top quark and
    Z-boson respectively.  Originally these three parameters were chosen as they
    encapsulate the vast majority of the sensitivty of the observable in the
    early analyses as well as being well controlled experimentally.  Now that
    the analysis is more mature and more observables are included it will become
    necessary to re-examine and extend this set of parameters, including e.g.
    $\alpha_{S}$ the strong coupling constant to which for instance the
    B-physics observables would be sensitive.  However at this time, a full
    resampling with a new nuisance parameter was computationally prohibitive.

### Long 10: Summarise the role of Minuit in the procedure following MCMC sampling

    minimization of the $\chi^{2}$ with respect to the constraints. The point with
    the lowest \chisq in the \ac{MCMC} sampling is used as the \emph{seed} point for
    the minimizer, and the program is run iteratively, with each point examined by
    the minimizer being added to the total sampling.  Once the minimizer has
    completed, the parameter values are used to calculate a full \chisq breakdown of
    the best fit point.
    
    It should be noted that the \ac{LHC}-era \chisq contributions are not
    implemented when running the minimization routine, and as such only the
    pre-\ac{LHC} minima have been calculated through use of minimization.  For the
    post-\ac{LHC} the minimum is defined to be the \ac{MCMC} sampling point with
    lowest \chisq.  This is due to the tools used to assess the contribution of the
    \ac{LHC}-era constraints not having an interface with any of the available
    minimization routines.


### Long 11:  Revise explanation of the non-asymptotic likelihood functions and the caption of table 5.2

            limits are indicated by [...]. All constraints excluding the bottom three marked
            with ``plane'' in the final column are implemented as described in
            \EquationRef{eq:simplelikelihood}  {\it note: \R{x} is used to
     denote $x^{\rm EXP}/x^{\rm SM}$}\label{tab:observables}}

### Long 12: Distinguish X^2 from Likelihood rigorously

Changes carried out

### Long 13: Revise description of X^2(SUSY Search limits) to explain precisely what was done

    Each of these is treated as a one-sided Gaussian lower limit with
    $\sigma=1\GeV$.  That is, for each point, if the relevant particle falls below
    this lower limit it takes a contribution
    
    \begin{equation}
        \chisq = \mathcal{G}\parenths{m|\textrm{limit},1.0\GeV}
    \end{equation}
    

### Long 14: Revise discussion of squark / gluino mass M input to L
 
    where $\mathcal{M}$ denotes a radial parameter formed of the squark and gluino
    masses e.g. $\mathcal{M}^{2} \sim \mZero^{2} + \mHalf^{2}$.  This implies for
    radial lines in the \mZeromHalf plane the effective event rate scales as
    $\mathcal{M}^{-4}$.  

### Long 15: Add discussion of where equation 5.24 (now 5.25) is a good approximation

    have approximately the same production cross-section and decay widths). On top
    of this it should be noted that the region in which this approximation begins to
    break down, at higher value of \m{\PHiggsps} and \tanbeta, is out of the range
    of the impact of the search considered here\cite{mc7} hence this approximation
    is valid and verified for all regions important to the analysis presented here.
 
###  Long 16: Add discussion of best fit points and their limitations (recent focus point work still not published)

    $P=0.08$.  It should also be noted that as discussed in \SectionRef{sec:pvals}
    the specific value of $P$ should not given undue weighting, only comparative
    values of $P$ in the same analysis where the same set of constraints have been
    used between models should be considered. As mentioned it is possible to
    drastically alter the value of $P$ by adding arbitrary constraints that the
    model may have zero sensitivity to. However by adding these constraints into
    consideration the value of $n_{\textrm{dof}}$ is increased with no corresponding
    change to \chisq thereby forcing $P$ to decrease.

### Allanach 4: Shouldn't the figure say more QCD like? (Fig 4.2 pg 74)

This is a "CMS blessed" plot from an approved analysis note(citation 109).
Unable to change blessed plots in public documents.

### Allanach 5: Misplaced parenthesis in eq 4.11 pg 76

Fixed

### Allanach 6: Typo pg 79

Fixed
 

### Allanach 8: Caption too low on Fig 5.8

        \begin{subfigure}[]{0.50\textwidth}

### Allanach 10: Phase space to parameter space, and correction on MA vs MH pg 130

Fixed, now pg 131

### Allanach 11: PT 1. Misplaced 1

    though in the \ac{NUHM}1 for $\mNeu\sim1000\GeV$ there is an upper region

### Allanach 11: PT 2. State what happens to the h-pole region after LHC higgs constraints

    It should also be noted that this light higgs funnel region continues to
    exist up to high values of \mZero where the conditions for \ac{EWSB} break down.
    Noting that $\mh\simeq 121\GeV$ in the funnel, this region is not strongly
    disfavored by the \ac{LHC} light higgs constraints, as such one expects this
    funnel to continue to be present in future analyses.

### Allanach 12: "teh" p140 3rd para

Fixed, now pg 141

### Allanach 13: Add caveat about apparent bimodality being related to sampling
 
    likelihood.  It should be noted that with sufficient further sampling the
    obvious delineation of the two modes would likely disappear due to the
    flattening of the global \chisq function.  Given that the \ac{NUHM}1 provides a
    region at low \mZero not accessible in the \ac{cMSSM},  where multiple processes
    combine to satisfy the relic abundance constraint, it would be prudent, though
    computationally complex, to investigate the \ac{NUHM}2.  Here the decoupling of
    \mHud allows for even greater control over the neutralino masses (allowing us to
    exchange the bino-like neutralino \ac{LSP} for a higgsino-like neutralino
    \ac{LSP}) and hence is likely to open up a much richer variation of
    phenomenology that remaining consistent with other constraints.

### Allanach 14: typo pg 22 "relatioship"

Fixed

### Allanach 15: Explain what theta is in eq 2.55 on page 30

Theta defined as angle between incident and scattered W+ particles (as in
citation)
