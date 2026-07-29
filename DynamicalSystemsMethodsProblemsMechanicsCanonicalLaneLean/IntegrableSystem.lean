import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure IntegrableSystemPackage {P : PhaseSpacePackage} where
  firstIntegrals : Type u
  involution : Prop
  actionAngleVariables : Prop
  integrabilityCondition : Prop

structure IntegrableSystemEvidence {P : PhaseSpacePackage} (I : IntegrableSystemPackage P) where
  involutionClosed : I.involution
  actionAngleVariablesClosed : I.actionAngleVariables
  integrabilityConditionClosed : I.integrabilityCondition

def IntegrableSystemClosed {P : PhaseSpacePackage} (I : IntegrableSystemPackage P) : Prop :=
  I.involution ∧ I.actionAngleVariables ∧ I.integrabilityCondition

theorem integrable_system_closed_from_evidence {P : PhaseSpacePackage} (I : IntegrableSystemPackage P) (E : IntegrableSystemEvidence I) : IntegrableSystemClosed I := by
  exact And.intro E.involutionClosed (And.intro E.actionAngleVariablesClosed E.integrabilityConditionClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse