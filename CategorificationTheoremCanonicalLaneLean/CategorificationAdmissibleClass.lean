import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CategorificationObject where
  sourceCategory : Type u₁
  targetCategory : Type u₂
  functor : sourceCategory → targetCategory
  fullyFaithful : Prop
  essentiallySurjective : Prop
  conclusion : fullyFaithful ∧ essentiallySurjective

structure CategorificationAdmittedObject where
  object : CategorificationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CategorificationWitnessClosed (O : CategorificationObject) : Prop :=
  O.fullyFaithful ∧ O.essentiallySurjective

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse