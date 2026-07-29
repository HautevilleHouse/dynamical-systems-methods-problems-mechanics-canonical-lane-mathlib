import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure PhaseSpacePackage where
  stateSpace : Type u
  symplecticForm : Type v
  smoothStructure : Prop
  integrableSystem : Prop
  hamiltonianFunction : Prop

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  smoothStructureClosed : P.smoothStructure
  integrableSystemClosed : P.integrableSystem
  hamiltonianFunctionClosed : P.hamiltonianFunction

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.smoothStructure ∧ P.integrableSystem ∧ P.hamiltonianFunction

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) : PhaseSpaceClosed P := by
  exact And.intro E.smoothStructureClosed (And.intro E.integrableSystemClosed E.hamiltonianFunctionClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse