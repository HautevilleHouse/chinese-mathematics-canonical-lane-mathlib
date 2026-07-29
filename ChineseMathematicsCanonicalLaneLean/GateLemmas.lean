import ChineseMathematicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse