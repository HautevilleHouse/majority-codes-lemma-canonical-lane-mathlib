import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  majorityCodesBridge A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    rcases A.gateWitness with (h | h)
    · exact h
    · exact A.object.relativeDistance > 1/2 ∧ A.object.decodingCapacity ≥ 1/2
    

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse