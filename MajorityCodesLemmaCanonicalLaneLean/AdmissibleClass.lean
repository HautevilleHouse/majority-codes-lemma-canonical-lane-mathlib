import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MajorityCodesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MajorityCodesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse