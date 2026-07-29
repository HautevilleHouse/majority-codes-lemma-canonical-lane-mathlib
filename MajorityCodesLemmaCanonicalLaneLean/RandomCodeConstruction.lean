import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure RandomCodeConstructionPackage where
  codeLength : ℕ
  alphabetSize : ℕ
  rate : ℚ
  codewords : ℕ
  randomDistribution : Prop
  expectedDistance : ℚ
  minimumDistance : ℕ

structure RandomCodeConstructionEvidence (P : RandomCodeConstructionPackage) where
  randomDistributionClosed : P.randomDistribution
  expectedDistanceComputed : P.expectedDistance = 1 - (1 / (P.alphabetSize : ℚ))
  minimumDistanceBound : (P.minimumDistance : ℚ) ≥ P.expectedDistance * (P.codeLength : ℚ) / 2

def RandomCodeConstructionClosed (P : RandomCodeConstructionPackage) : Prop :=
  P.randomDistribution ∧ P.expectedDistance = 1 - (1 / (P.alphabetSize : ℚ)) ∧
  (P.minimumDistance : ℚ) ≥ P.expectedDistance * (P.codeLength : ℚ) / 2

theorem random_code_construction_closed_from_evidence
    (P : RandomCodeConstructionPackage) (E : RandomCodeConstructionEvidence P) :
    RandomCodeConstructionClosed P := by
  exact And.intro E.randomDistributionClosed (And.intro E.expectedDistanceComputed E.minimumDistanceBound)

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse