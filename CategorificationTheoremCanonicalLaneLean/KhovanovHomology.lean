import CategorificationTheoremCanonicalLaneLean.Decategorification

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure KhovanovHomologyPackage {C : HigherCategoryPackage} where
  chainComplex : Type u
  homologyGroups : Type v
  eulerCharacteristic : Type w
  categorifiesJonesPolynomial : Prop
  functoriality : Prop

def KhovanovHomologyClosed {C : HigherCategoryPackage} (K : KhovanovHomologyPackage C) : Prop :=
  K.categorifiesJonesPolynomial ∧ K.functoriality

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse
