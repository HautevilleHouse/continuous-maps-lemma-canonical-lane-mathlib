import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapsLemma

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ProductTopologyPackage (C1 C2 : ContinuousMapsPackage) where
  productSpace : Set (C1.domain × C2.domain)
  topologyProduct : TopologicalSpace (C1.domain × C2.domain)
  productTopologyDefined : Prop
  continuousMapFromProduct : (C1.domain × C2.domain) → C1.codomain
  continuousMapContinuous : Continuous continuousMapFromProduct
  productTopologyDefinedTerm : productTopologyDefined

def ProductTopologyClosed (C1 C2 : ContinuousMapsPackage) (P : ProductTopologyPackage C1 C2) : Prop :=
  P.productTopologyDefined ∧ P.continuousMapContinuous

theorem product_topology_closed (C1 C2 : ContinuousMapsPackage) (P : ProductTopologyPackage C1 C2) :
    ProductTopologyClosed C1 C2 P := by
  exact And.intro P.productTopologyDefinedTerm P.continuousMapContinuous

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse