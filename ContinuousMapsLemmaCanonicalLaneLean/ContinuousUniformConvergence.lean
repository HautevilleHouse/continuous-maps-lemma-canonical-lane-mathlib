import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure UniformConvergencePackage where
  functionSpace : Type u
  uniformStructure : Type v
  completeness : Prop
  limitOfContinuousSequenceContinuous : Prop
  arzelaAscoliCondition : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  completenessClosed : U.completeness
  limitOfContinuousSequenceContinuousClosed : U.limitOfContinuousSequenceContinuous
  arzelaAscoliConditionClosed : U.arzelaAscoliCondition

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.completeness ∧ U.limitOfContinuousSequenceContinuous ∧ U.arzelaAscoliCondition

theorem uniform_convergence_closed_from_evidence (U : UniformConvergencePackage)
    (Ev : UniformConvergenceEvidence U) : UniformConvergenceClosed U := by
  exact And.intro Ev.completenessClosed
    (And.intro Ev.limitOfContinuousSequenceContinuousClosed Ev.arzelaAscoliConditionClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse