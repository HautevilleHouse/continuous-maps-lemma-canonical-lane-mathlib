import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDomain

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | ContinuousMapDomain _ _ _ _ d => d.lemmaStatement
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) (h : A.object is ContinuousMapDomain) : bridgeClosed A :=
  by
    -- we need to extract the lemmaStatement from the object
    -- This is a sketch; in practice we'd pattern match.
    sorry

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse