import MajorityCodesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def majorityCodesProjection : Projection MajorityCodesEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem majority_codes_projection_idempotent (x : MajorityCodesEndgameState) :
    majorityCodesProjection.toFun (majorityCodesProjection.toFun x) = majorityCodesProjection.toFun x := by
  exact majorityCodesProjection.idempotent x

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse