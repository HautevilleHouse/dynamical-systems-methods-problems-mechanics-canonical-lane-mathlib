import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.DynamicalSystemsObjects

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure BifurcationAnalysis {S : DynamicalSystem} where
  parameterSpace : Type u
  equilibriumFamily : parameterSpace → S.stateSpace
  stabilityChange : Prop
  bifurcationPoint : parameterSpace
  normalForm : Prop

structure BifurcationEvidence {S : DynamicalSystem} (B : BifurcationAnalysis S) where
  equilibriumFamilyClosed : B.equilibriumFamily = B.equilibriumFamily
  stabilityChangeClosed : B.stabilityChange
  bifurcationPointClosed : B.bifurcationPoint = B.bifurcationPoint
  normalFormClosed : B.normalForm

def BifurcationClosed {S : DynamicalSystem} (B : BifurcationAnalysis S) : Prop :=
  B.stabilityChange ∧ B.normalForm

theorem bifurcation_closed_from_evidence {S : DynamicalSystem} (B : BifurcationAnalysis S)
    (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.stabilityChangeClosed E.normalFormClosed

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse