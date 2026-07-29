import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure AscoliTheoremPackage where
  compactSource : Type u
  metricTarget : Type v
  compactTopology : TopologicalSpace compactSource
  targetMetric : MetricSpace metricTarget
  functionSpace : Set (compactSource → metricTarget)
  equicontinuous : Prop
  pointwiseBounded : Prop
  relativelyCompactClosure : Prop

structure AscoliTheoremEvidence (A : AscoliTheoremPackage) where
  equicontinuousClosed : A.equicontinuous
  pointwiseBoundedClosed : A.pointwiseBounded
  relativelyCompactClosureClosed : A.relativelyCompactClosure

def AscoliTheoremClosed (A : AscoliTheoremPackage) : Prop :=
  A.equicontinuous ∧ A.pointwiseBounded ∧ A.relativelyCompactClosure

theorem ascoli_theorem_closed_from_evidence
    (A : AscoliTheoremPackage) (E : AscoliTheoremEvidence A) :
    AscoliTheoremClosed A := by
  exact And.intro E.equicontinuousClosed
    (And.intro E.pointwiseBoundedClosed E.relativelyCompactClosureClosed)

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse