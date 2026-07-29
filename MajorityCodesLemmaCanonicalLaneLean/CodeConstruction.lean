import MajorityCodesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure CodeConstructionPackage where
  alphabet : Type
  blockLength : ℕ
  codeRate : ℝ
  majorityDecodingRule : Prop
  errorCorrectionBound : Prop
  codeConstructionEvaluated : Prop

structure CodeConstructionEvidence (C : CodeConstructionPackage) where
  majorityDecodingRuleClosed : C.majorityDecodingRule
  errorCorrectionBoundClosed : C.errorCorrectionBound
  codeConstructionEvaluatedClosed : C.codeConstructionEvaluated

def CodeConstructionClosed (C : CodeConstructionPackage) : Prop :=
  C.majorityDecodingRule ∧ C.errorCorrectionBound ∧ C.codeConstructionEvaluated

theorem code_construction_closed_from_evidence (C : CodeConstructionPackage)
    (E : CodeConstructionEvidence C) : CodeConstructionClosed C := by
  exact And.intro E.majorityDecodingRuleClosed
    (And.intro E.errorCorrectionBoundClosed E.codeConstructionEvaluatedClosed)

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse