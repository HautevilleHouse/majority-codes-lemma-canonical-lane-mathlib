import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

def ConstrainedMajorityCodesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_majority_codes_endgame (A : AdmissibleClass) :
    ConstrainedMajorityCodesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse