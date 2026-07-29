import CategorificationTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

def ConstrainedCategorificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categorification_endgame (A : AdmissibleClass) :
    ConstrainedCategorificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse
