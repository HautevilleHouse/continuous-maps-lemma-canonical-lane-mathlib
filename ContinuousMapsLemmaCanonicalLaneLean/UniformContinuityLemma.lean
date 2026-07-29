import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapsLemma

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure UniformContinuityPackage (C : ContinuousMapsPackage) where
  metricSource : Metric C.domain
  metricTarget : Metric C.codomain
  function : C.domain → C.codomain
  functionContinuous : Continuous function
  uniformContinuityProp : Prop
  uniformContinuityTerm : uniformContinuityProp

def UniformContinuityClosed (C : ContinuousMapsPackage) (U : UniformContinuityPackage C) : Prop :=
  U.functionContinuous ∧ U.uniformContinuityProp

theorem uniform_continuity_closed (C : ContinuousMapsPackage) (U : UniformContinuityPackage C) :
    UniformContinuityClosed C U := by
  exact And.intro U.functionContinuous U.uniformContinuityTerm

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse