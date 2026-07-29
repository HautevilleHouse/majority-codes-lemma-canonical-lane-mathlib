import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure ConsistencyLemmaPackage (A : AdmissibleClass) where
  blockLength : ℕ
  codeRate : ℝ
  agreementParameter : ℝ
  consistencyBound : Prop
  consistencyBoundClosed : consistencyBound

structure ConsistencyLemmaEvidence (P : ConsistencyLemmaPackage) where
  consistencyBoundClosed : P.consistencyBound

def ConsistencyLemmaClosed (P : ConsistencyLemmaPackage) : Prop :=
  P.consistencyBound

theorem consistency_lemma_closed_from_evidence (P : ConsistencyLemmaPackage) (E : ConsistencyLemmaEvidence P) :
    ConsistencyLemmaClosed P := by
  exact E.consistencyBoundClosed

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse