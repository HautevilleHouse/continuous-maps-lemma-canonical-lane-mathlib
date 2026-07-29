import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDefinitions

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure HomotopyExtensionPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) where
  homotopyDefined : Prop
  extensionCondition : Prop
  endpointFixed : Prop

structure HomotopyExtensionEvidence (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (H : HomotopyExtensionPackage X Y C) where
  homotopyDefinedClosed : H.homotopyDefined
  extensionConditionClosed : H.extensionCondition
  endpointFixedClosed : H.endpointFixed

def HomotopyExtensionClosed (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (H : HomotopyExtensionPackage X Y C) : Prop :=
  H.homotopyDefined ∧ H.extensionCondition ∧ H.endpointFixed

theorem homotopy_extension_closed_from_evidence (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (H : HomotopyExtensionPackage X Y C) (E : HomotopyExtensionEvidence X Y C H) : HomotopyExtensionClosed X Y C H := by
  exact And.intro E.homotopyDefinedClosed (And.intro E.extensionConditionClosed E.endpointFixedClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse
