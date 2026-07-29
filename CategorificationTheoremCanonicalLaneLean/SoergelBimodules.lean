import CategorificationTheoremCanonicalLaneLean.KhovanovHomology

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure SoergelBimodulePackage {C : HigherCategoryPackage} where
  bimoduleCategory : Type u
  bruhatOrder : Type v
  indecomposableObjects : Type w
  categorifiesHeckeAlgebra : Prop
  positivityOfKazhdanLusztigPolynomials : Prop

def SoergelBimoduleClosed {C : HigherCategoryPackage} (S : SoergelBimodulePackage C) : Prop :=
  S.categorifiesHeckeAlgebra ∧ S.positivityOfKazhdanLusztigPolynomials

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse
