import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure BaireCategoryPackage where
  completeMetricSpace : Type u
  metric : MetricSpace completeMetricSpace
  countableIntersectionOpenDense : Prop
  genericProperty : Prop

structure BaireCategoryEvidence (B : BaireCategoryPackage) where
  countableIntersectionOpenDenseClosed : B.countableIntersectionOpenDense
  genericPropertyClosed : B.genericProperty

def BaireCategoryClosed (B : BaireCategoryPackage) : Prop :=
  B.countableIntersectionOpenDense ∧ B.genericProperty

theorem baire_category_closed_from_evidence
    (B : BaireCategoryPackage) (E : BaireCategoryEvidence B) :
    BaireCategoryClosed B := by
  exact And.intro E.countableIntersectionOpenDenseClosed E.genericPropertyClosed

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse