import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure AdjunctionPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unit : ∀ {X : Type u}, X → rightAdjoint (leftAdjoint X)
  counit : ∀ {Y : Type u}, leftAdjoint (rightAdjoint Y) → Y
  triangleLeft : ∀ {X : Type u}, (counit (leftAdjoint X)) ∘ (leftAdjoint (unit X)) = id
  triangleRight : ∀ {Y : Type u}, (rightAdjoint (counit Y)) ∘ (unit (rightAdjoint Y)) = id

structure AdjunctionEvidence (P : AdjunctionPackage) where
  unitNatural : Prop
  counitNatural : Prop
  triangleLeftClosed : P.triangleLeft = id
  triangleRightClosed : P.triangleRight = id

def AdjunctionClosed (P : AdjunctionPackage) : Prop :=
  P.triangleLeft = id ∧ P.triangleRight = id

theorem adjunction_closed_from_evidence (P : AdjunctionPackage) (E : AdjunctionEvidence P) :
  AdjunctionClosed P := by
  exact And.intro E.triangleLeftClosed E.triangleRightClosed

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse