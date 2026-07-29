import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure MajorityVotingAnalysisPackage where
  blockLength : ℕ
  majorityFunction : (List ℕ → ℕ)
  errorTolerance : ℚ
  numberErrors : ℕ
  correctDecoding : Prop
  errorProbability : ℚ

structure MajorityVotingAnalysisEvidence (P : MajorityVotingAnalysisPackage) where
  correctDecodingClosed : P.correctDecoding
  errorProbabilityBound : P.errorProbability ≤ P.errorTolerance

def MajorityVotingAnalysisClosed (P : MajorityVotingAnalysisPackage) : Prop :=
  P.correctDecoding ∧ P.errorProbability ≤ P.errorTolerance

theorem majority_voting_analysis_closed_from_evidence
    (P : MajorityVotingAnalysisPackage) (E : MajorityVotingAnalysisEvidence P) :
    MajorityVotingAnalysisClosed P := by
  exact And.intro E.correctDecodingClosed E.errorProbabilityBound

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse