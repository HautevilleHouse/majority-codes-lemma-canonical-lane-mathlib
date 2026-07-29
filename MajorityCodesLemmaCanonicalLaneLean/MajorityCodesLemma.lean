import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure MajorityCodesLemmaPackage where
  alphabet : Type u
  blockLength : ℕ
  codeRate : ℚ
  agreementThreshold : ℚ
  majorityDecoder : (List alphabet → alphabet)
  decodingErrorProbability : ℚ
  uniqueDecoding : Prop
  listDecoding : Prop
  localDecoding : Prop

structure MajorityCodesLemmaEvidence (P : MajorityCodesLemmaPackage) where
  uniqueDecodingClosed : P.uniqueDecoding
  listDecodingClosed : P.listDecoding
  localDecodingClosed : P.localDecoding

def MajorityCodesLemmaClosed (P : MajorityCodesLemmaPackage) : Prop :=
  P.uniqueDecoding ∧ P.listDecoding ∧ P.localDecoding

theorem majority_codes_lemma_closed_from_evidence
    (P : MajorityCodesLemmaPackage) (E : MajorityCodesLemmaEvidence P) :
    MajorityCodesLemmaClosed P := by
  exact And.intro E.uniqueDecodingClosed (And.intro E.listDecodingClosed E.localDecodingClosed)

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse