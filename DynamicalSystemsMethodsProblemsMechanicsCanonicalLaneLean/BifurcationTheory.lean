import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure BifurcationTheoryPackage (A : AdmissibleClass) where
  bifurcationPoint : Prop
  criticalityCondition : Prop
  branchSwitching : Prop
  normalForm : Prop

structure BifurcationTheoryEvidence {A : AdmissibleClass} (B : BifurcationTheoryPackage A) where
  bifurcationPointClosed : B.bifurcationPoint
  criticalityConditionClosed : B.criticalityCondition
  branchSwitchingClosed : B.branchSwitching
  normalFormClosed : B.normalForm

def BifurcationTheoryClosed {A : AdmissibleClass} (B : BifurcationTheoryPackage A) : Prop :=
  B.bifurcationPoint ∧ B.criticalityCondition ∧ B.branchSwitching ∧ B.normalForm

theorem bifurcation_theory_closed_from_evidence
    {A : AdmissibleClass} (B : BifurcationTheoryPackage A) (E : BifurcationTheoryEvidence B) :
    BifurcationTheoryClosed B := by
  exact And.intro E.bifurcationPointClosed
    (And.intro E.criticalityConditionClosed
      (And.intro E.branchSwitchingClosed E.normalFormClosed))

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse