import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure BifurcationAnalysisPackage where
  parameterSpace : Type u
  fixedPointFamily : Type v
  bifurcationConditions : Prop
  stabilityChangeDetected : Prop
  normalFormDerived : Prop

structure BifurcationAnalysisEvidence (B : BifurcationAnalysisPackage) where
  bifurcationConditionsClosed : B.bifurcationConditions
  stabilityChangeDetectedClosed : B.stabilityChangeDetected
  normalFormDerivedClosed : B.normalFormDerived

def BifurcationAnalysisClosed (B : BifurcationAnalysisPackage) : Prop :=
  B.bifurcationConditions ∧ B.stabilityChangeDetected ∧ B.normalFormDerived

theorem bifurcation_analysis_closed_from_evidence (B : BifurcationAnalysisPackage)
    (Ev : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro Ev.bifurcationConditionsClosed
    (And.intro Ev.stabilityChangeDetectedClosed Ev.normalFormDerivedClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse