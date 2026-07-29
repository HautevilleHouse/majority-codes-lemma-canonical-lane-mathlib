import MajorityCodesLemmaCanonicalLaneLean.ListDecoding

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure MajorityAlgorithmPackage {C : CodeConstructionPackage}
    (D : ListDecodingPackage C) where
  majorityFunction : (Fin C.blockLength -> Fin C.alphabetSize) -> Fin C.alphabetSize
  errorCorrectionRadius : Nat
  successProbability : Float
  majorityRuleHolds : Prop
  majorityAlgorithmCorrect : D.listDecodingAlgorithmExists → majorityRuleHolds

structure MajorityAlgorithmEvidence {C : CodeConstructionPackage}
    {D : ListDecodingPackage C} (M : MajorityAlgorithmPackage D) where
  majorityRuleHoldsClosed : M.majorityRuleHolds

def MajorityAlgorithmClosed {C : CodeConstructionPackage}
    {D : ListDecodingPackage C} (M : MajorityAlgorithmPackage D) : Prop :=
  M.majorityRuleHolds

theorem majority_algorithm_closed_from_evidence
    {C : CodeConstructionPackage} {D : ListDecodingPackage C}
    (M : MajorityAlgorithmPackage D) (E : MajorityAlgorithmEvidence M) :
    MajorityAlgorithmClosed M := by
  exact E.majorityRuleHoldsClosed

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse