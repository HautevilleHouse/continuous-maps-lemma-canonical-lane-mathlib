import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsLemmaCanonicalLaneLean.ContinuousMapDefinitions

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure ApproximationSequencesPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) where
  sequenceDefined : Prop
  uniformConvergenceCondition : Prop
  limitIsContinuous : Prop

structure ApproximationSequencesEvidence (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (A : ApproximationSequencesPackage X Y C) where
  sequenceDefinedClosed : A.sequenceDefined
  uniformConvergenceConditionClosed : A.uniformConvergenceCondition
  limitIsContinuousClosed : A.limitIsContinuous

def ApproximationSequencesClosed (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (A : ApproximationSequencesPackage X Y C) : Prop :=
  A.sequenceDefined ∧ A.uniformConvergenceCondition ∧ A.limitIsContinuous

theorem approximation_sequences_closed_from_evidence (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (C : ContinuousMapPackage X Y) (A : ApproximationSequencesPackage X Y C) (E : ApproximationSequencesEvidence X Y C A) : ApproximationSequencesClosed X Y C A := by
  exact And.intro E.sequenceDefinedClosed (And.intro E.uniformConvergenceConditionClosed E.limitIsContinuousClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse
