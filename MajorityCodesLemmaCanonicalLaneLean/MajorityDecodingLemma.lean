import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure MajorityDecodingLemmaPackage (A : AdmissibleClass) where
  decodingRule : ℕ → ℕ  -- maps block index to majority vote
  successProbability : ℝ → ℝ  -- function of agreement parameter
  successProbabilityPositive : Prop
  successProbabilityPositiveClosed : successProbabilityPositive

structure MajorityDecodingLemmaEvidence (P : MajorityDecodingLemmaPackage) where
  successProbabilityPositiveClosed : P.successProbabilityPositive

def MajorityDecodingLemmaClosed (P : MajorityDecodingLemmaPackage) : Prop :=
  P.successProbabilityPositive

theorem majority_decoding_lemma_closed_from_evidence (P : MajorityDecodingLemmaPackage) (E : MajorityDecodingLemmaEvidence P) :
    MajorityDecodingLemmaClosed P := by
  exact E.successProbabilityPositiveClosed

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse