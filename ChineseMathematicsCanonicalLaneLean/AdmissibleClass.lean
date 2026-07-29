import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure AdmissibleClass where
  object : ChineseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChineseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse