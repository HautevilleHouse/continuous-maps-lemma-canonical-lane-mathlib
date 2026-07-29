import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapBridge
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapGate

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

def ConstrainedContinuousMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_map_endgame (A : AdmissibleClass) : ConstrainedContinuousMapClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse