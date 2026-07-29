import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MajorityCodesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse