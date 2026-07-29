import CategorificationTheoremCanonicalLaneLean.CategorificationKanExtension

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure YonedaEmbeddingPackage {C : Type u} [Category C] where
  yonedaFunctor : C → Presheaf C
  yonedaLemma : Prop
  representableFunctorCharacterization : Prop
  fullyFaithfulYoneda : Prop

structure YonedaEmbeddingEvidence {C : Type u} [Category C]
    (Y : YonedaEmbeddingPackage C) where
  yonedaLemmaClosed : Y.yonedaLemma
  representableFunctorCharacterizationClosed : Y.representableFunctorCharacterization
  fullyFaithfulYonedaClosed : Y.fullyFaithfulYoneda

def YonedaEmbeddingClosed {C : Type u} [Category C]
    (Y : YonedaEmbeddingPackage C) : Prop :=
  Y.yonedaLemma ∧ Y.representableFunctorCharacterization ∧ Y.fullyFaithfulYoneda

theorem yoneda_embedding_closed_from_evidence {C : Type u} [Category C]
    (Y : YonedaEmbeddingPackage C) (E : YonedaEmbeddingEvidence Y) :
    YonedaEmbeddingClosed Y := by
  exact And.intro E.yonedaLemmaClosed
    (And.intro E.representableFunctorCharacterizationClosed E.fullyFaithfulYonedaClosed)

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse