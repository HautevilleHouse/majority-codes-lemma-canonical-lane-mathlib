import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure MajorityCodesAdmittedObject where
  alphabet : Type
  blockLength : ℕ
  codeRate : ℝ
  agreementParameter : ℝ
  majorityDecodingSuccess : Prop
  conclusion : majorityDecodingSuccess

structure MajorityCodesWitnessClosed (O : MajorityCodesAdmittedObject) : Prop :=
  O.majorityDecodingSuccess

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse