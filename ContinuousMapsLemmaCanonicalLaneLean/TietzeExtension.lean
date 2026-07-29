import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure TietzeExtensionPackage where
  normalSpace : Type u
  closedSubset : Set normalSpace
  targetInterval : Type v
  normalTopology : TopologicalSpace normalSpace
  intervalTopology : TopologicalSpace targetInterval
  intervalOrdered : OrderedRing targetInterval
  continuousFunctionOnSubset : normalSpace → targetInterval
  continuousExtension : Prop
  extensionPreservesBound : Prop

structure TietzeExtensionEvidence (T : TietzeExtensionPackage) where
  continuousExtensionClosed : T.continuousExtension
  extensionPreservesBoundClosed : T.extensionPreservesBound

def TietzeExtensionClosed (T : TietzeExtensionPackage) : Prop :=
  T.continuousExtension ∧ T.extensionPreservesBound

theorem tietze_extension_closed_from_evidence
    (T : TietzeExtensionPackage) (E : TietzeExtensionEvidence T) :
    TietzeExtensionClosed T := by
  exact And.intro E.continuousExtensionClosed E.extensionPreservesBoundClosed

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse