import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.DynamicalFlowMethods

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure BirkhoffNormalFormPackage {F : DynamicalFlowPackage} where
  formalSeries : Type u
  symplecticTransformation : Type v
  convergenceRadiusPositive : Prop
  formalSeriesTerm : formalSeries
  symplecticTransformationTerm : symplecticTransformation
  convergenceRadiusPositiveTerm : convergenceRadiusPositive

structure BirkhoffEvidence {F : DynamicalFlowPackage} (B : BirkhoffNormalFormPackage F) where
  convergenceRadiusPositiveClosed : B.convergenceRadiusPositive

def BirkhoffNormalFormClosed {F : DynamicalFlowPackage} (B : BirkhoffNormalFormPackage F) : Prop :=
  B.convergenceRadiusPositive

theorem birkhoff_normal_form_closed_from_evidence {F : DynamicalFlowPackage}
    (B : BirkhoffNormalFormPackage F) (E : BirkhoffEvidence B) : BirkhoffNormalFormClosed B := by
  exact E.convergenceRadiusPositiveClosed

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
