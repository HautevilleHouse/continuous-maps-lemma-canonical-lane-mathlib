import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousMapsTopologyPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetTopology : TopologicalSpace targetSpace
  functionSpace : Type w
  compactOpenTopology : TopologicalSpace functionSpace
  evaluationContinuous : Prop
  compositionContinuous : Prop
  functionSpaceHausdorff : Prop

structure ContinuousMapsTopologyEvidence (C : ContinuousMapsTopologyPackage) where
  evaluationContinuousClosed : C.evaluationContinuous
  compositionContinuousClosed : C.compositionContinuous
  functionSpaceHausdorffClosed : C.functionSpaceHausdorff

def ContinuousMapsTopologyClosed (C : ContinuousMapsTopologyPackage) : Prop :=
  C.evaluationContinuous ∧ C.compositionContinuous ∧ C.functionSpaceHausdorff

theorem continuous_maps_topology_closed_from_evidence
    (C : ContinuousMapsTopologyPackage) (E : ContinuousMapsTopologyEvidence C) :
    ContinuousMapsTopologyClosed C := by
  exact And.intro E.evaluationContinuousClosed
    (And.intro E.compositionContinuousClosed E.functionSpaceHausdorffClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse