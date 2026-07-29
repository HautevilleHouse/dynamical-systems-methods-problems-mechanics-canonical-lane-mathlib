import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure DynamicalAdmittedObject where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  symplecticStructure : Prop
  integrable : Prop
  conclusion : symplecticStructure ∧ integrable

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.symplecticStructure ∧ O.integrable

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse