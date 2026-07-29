import DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure PhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : SmoothManifold carrier

structure DynSysAdmittedObject where
  space : PhaseSpace
  hamiltonianFlow : Flow space.carrier ℝ
  conservedQuantities : List (space.carrier → ℝ)
  integrability : Prop
  conclusion : integrability

structure PhaseSpaceEvidence (O : DynSysAdmittedObject) where
  hamiltonianFlowClosed : O.hamiltonianFlow.flowComplete
  conservedQuantitiesClosed : ∀ q ∈ O.conservedQuantities, Smooth q
  integrabilityClosed : O.integrability

def PhaseSpaceClosed (O : DynSysAdmittedObject) : Prop :=
  O.hamiltonianFlow.flowComplete ∧
  (∀ q ∈ O.conservedQuantities, Smooth (q : O.space.carrier → ℝ)) ∧
  O.integrability

theorem phase_space_closed_from_evidence (O : DynSysAdmittedObject) (E : PhaseSpaceEvidence O) :
    PhaseSpaceClosed O := by
  exact And.intro E.hamiltonianFlowClosed (And.intro E.conservedQuantitiesClosed E.integrabilityClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse