import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CategorificationObject where
  underlyingCategory : Type u
  extraStructure : Type v
  weakEquivalence : (underlyingCategory → Prop) → Prop
  coherenceData : Prop
  coherenceDataTerm : coherenceData

structure CategorificationPackage where
  sourceObject : CategorificationObject
  targetObject : CategorificationObject
  adjunction : Prop
  unitMap : Prop
  counitMap : Prop
  triangleIdentities : Prop
  unitMapTerm : unitMap
  counitMapTerm : counitMap
  triangleIdentitiesTerm : triangleIdentities

structure CategorificationEvidence (P : CategorificationPackage) where
  adjunctionClosed : P.adjunction
  unitMapClosed : P.unitMap
  counitMapClosed : P.counitMap
  triangleIdentitiesClosed : P.triangleIdentities

def CategorificationClosed (P : CategorificationPackage) : Prop :=
  P.adjunction ∧ P.unitMap ∧ P.counitMap ∧ P.triangleIdentities

theorem categorification_closed_from_evidence (P : CategorificationPackage)
    (E : CategorificationEvidence P) : CategorificationClosed P := by
  exact And.intro E.adjunctionClosed (And.intro E.unitMapClosed (And.intro E.counitMapClosed E.triangleIdentitiesClosed))

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse