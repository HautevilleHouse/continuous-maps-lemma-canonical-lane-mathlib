import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure BoundedContinuousPackage where
  sourceMetric : Type u
  targetMetric : Type v
  boundedFunctions : Type w
  supNormDefined : Prop
  completeness : Prop
  algebraStructure : Prop

structure BoundedContinuousEvidence (B : BoundedContinuousPackage) where
  supNormDefinedClosed : B.supNormDefined
  completenessClosed : B.completeness
  algebraStructureClosed : B.algebraStructure

def BoundedContinuousClosed (B : BoundedContinuousPackage) : Prop :=
  B.supNormDefined ∧ B.completeness ∧ B.algebraStructure

theorem bounded_continuous_closed_from_evidence (B : BoundedContinuousPackage)
    (E : BoundedContinuousEvidence B) : BoundedContinuousClosed B := by
  exact And.intro E.supNormDefinedClosed
    (And.intro E.completenessClosed E.algebraStructureClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse