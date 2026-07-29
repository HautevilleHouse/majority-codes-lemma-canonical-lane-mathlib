import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure ListDecodingBoundPackage where
  listSize : ℕ
  agreementThreshold : ℚ
  errorProbabilityBound : ℚ
  alphabetSize : ℕ

structure ListDecodingBoundEvidence (P : ListDecodingBoundPackage) where
  boundHolds : P.listSize ≤ P.alphabetSize
  errorProbabilityBelow : P.errorProbabilityBound < 1/2

def ListDecodingBoundClosed (P : ListDecodingBoundPackage) : Prop :=
  P.listSize ≤ P.alphabetSize ∧ P.errorProbabilityBound < 1/2

theorem list_decoding_bound_closed_from_evidence
    (P : ListDecodingBoundPackage) (E : ListDecodingBoundEvidence P) :
    ListDecodingBoundClosed P := by
  exact And.intro E.boundHolds E.errorProbabilityBelow

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse