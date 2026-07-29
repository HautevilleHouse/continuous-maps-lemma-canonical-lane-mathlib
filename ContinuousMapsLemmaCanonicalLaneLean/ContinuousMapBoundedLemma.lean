import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapsLemma

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure BoundedContinuousMapPackage (C : ContinuousMapsPackage) where
  function : C.domain → C.codomain
  functionContinuous : Continuous function
  bounded : Prop
  boundedTerm : bounded
  supNorm : ℝ
  supNormBound : ∀ x : C.domain, dist (function x) 0 ≤ supNorm

def BoundedContinuousMapClosed (C : ContinuousMapsPackage) (B : BoundedContinuousMapPackage C) : Prop :=
  B.functionContinuous ∧ B.bounded ∧ ∀ x : C.domain, dist (B.function x) 0 ≤ B.supNorm

theorem bounded_continuous_map_closed (C : ContinuousMapsPackage) (B : BoundedContinuousMapPackage C) :
    BoundedContinuousMapClosed C B := by
  exact And.intro B.functionContinuous (And.intro B.boundedTerm B.supNormBound)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse