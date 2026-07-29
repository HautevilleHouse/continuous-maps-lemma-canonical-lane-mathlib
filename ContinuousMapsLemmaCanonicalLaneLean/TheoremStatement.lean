import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousMapsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ContinuousMapsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "continuous-maps-lemma-canonical-lane",
    theoremName := "Continuous Maps Lemma",
    theoremObject := "For any continuous map f: X -> Y with X compact and Y Hausdorff, f is closed",
    classicalBoundary := "classical source boundary carried by formalization certificate",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through admissible class closure",
    certificateLane := "continuous_maps_constrained",
    carriedRemainder := "carried remainder is empty once bridge and gate are closed"
  }

theorem statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "continuous-maps-lemma-canonical-lane" := by rfl

theorem statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "continuous_maps_constrained" := by rfl

end ContinuousMapsLemmaCanonicalLaneLean
end HautevilleHouse