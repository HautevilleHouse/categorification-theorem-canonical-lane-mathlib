import CategorificationTheoremCanonicalLaneLean.CategorificationYonedaEmbedding

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure MotivicRealizationPackage where
  realizationFunctor : Type (max u₁ u₂)
  descentProperty : Prop
  gradedCohomologyCompatibility : Prop
  spectralSequenceCollapse : Prop
  realizationIsEquivalence : Prop

structure MotivicRealizationEvidence (M : MotivicRealizationPackage) where
  descentPropertyClosed : M.descentProperty
  gradedCohomologyCompatibilityClosed : M.gradedCohomologyCompatibility
  spectralSequenceCollapseClosed : M.spectralSequenceCollapse
  realizationIsEquivalenceClosed : M.realizationIsEquivalence

def MotivicRealizationClosed (M : MotivicRealizationPackage) : Prop :=
  M.descentProperty ∧ M.gradedCohomologyCompatibility ∧ M.spectralSequenceCollapse ∧ M.realizationIsEquivalence

theorem motivic_realization_closed_from_evidence (M : MotivicRealizationPackage)
    (E : MotivicRealizationEvidence M) : MotivicRealizationClosed M := by
  exact And.intro E.descentPropertyClosed
    (And.intro E.gradedCohomologyCompatibilityClosed
      (And.intro E.spectralSequenceCollapseClosed E.realizationIsEquivalenceClosed))

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse