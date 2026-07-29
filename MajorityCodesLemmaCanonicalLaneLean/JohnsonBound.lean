import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure JohnsonBoundPackage (A : AdmittedCode) where
  listSizeBound : ℕ
  radiusParameter : ℚ
  boundHolds : Prop

def JohnsonBoundClosed {A : AdmittedCode} (J : JohnsonBoundPackage A) : Prop :=
  J.boundHolds ∧ J.listSizeBound ≤ A.blockLength

theorem johnson_bound_closed_from_evidence {A : AdmittedCode} (J : JohnsonBoundPackage A) (h : JohnsonBoundClosed J) : JohnsonBoundClosed J := h

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse