import HautevilleHouse.CategorificationTheoremCanonicalLaneLean.CoherenceConditions

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure WeakEquivalencePackage {C : CategorificationPackage} where
  functorF : Type u₁
  functorG : Type u₂
  naturalIsomorphisms : Prop
  homotopyInverses : Prop

structure WeakEquivalenceEvidence {C : CategorificationPackage}
    (W : WeakEquivalencePackage C) where
  naturalIsomorphismsClosed : W.naturalIsomorphisms
  homotopyInversesClosed : W.homotopyInverses

def WeakEquivalenceClosed {C : CategorificationPackage}
    (W : WeakEquivalencePackage C) : Prop :=
  W.naturalIsomorphisms ∧ W.homotopyInverses

theorem weak_equivalence_closed_from_evidence {C : CategorificationPackage}
    (W : WeakEquivalencePackage C) (E : WeakEquivalenceEvidence W) :
    WeakEquivalenceClosed W := by
  exact And.intro E.naturalIsomorphismsClosed E.homotopyInversesClosed

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse