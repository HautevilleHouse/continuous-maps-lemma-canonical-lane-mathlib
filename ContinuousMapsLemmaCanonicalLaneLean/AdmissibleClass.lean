import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDefinitions

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousAdmittedObject where
  source : Type u
  target : Type v
  continuousFunction : source → target
  continuityProof : Prop

structure ContinuousAdmissibleClass where
  object : ContinuousAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ContinuousAdmittedClosure (A : ContinuousAdmissibleClass) : Prop :=
  A.object.continuityProof ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse