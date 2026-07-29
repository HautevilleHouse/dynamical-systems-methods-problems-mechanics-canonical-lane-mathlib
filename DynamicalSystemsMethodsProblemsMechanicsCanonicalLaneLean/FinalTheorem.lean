import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.DynamicalFlowMethods
import HautevilleHouse.DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.KAMConvergence
import HautevilleHouse.DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.MechanicalBirkhoff

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicalFlowClosed A.object ∧ KAMConvergenceClosed A.object ∧ BirkhoffNormalFormClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedDynamicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have hFlow : DynamicalFlowClosed A.object := by
    have : ∃ (E : DynamicalFlowEvidence A.object), True := by
      simp
    sorry
  sorry

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_dynamical_endgame (A : AdmissibleClass) :
    ConstrainedDynamicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
