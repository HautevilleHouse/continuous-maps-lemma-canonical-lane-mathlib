import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure UniformConvergencePackage where
  sourceSpace : Type u
  targetMetricSpace : Type v
  sourceTopology : TopologicalSpace sourceSpace
  targetMetric : MetricSpace targetMetricSpace
  functionSpace : Type w
  uniformTopology : TopologicalSpace functionSpace
  uniformConvergenceImpliesPointwise : Prop
  uniformLimitContinuous : Prop
  completeness : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformConvergenceImpliesPointwiseClosed : U.uniformConvergenceImpliesPointwise
  uniformLimitContinuousClosed : U.uniformLimitContinuous
  completenessClosed : U.completeness

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformConvergenceImpliesPointwise ∧ U.uniformLimitContinuous ∧ U.completeness

theorem uniform_convergence_closed_from_evidence
    (U : UniformConvergencePackage) (E : UniformConvergenceEvidence U) :
    UniformConvergenceClosed U := by
  exact And.intro E.uniformConvergenceImpliesPointwiseClosed
    (And.intro E.uniformLimitContinuousClosed E.completenessClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse