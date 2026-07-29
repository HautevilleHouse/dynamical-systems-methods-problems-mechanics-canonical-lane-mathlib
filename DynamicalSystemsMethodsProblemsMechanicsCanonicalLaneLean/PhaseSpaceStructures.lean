import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.DynamicalSystemsObjects

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure PhaseSpaceStructure {S : DynamicalSystem} where
  symplecticForm : Prop
  poissonBracket : Prop
  hamiltonianVectorField : Prop
  conservedQuantities : Prop
  integrabilityCondition : Prop

structure PhaseSpaceEvidence {S : DynamicalSystem} (P : PhaseSpaceStructure S) where
  symplecticFormClosed : P.symplecticForm
  poissonBracketClosed : P.poissonBracket
  hamiltonianVectorFieldClosed : P.hamiltonianVectorField
  conservedQuantitiesClosed : P.conservedQuantities
  integrabilityConditionClosed : P.integrabilityCondition

def PhaseSpaceClosed {S : DynamicalSystem} (P : PhaseSpaceStructure S) : Prop :=
  P.symplecticForm ∧ P.poissonBracket ∧ P.hamiltonianVectorField ∧
  P.conservedQuantities ∧ P.integrabilityCondition

theorem phase_space_closed_from_evidence {S : DynamicalSystem} (P : PhaseSpaceStructure S)
    (E : PhaseSpaceEvidence P) : PhaseSpaceClosed P := by
  exact And.intro E.symplecticFormClosed
    (And.intro E.poissonBracketClosed
      (And.intro E.hamiltonianVectorFieldClosed
        (And.intro E.conservedQuantitiesClosed E.integrabilityConditionClosed)))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse