import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.PhaseSpaceStructures

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure KAMTheoryPackage {S : DynamicalSystem} {P : PhaseSpaceStructure S} where
  nondegeneracyCondition : Prop
  diophantineCondition : Prop
  perturbationSmallness : Prop
  invariantToriPersistence : Prop

structure KAMTheoryEvidence {S : DynamicalSystem} {P : PhaseSpaceStructure S}
    (K : KAMTheoryPackage P) where
  nondegeneracyConditionClosed : K.nondegeneracyCondition
  diophantineConditionClosed : K.diophantineCondition
  perturbationSmallnessClosed : K.perturbationSmallness
  invariantToriPersistenceClosed : K.invariantToriPersistence

def KAMTheoryClosed {S : DynamicalSystem} {P : PhaseSpaceStructure S}
    (K : KAMTheoryPackage P) : Prop :=
  K.nondegeneracyCondition ∧ K.diophantineCondition ∧
  K.perturbationSmallness ∧ K.invariantToriPersistence

theorem kam_theory_closed_from_evidence {S : DynamicalSystem} {P : PhaseSpaceStructure S}
    (K : KAMTheoryPackage P) (E : KAMTheoryEvidence K) : KAMTheoryClosed K := by
  exact And.intro E.nondegeneracyConditionClosed
    (And.intro E.diophantineConditionClosed
      (And.intro E.perturbationSmallnessClosed E.invariantToriPersistenceClosed))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse