import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure ListDecodingPackage (A : AdmittedCode) where
  listSize : ℕ
  listDecodingRadius : ℚ
  listDecodingAlgorithm : Prop

def ListDecodingClosed {A : AdmittedCode} (L : ListDecodingPackage A) : Prop :=
  L.listDecodingRadius ≥ A.relativeDistance / 2 ∧ L.listDecodingAlgorithm

theorem list_decoding_closed_from_evidence {A : AdmittedCode} (L : ListDecodingPackage A) (h : ListDecodingClosed L) : ListDecodingClosed L := h

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse