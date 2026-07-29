import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  timeDomain : Type v
  flow : timeDomain → stateSpace → stateSpace
  flowGroup : Prop
  flowContinuous : Prop
  flowSmooth : Prop

structure AdmissibleDynamicalObject where
  system : DynamicalSystem
  invariantMeasure : Prop
  ergodicComponent : Prop
  conclusion : invariantMeasure ∧ ergodicComponent

structure DynamicalEndgameState where
  object : AdmissibleDynamicalObject

def DynamicalWitnessClosed (O : AdmissibleDynamicalObject) : Prop :=
  O.conclusion

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse