import CategorificationTheoremCanonicalLaneLean.HigherCategories

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure DecategorificationPackage {C : HigherCategoryPackage} where
  truncationFunctor : Type u
  decategorifiedObject : Type v
  decategorifiedMorphism : Type w
  isomorphismToOriginal : Prop
  structurePreserved : Prop

def DecategorificationClosed {C : HigherCategoryPackage} (D : DecategorificationPackage C) : Prop :=
  D.structurePreserved

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse
