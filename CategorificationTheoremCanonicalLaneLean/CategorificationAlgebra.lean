import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CategorifiedAlgebra where
  underlyingCategory : Type u
  monoidalStructure : Type v
  multiplication : Type w
  unit : Type x
  associativity : Prop
  unitality : Prop

structure CategorifiedAlgebraEvidence (A : CategorifiedAlgebra) where
  associativityClosed : A.associativity
  unitalityClosed : A.unitality

def CategorifiedAlgebraClosed (A : CategorifiedAlgebra) : Prop :=
  A.associativity ∧ A.unitality

theorem categorified_algebra_closed_from_evidence (A : CategorifiedAlgebra)
  (E : CategorifiedAlgebraEvidence A) : CategorifiedAlgebraClosed A := by
  exact And.intro E.associativityClosed E.unitalityClosed

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse