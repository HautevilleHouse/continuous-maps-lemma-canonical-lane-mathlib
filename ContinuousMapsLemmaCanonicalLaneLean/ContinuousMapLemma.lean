import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDefinitions

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousMapLemmaPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) where
  continuousImageCompact : Prop
  preimageOpenCondition : Prop
  lemmaStatement : Prop

structure ContinuousMapLemmaEvidence (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (L : ContinuousMapLemmaPackage X Y C) where
  continuousImageCompactClosed : L.continuousImageCompact
  preimageOpenConditionClosed : L.preimageOpenCondition
  lemmaStatementClosed : L.lemmaStatement

def ContinuousMapLemmaClosed (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (L : ContinuousMapLemmaPackage X Y C) : Prop :=
  L.continuousImageCompact ∧ L.preimageOpenCondition ∧ L.lemmaStatement

theorem continuous_map_lemma_closed_from_evidence (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (L : ContinuousMapLemmaPackage X Y C) (E : ContinuousMapLemmaEvidence X Y C L) : ContinuousMapLemmaClosed X Y C L := by
  exact And.intro E.continuousImageCompactClosed (And.intro E.preimageOpenConditionClosed E.lemmaStatementClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse
