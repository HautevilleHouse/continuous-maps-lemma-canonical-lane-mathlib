import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDomain

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse