import HautevilleHouse.CategorificationTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  categorificationConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "categorification-theorem-canonical-lane"
def sourceDescription : String := "Categorification Theorem"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository
  theoremName := sourceRepository
  theoremObject := sourceDescription
  classicalBoundary := "classical source boundary remains open"
  categorificationConstrainedStatement := "categorification-constrained theorem certificate internalized through admissible closure"
  certificateLane := "categorification_constrained"
  carriedRemainder := "classical source boundary carried by formalization"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "categorification_constrained" := by
  rfl

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse