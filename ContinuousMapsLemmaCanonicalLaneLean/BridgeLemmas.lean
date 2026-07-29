import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

def bridgeClosed (A : ContinuousAdmissibleClass) : Prop :=
  A.object.continuityProof

theorem bridge_from_admissible_class (A : ContinuousAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.continuityProof

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse