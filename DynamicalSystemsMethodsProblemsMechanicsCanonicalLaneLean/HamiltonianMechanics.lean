import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure HamiltonianMechanicsPackage (A : AdmissibleClass) where
  phaseSpace : Type
  symplecticForm : Prop
  hamiltonianFunction : Prop
  flowConservation : Prop

structure HamiltonianMechanicsEvidence {A : AdmissibleClass} (H : HamiltonianMechanicsPackage A) where
  symplecticFormClosed : H.symplecticForm
  hamiltonianFunctionClosed : H.hamiltonianFunction
  flowConservationClosed : H.flowConservation

def HamiltonianMechanicsClosed {A : AdmissibleClass} (H : HamiltonianMechanicsPackage A) : Prop :=
  H.symplecticForm ∧ H.hamiltonianFunction ∧ H.flowConservation

theorem hamiltonian_mechanics_closed_from_evidence
    {A : AdmissibleClass} (H : HamiltonianMechanicsPackage A) (E : HamiltonianMechanicsEvidence H) :
    HamiltonianMechanicsClosed H := by
  exact And.intro E.symplecticFormClosed
    (And.intro E.hamiltonianFunctionClosed E.flowConservationClosed)

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse