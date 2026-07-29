import MajorityCodesLemmaCanonicalLaneLean.CodeConstruction

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure ProbabilityAnalysisPackage where
  noiseModel : Prop
  symbolErrorProbability : ℝ
  majorityVoteErrorBound : Prop
  largeDeviationEstimate : Prop
  codeLengthThreshold : ℕ

structure ProbabilityAnalysisEvidence (P : ProbabilityAnalysisPackage) where
  majorityVoteErrorBoundClosed : P.majorityVoteErrorBound
  largeDeviationEstimateClosed : P.largeDeviationEstimate
  codeLengthThresholdClosed : P.codeLengthThreshold > 0

def ProbabilityAnalysisClosed (P : ProbabilityAnalysisPackage) : Prop :=
  P.majorityVoteErrorBound ∧ P.largeDeviationEstimate ∧ P.codeLengthThreshold > 0

theorem probability_analysis_closed_from_evidence (P : ProbabilityAnalysisPackage)
    (E : ProbabilityAnalysisEvidence P) : ProbabilityAnalysisClosed P := by
  exact And.intro E.majorityVoteErrorBoundClosed
    (And.intro E.largeDeviationEstimateClosed E.codeLengthThresholdClosed)

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse