import MajorityCodesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MajorityCodesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MajorityCodesSpace where
  carrier : Type
  alphabet : Type
  codeLength : Nat
  codewords : List (List carrier)
  majorityFunction : (List carrier) → carrier

structure MajorityCodesAdmittedObject where
  space : MajorityCodesSpace
  errorCorrectingCapability : Prop
  rateAchievable : Prop
  decodingProcedureCorrect : Prop
  conclusion : decodingProcedureCorrect

structure MajorityCodesEndgameState where
  object : MajorityCodesAdmittedObject

def MajorityCodesWitnessClosed (O : MajorityCodesAdmittedObject) : Prop :=
  O.decodingProcedureCorrect

end MajorityCodesLemmaCanonicalLaneLean
end HautevilleHouse