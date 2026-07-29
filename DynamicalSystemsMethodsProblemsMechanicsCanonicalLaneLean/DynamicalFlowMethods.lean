import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure DynamicalFlowPackage where
  phaseSpace : Type u
  vectorField : Type v
  flowMap : Type w
  invariantMeasure : Type x
  hamiltonianFunction : Type y
  symplecticStructure : Prop
  integrabilityCondition : Prop
  hamiltonianFunctionTerm : hamiltonianFunction
  symplecticStructureTerm : symplecticStructure
  integrabilityConditionTerm : integrabilityCondition

structure DynamicalFlowEvidence (F : DynamicalFlowPackage) where
  hamiltonianFunctionClosed : F.hamiltonianFunction
  symplecticStructureClosed : F.symplecticStructure
  integrabilityConditionClosed : F.integrabilityCondition

def DynamicalFlowClosed (F : DynamicalFlowPackage) : Prop :=
  F.hamiltonianFunction ∧ F.symplecticStructure ∧ F.integrabilityCondition

theorem dynamical_flow_closed_from_evidence (F : DynamicalFlowPackage) (E : DynamicalFlowEvidence F) :
    DynamicalFlowClosed F := by
  exact And.intro E.hamiltonianFunctionClosed (And.intro E.symplecticStructureClosed E.integrabilityConditionClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
