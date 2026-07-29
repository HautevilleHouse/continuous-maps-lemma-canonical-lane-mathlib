import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDomain

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ExtensionPackage (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] (d : ContinuousMapLemmaDomain X Y) where
  subspace : Set X
  subspaceCompact : Prop
  subspaceClosed : Prop
  extensionExists : Prop
  extensionWitness : extensionExists

def ExtensionClosed (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] (d : ContinuousMapLemmaDomain X Y) (e : ExtensionPackage X Y d) : Prop :=
  e.subspaceCompact ∧ e.subspaceClosed ∧ e.extensionExists

theorem extension_closed_from_evidence (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] (d : ContinuousMapLemmaDomain X Y) (e : ExtensionPackage X Y d) : ExtensionClosed X Y d e :=
  And.intro e.subspaceCompact (And.intro e.subspaceClosed e.extensionWitness)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse