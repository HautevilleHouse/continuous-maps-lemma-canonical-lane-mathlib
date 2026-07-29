import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousMapsPackage where
  domain : Type u
  codomain : Type v
  topologySource : TopologicalSpace domain
  topologyTarget : TopologicalSpace codomain
  functionSet : Set (domain → codomain)
  continuousDefined : Prop
  functionSetNonempty : functionSet.Nonempty
  continuousDefinedTerm : continuousDefined

def ContinuousMapsClosed (C : ContinuousMapsPackage) : Prop :=
  C.continuousDefined ∧ C.functionSetNonempty

theorem continuous_maps_closed_from_package (C : ContinuousMapsPackage) :
    ContinuousMapsClosed C := by
  exact And.intro C.continuousDefinedTerm C.functionSetNonempty

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse