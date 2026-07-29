import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CategorifiedTrace where
  monoidalCategory : Type u
  dualizableObjects : Prop
  traceMap : ∀ (X : monoidalCategory), endomorphism X → scalar
  cyclicity : Prop
  naturality : Prop

structure CategorifiedTraceEvidence (T : CategorifiedTrace) where
  dualizableObjectsClosed : T.dualizableObjects
  cyclicityClosed : T.cyclicity
  naturalityClosed : T.naturality

def CategorifiedTraceClosed (T : CategorifiedTrace) : Prop :=
  T.dualizableObjects ∧ T.cyclicity ∧ T.naturality

theorem categorified_trace_closed_from_evidence (T : CategorifiedTrace)
  (E : CategorifiedTraceEvidence T) : CategorifiedTraceClosed T := by
  exact And.intro E.dualizableObjectsClosed
    (And.intro E.cyclicityClosed E.naturalityClosed)

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse