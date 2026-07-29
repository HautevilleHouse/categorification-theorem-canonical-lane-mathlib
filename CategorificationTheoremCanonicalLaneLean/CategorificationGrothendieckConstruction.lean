import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure GrothendieckConstruction where
  baseCategory : Type u
  fiberFunctor : baseCategory → Type v
  totalCategory : Type w
  projection : totalCategory → baseCategory
  cartesianLift : ∀ (f : X → Y) (y : fiberFunctor Y), totalCategory
  universalProperty : Prop

structure GrothendieckEvidence (G : GrothendieckConstruction) where
  cartesianLiftClosed : Prop
  universalPropertyClosed : G.universalProperty

def GrothendieckClosed (G : GrothendieckConstruction) : Prop :=
  G.universalProperty

theorem grothendieck_closed_from_evidence (G : GrothendieckConstruction)
  (E : GrothendieckEvidence G) : GrothendieckClosed G := by
  exact E.universalPropertyClosed

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse