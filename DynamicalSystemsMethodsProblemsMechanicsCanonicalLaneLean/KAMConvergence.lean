import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.DynamicalFlowMethods

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure KAMPerturbationPackage {F : DynamicalFlowPackage} (F' : DynamicalFlowPackage) where
  integrabilityPreserved : Prop
  perturbationSmall : Prop
  nonresonanceCondition : Prop
  invariantToriPersistence : Prop
  integrabilityPreservedTerm : integrabilityPreserved
  perturbationSmallTerm : perturbationSmall
  nonresonanceConditionTerm : nonresonanceCondition
  invariantToriPersistenceTerm : invariantToriPersistence

structure KAMEvidence {F : DynamicalFlowPackage} {F' : DynamicalFlowPackage} (K : KAMPerturbationPackage F F') where
  integrabilityPreservedClosed : K.integrabilityPreserved
  perturbationSmallClosed : K.perturbationSmall
  nonresonanceConditionClosed : K.nonresonanceCondition
  invariantToriPersistenceClosed : K.invariantToriPersistence

def KAMConvergenceClosed {F : DynamicalFlowPackage} {F' : DynamicalFlowPackage} (K : KAMPerturbationPackage F F') : Prop :=
  K.integrabilityPreserved ∧ K.perturbationSmall ∧ K.nonresonanceCondition ∧ K.invariantToriPersistence

theorem kam_convergence_closed_from_evidence {F : DynamicalFlowPackage} {F' : DynamicalFlowPackage}
    (K : KAMPerturbationPackage F F') (E : KAMEvidence K) : KAMConvergenceClosed K := by
  exact And.intro E.integrabilityPreservedClosed (And.intro E.perturbationSmallClosed (And.intro E.nonresonanceConditionClosed E.invariantToriPersistenceClosed))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
