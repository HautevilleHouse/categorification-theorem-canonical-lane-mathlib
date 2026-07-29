import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategorificationTheoremCanonicalLaneLean

structure CategorificationSpace where
  carrier : Type u
  structure : Type v

structure CategorificationAdmittedObject where
  source : CategorificationSpace
  target : CategorificationSpace
  functor : Type w
  naturalIsomorphism : Prop
  coherenceConditions : Prop
  conclusion : coherenceConditions

structure CategorificationEndgameState where
  object : CategorificationAdmittedObject

def CategorificationWitnessClosed (O : CategorificationAdmittedObject) : Prop :=
  O.coherenceConditions

end CategorificationTheoremCanonicalLaneLean
end HautevilleHouse