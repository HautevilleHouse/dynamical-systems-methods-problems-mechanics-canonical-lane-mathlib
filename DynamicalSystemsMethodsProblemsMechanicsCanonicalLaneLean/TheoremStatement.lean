import DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String := "dynamical-systems-methods-problems-mechanics-canonical-lane"

def sourceDescription : String := "Dynamical Systems Methods Problems Mechanics"

def sourceTheoremBoundary : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical boundary carried",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through admissible class",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalization certificate"
}

end DynamicalSystemsMethodsProblemsMechanicsCanonicalLaneLean
end HautevilleHouse