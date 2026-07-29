import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure StoneWeierstrassPackage where
  compactSpace : Type u
  targetField : Type v
  compactTopology : TopologicalSpace compactSpace
  fieldStructure : Field targetField
  subalgebra : Set (compactSpace → targetField)
  subalgebraIsSubalgebra : Prop
  subalgebraSeparatesPoints : Prop
  subalgebraContainsConstant : Prop
  subalgebraClosedUnderComplexConjugate : Prop
  denseClosure : Prop

structure StoneWeierstrassEvidence (S : StoneWeierstrassPackage) where
  subalgebraIsSubalgebraClosed : S.subalgebraIsSubalgebra
  subalgebraSeparatesPointsClosed : S.subalgebraSeparatesPoints
  subalgebraContainsConstantClosed : S.subalgebraContainsConstant
  subalgebraClosedUnderComplexConjugateClosed : S.subalgebraClosedUnderComplexConjugate
  denseClosureClosed : S.denseClosure

def StoneWeierstrassClosed (S : StoneWeierstrassPackage) : Prop :=
  S.subalgebraIsSubalgebra ∧ S.subalgebraSeparatesPoints ∧
  S.subalgebraContainsConstant ∧ S.subalgebraClosedUnderComplexConjugate ∧
  S.denseClosure

theorem stone_weierstrass_closed_from_evidence
    (S : StoneWeierstrassPackage) (E : StoneWeierstrassEvidence S) :
    StoneWeierstrassClosed S := by
  exact And.intro E.subalgebraIsSubalgebraClosed
    (And.intro E.subalgebraSeparatesPointsClosed
      (And.intro E.subalgebraContainsConstantClosed
        (And.intro E.subalgebraClosedUnderComplexConjugateClosed
          E.denseClosureClosed)))

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse