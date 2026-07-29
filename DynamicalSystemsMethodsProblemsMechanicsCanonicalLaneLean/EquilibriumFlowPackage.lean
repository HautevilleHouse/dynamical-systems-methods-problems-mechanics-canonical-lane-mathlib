import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure EquilibriumFlowPackage where
  potentialFunction : Type u
  hamiltonianStructure : Type v
  equilibriumSet : Prop
  gradientFlowDefined : Prop
  convergenceRate : Prop

structure EquilibriumFlowEvidence (E : EquilibriumFlowPackage) where
  equilibriumSetClosed : E.equilibriumSet
  gradientFlowDefinedClosed : E.gradientFlowDefined
  convergenceRateClosed : E.convergenceRate

def EquilibriumFlowClosed (E : EquilibriumFlowPackage) : Prop :=
  E.equilibriumSet ∧ E.gradientFlowDefined ∧ E.convergenceRate

theorem equilibrium_flow_closed_from_evidence (E : EquilibriumFlowPackage)
    (Ev : EquilibriumFlowEvidence E) : EquilibriumFlowClosed E := by
  exact And.intro Ev.equilibriumSetClosed
    (And.intro Ev.gradientFlowDefinedClosed Ev.convergenceRateClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse