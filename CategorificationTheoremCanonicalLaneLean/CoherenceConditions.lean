import HautevilleHouse.CategorificationTheoremCanonicalLaneLean.CategorificationStructure

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CoherenceConditionsPackage {C : CategorificationPackage} where
  associatorCoherence : Prop
  unitorCoherence : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure CoherenceConditionsEvidence {C : CategorificationPackage}
    (P : CoherenceConditionsPackage C) where
  associatorCoherenceClosed : P.associatorCoherence
  unitorCoherenceClosed : P.unitorCoherence
  pentagonIdentityClosed : P.pentagonIdentity
  triangleIdentityClosed : P.triangleIdentity

def CoherenceConditionsClosed {C : CategorificationPackage}
    (P : CoherenceConditionsPackage C) : Prop :=
  P.associatorCoherence ∧ P.unitorCoherence ∧ P.pentagonIdentity ∧ P.triangleIdentity

theorem coherence_conditions_closed_from_evidence {C : CategorificationPackage}
    (P : CoherenceConditionsPackage C) (E : CoherenceConditionsEvidence P) :
    CoherenceConditionsClosed P := by
  exact And.intro E.associatorCoherenceClosed
    (And.intro E.unitorCoherenceClosed
      (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed))

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse