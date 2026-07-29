import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure PerturbationAnalysisPackage (A : AdmissibleClass) where
  smallPerturbation : Prop
  linearization : Prop
  spectralGap : Prop
  stabilityMargin : Prop

structure PerturbationAnalysisEvidence {A : AdmissibleClass} (P : PerturbationAnalysisPackage A) where
  smallPerturbationClosed : P.smallPerturbation
  linearizationClosed : P.linearization
  spectralGapClosed : P.spectralGap
  stabilityMarginClosed : P.stabilityMargin

def PerturbationAnalysisClosed {A : AdmissibleClass} (P : PerturbationAnalysisPackage A) : Prop :=
  P.smallPerturbation ∧ P.linearization ∧ P.spectralGap ∧ P.stabilityMargin

theorem perturbation_analysis_closed_from_evidence
    {A : AdmissibleClass} (P : PerturbationAnalysisPackage A) (E : PerturbationAnalysisEvidence P) :
    PerturbationAnalysisClosed P := by
  exact And.intro E.smallPerturbationClosed
    (And.intro E.linearizationClosed
      (And.intro E.spectralGapClosed E.stabilityMarginClosed))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse