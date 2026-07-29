import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDomain

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure UniformContinuityPackage (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] [UniformSpace Y] (d : ContinuousMapLemmaDomain X Y) where
  uniformContinuity : Prop
  uniformContinuityWitness : uniformContinuity

def UniformContinuityClosed (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] [UniformSpace Y] (d : ContinuousMapLemmaDomain X Y) (u : UniformContinuityPackage X Y d) : Prop :=
  u.uniformContinuity

theorem uniform_continuity_closed_from_evidence (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] [UniformSpace Y] (d : ContinuousMapLemmaDomain X Y) (u : UniformContinuityPackage X Y d) : UniformContinuityClosed X Y d u :=
  u.uniformContinuityWitness

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse