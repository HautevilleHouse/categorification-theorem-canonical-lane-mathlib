import canonicalLaneMathlib.CategoryTheory

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure HigherCategoryPackage where
  objectType : Type u
  morphismType : objectType → objectType → Type v
  twoMorphismType : ∀ {x y : objectType}, morphismType x y → morphismType x y → Type w
  composition : ∀ {x y z : objectType}, morphismType y z → morphismType x y → morphismType x z
  identity : ∀ (x : objectType), morphismType x x
  associativity : Prop
  identityLaws : Prop
  interchangeLaw : Prop
  witnesses : associativity ∧ identityLaws ∧ interchangeLaw

structure CategorificationObject where
  sourceCategory : HigherCategoryPackage
  targetCategory : HigherCategoryPackage
  categorificationFunctor : Type u
  weakEquivalence : Prop
  conclusion : weakEquivalence

def CategorificationWitnessClosed (O : CategorificationObject) : Prop :=
  O.weakEquivalence

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse
