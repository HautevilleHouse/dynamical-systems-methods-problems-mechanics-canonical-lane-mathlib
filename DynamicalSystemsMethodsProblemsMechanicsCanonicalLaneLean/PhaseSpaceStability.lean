import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure PhaseSpaceStabilityPackage (A : AdmissibleClass) where
  invariantManifold : Prop
  lyapunovFunction : Prop
  stableEquilibrium : Prop
  convergenceRegion : Prop

structure PhaseSpaceStabilityEvidence {A : AdmissibleClass} (P : PhaseSpaceStabilityPackage A) where
  invariantManifoldClosed : P.invariantManifold
  lyapunovFunctionClosed : P.lyapunovFunction
  stableEquilibriumClosed : P.stableEquilibrium
  convergenceRegionClosed : P.convergenceRegion

def PhaseSpaceStabilityClosed {A : AdmissibleClass} (P : PhaseSpaceStabilityPackage A) : Prop :=
  P.invariantManifold ∧ P.lyapunovFunction ∧ P.stableEquilibrium ∧ P.convergenceRegion

theorem phase_space_stability_closed_from_evidence
    {A : AdmissibleClass} (P : PhaseSpaceStabilityPackage A) (E : PhaseSpaceStabilityEvidence P) :
    PhaseSpaceStabilityClosed P := by
  exact And.intro E.invariantManifoldClosed
    (And.intro E.lyapunovFunctionClosed
      (And.intro E.stableEquilibriumClosed E.convergenceRegionClosed))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse