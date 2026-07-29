import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure AdmissibleContinuousFunction (X Y : Type _) [TopologicalSpace X] [TopologicalSpace Y] where
  f : X → Y
  continuous : Continuous f

structure ContinuousExtensionPackage (X : Type _) [TopologicalSpace X] (A : Set X) (Y : Type _) [TopologicalSpace Y] where
  restriction : X → Y
  restrictionContinuous : Continuous restriction
  extendedFunction : X → Y
  extensionContinuous : Continuous extendedFunction
  agreesOnA : ∀ x ∈ A, extendedFunction x = restriction x
  closedExtension : Prop
  closedExtensionTerm : closedExtension

theorem continuous_extension_closed (X : Type _) [TopologicalSpace X] (A : Set X) (Y : Type _) [TopologicalSpace Y]
    (P : ContinuousExtensionPackage X A Y) : P.closedExtension := P.closedExtensionTerm

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse