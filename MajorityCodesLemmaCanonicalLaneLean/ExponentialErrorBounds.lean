import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure ExponentialErrorBoundsPackage where
  blockLength : ℕ
  rate : ℚ
  errorExponent : ℚ
  boundType : Prop
  exponentPositive : Prop
  boundAsymptotic : ℚ → Prop

structure ExponentialErrorBoundsEvidence (P : ExponentialErrorBoundsPackage) where
  exponentPositiveClosed : P.exponentPositive
  boundAsymptoticClosed : ∀ ε > 0, P.boundAsymptotic ε

def ExponentialErrorBoundsClosed (P : ExponentialErrorBoundsPackage) : Prop :=
  P.exponentPositive ∧ ∀ ε > 0, P.boundAsymptotic ε

theorem exponential_error_bounds_closed_from_evidence
    (P : ExponentialErrorBoundsPackage) (E : ExponentialErrorBoundsEvidence P) :
    ExponentialErrorBoundsClosed P := by
  exact And.intro E.exponentPositiveClosed E.boundAsymptoticClosed

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse