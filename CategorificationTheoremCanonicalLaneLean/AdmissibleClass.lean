import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CategorificationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategorificationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse
