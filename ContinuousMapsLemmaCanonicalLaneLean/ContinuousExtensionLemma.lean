import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapsLemma

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousExtensionPackage (C : ContinuousMapsPackage) where
  subspace : Set C.domain
  subspaceClosed : IsClosed subspace
  restriction : subspace → C.codomain
  restrictionContinuous : Continuous restriction
  extension : C.domain → C.codomain
  extensionContinuous : Continuous extension
  extensionAgrees : ∀ x : subspace, extension x = restriction x

def ContinuousExtensionClosed (C : ContinuousMapsPackage) (E : ContinuousExtensionPackage C) : Prop :=
  IsClosed E.subspace ∧ Continuous E.restriction ∧ Continuous E.extension ∧
  ∀ x : E.subspace, E.extension x = E.restriction x

theorem continuous_extension_closed (C : ContinuousMapsPackage) (E : ContinuousExtensionPackage C) :
    ContinuousExtensionClosed C E := by
  exact And.intro E.subspaceClosed
    (And.intro E.restrictionContinuous
      (And.intro E.extensionContinuous E.extensionAgrees))

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse