import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

def ConstrainedContinuousMapsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_maps_endgame (A : AdmissibleClass) :
    ConstrainedContinuousMapsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse