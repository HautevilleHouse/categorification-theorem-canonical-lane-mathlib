import CategorificationTheoremCanonicalLaneLean.CategorificationAdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CategorificationKanPackage where
  leftKanExtension : Type (max u₁ u₂)
  rightKanExtension : Type (max u₁ u₂)
  leftKanExists : Prop
  rightKanExists : Prop
  leftKanPointwiseFormula : Prop
  rightKanPointwiseFormula : Prop

structure KanExtensionEvidence (K : CategorificationKanPackage) where
  leftKanExistsClosed : K.leftKanExists
  rightKanExistsClosed : K.rightKanExists
  leftKanPointwiseFormulaClosed : K.leftKanPointwiseFormula
  rightKanPointwiseFormulaClosed : K.rightKanPointwiseFormula

def KanExtensionClosed (K : CategorificationKanPackage) : Prop :=
  K.leftKanExists ∧ K.rightKanExists ∧ K.leftKanPointwiseFormula ∧ K.rightKanPointwiseFormula

theorem kan_extension_closed_from_evidence (K : CategorificationKanPackage)
    (E : KanExtensionEvidence K) : KanExtensionClosed K := by
  exact And.intro E.leftKanExistsClosed
    (And.intro E.rightKanExistsClosed
      (And.intro E.leftKanPointwiseFormulaClosed E.rightKanPointwiseFormulaClosed))

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse