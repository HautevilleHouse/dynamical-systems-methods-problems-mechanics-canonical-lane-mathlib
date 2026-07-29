import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure KAMPackage {P : PhaseSpacePackage} where
  diophantineCondition : Prop
  perturbationSmall : Prop
  invariantTori : Prop
  convergenceProof : Prop

structure KAMEvidence {P : PhaseSpacePackage} (K : KAMPackage P) where
  diophantineConditionClosed : K.diophantineCondition
  perturbationSmallClosed : K.perturbationSmall
  invariantToriClosed : K.invariantTori
  convergenceProofClosed : K.convergenceProof

def KAMClosed {P : PhaseSpacePackage} (K : KAMPackage P) : Prop :=
  K.diophantineCondition ∧ K.perturbationSmall ∧ K.invariantTori ∧ K.convergenceProof

theorem kam_closed_from_evidence {P : PhaseSpacePackage} (K : KAMPackage P) (E : KAMEvidence K) : KAMClosed K := by
  exact And.intro E.diophantineConditionClosed (And.intro E.perturbationSmallClosed (And.intro E.invariantToriClosed E.convergenceProofClosed))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse