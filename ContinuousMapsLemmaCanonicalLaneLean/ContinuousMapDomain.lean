import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ContinuousMapSpace (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] where
  carrier : X → Y
  continuous : Prop

structure ContinuousMapLemmaDomain (X Y : Type) [TopologicalSpace X] [TopologicalSpace Y] where
  sourceCompact : Prop
  targetHausdorff : Prop
  continuousMapSpace : ContinuousMapSpace X Y
  lemmaStatement : Prop
  lemmaWitness : lemmaStatement

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse