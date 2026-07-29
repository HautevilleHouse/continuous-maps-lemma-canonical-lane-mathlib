import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousMapsPackage where
  sourceTopology : Type u
  targetTopology : Type v
  continuousFunctions : Type w
  compositionDefined : Prop
  identityContinuous : Prop
  restrictionWellDefined : Prop

structure ContinuousMapsEvidence (C : ContinuousMapsPackage) where
  compositionDefinedClosed : C.compositionDefined
  identityContinuousClosed : C.identityContinuous
  restrictionWellDefinedClosed : C.restrictionWellDefined

def ContinuousMapsClosed (C : ContinuousMapsPackage) : Prop :=
  C.compositionDefined ∧ C.identityContinuous ∧ C.restrictionWellDefined

theorem continuous_maps_closed_from_evidence (C : ContinuousMapsPackage)
    (E : ContinuousMapsEvidence C) : ContinuousMapsClosed C := by
  exact And.intro E.compositionDefinedClosed
    (And.intro E.identityContinuousClosed E.restrictionWellDefinedClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse