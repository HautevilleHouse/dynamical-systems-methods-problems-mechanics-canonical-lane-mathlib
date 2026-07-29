import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure NormalFormPackage {P : PhaseSpacePackage} where
  resonanceCondition : Prop
  normalFormTransformation : Prop
  stabilityOfMotion : Prop
  orderOfApproximation : Nat

structure NormalFormEvidence {P : PhaseSpacePackage} (N : NormalFormPackage P) where
  resonanceConditionClosed : N.resonanceCondition
  normalFormTransformationClosed : N.normalFormTransformation
  stabilityOfMotionClosed : N.stabilityOfMotion

def NormalFormClosed {P : PhaseSpacePackage} (N : NormalFormPackage P) : Prop :=
  N.resonanceCondition ∧ N.normalFormTransformation ∧ N.stabilityOfMotion

theorem normal_form_closed_from_evidence {P : PhaseSpacePackage} (N : NormalFormPackage P) (E : NormalFormEvidence N) : NormalFormClosed N := by
  exact And.intro E.resonanceConditionClosed (And.intro E.normalFormTransformationClosed E.stabilityOfMotionClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse