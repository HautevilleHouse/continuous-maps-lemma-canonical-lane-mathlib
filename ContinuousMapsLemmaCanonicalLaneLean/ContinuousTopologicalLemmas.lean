import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure TopologicalLemmasPackage where
  productTopology : Prop
  quotientTopology : Prop
  functionSpaceTopology : Prop
  evaluationContinuous : Prop
  compositionContinuous : Prop

structure TopologicalLemmasEvidence (T : TopologicalLemmasPackage) where
  productTopologyClosed : T.productTopology
  quotientTopologyClosed : T.quotientTopology
  functionSpaceTopologyClosed : T.functionSpaceTopology
  evaluationContinuousClosed : T.evaluationContinuous
  compositionContinuousClosed : T.compositionContinuous

def TopologicalLemmasClosed (T : TopologicalLemmasPackage) : Prop :=
  T.productTopology ∧ T.quotientTopology ∧ T.functionSpaceTopology ∧
  T.evaluationContinuous ∧ T.compositionContinuous

theorem topological_lemmas_closed_from_evidence (T : TopologicalLemmasPackage)
    (E : TopologicalLemmasEvidence T) : TopologicalLemmasClosed T := by
  exact And.intro E.productTopologyClosed
    (And.intro E.quotientTopologyClosed
      (And.intro E.functionSpaceTopologyClosed
        (And.intro E.evaluationContinuousClosed E.compositionContinuousClosed)))

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse