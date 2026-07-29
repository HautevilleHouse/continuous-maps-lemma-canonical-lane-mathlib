import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapsLemma

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure HomotopyContinuityPackage (C : ContinuousMapsPackage) where
  homotopyMap : C.domain × ℝ → C.codomain
  homotopyContinuous : Continuous homotopyMap
  initialMap : C.domain → C.codomain
  finalMap : C.domain → C.codomain
  initialMapContinuous : Continuous initialMap
  finalMapContinuous : Continuous finalMap
  initialCondition : ∀ x : C.domain, homotopyMap (x, 0) = initialMap x
  finalCondition : ∀ x : C.domain, homotopyMap (x, 1) = finalMap x

def HomotopyContinuityClosed (C : ContinuousMapsPackage) (H : HomotopyContinuityPackage C) : Prop :=
  H.homotopyContinuous ∧ H.initialMapContinuous ∧ H.finalMapContinuous ∧
  (∀ x : C.domain, H.homotopyMap (x, 0) = H.initialMap x) ∧
  (∀ x : C.domain, H.homotopyMap (x, 1) = H.finalMap x)

theorem homotopy_continuity_closed (C : ContinuousMapsPackage) (H : HomotopyContinuityPackage C) :
    HomotopyContinuityClosed C H := by
  exact And.intro H.homotopyContinuous
    (And.intro H.initialMapContinuous
      (And.intro H.finalMapContinuous
        (And.intro H.initialCondition H.finalCondition)))

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse