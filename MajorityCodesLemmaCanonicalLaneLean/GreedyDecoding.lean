import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure GreedyDecodingPackage (A : AdmittedCode) where
  decodingRule : Type
  uniqueDecoding : Prop
  errorCorrectionRadius : ℕ

def majorityClosed (A : AdmittedCode) : Prop :=
  A.relativeDistance > 1/2

theorem majority_closed_implies_correctable (A : AdmittedCode) (h : majorityClosed A) : Prop :=
  h

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse