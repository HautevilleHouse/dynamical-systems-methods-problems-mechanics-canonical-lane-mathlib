import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.DynamicalSystemsObjects

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse