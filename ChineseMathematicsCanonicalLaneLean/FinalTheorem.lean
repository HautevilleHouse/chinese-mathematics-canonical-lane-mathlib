import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

open HautevilleHouse.ChineseMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChineseMathematicsClosed (gongSunlongWhiteHorseObject) ∧ ChineseMathematicsClosed (chineseRemainderTheoremObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro gong_sunlong_white_horse_closed chinese_remainder_theorem_closed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ChineseMathematicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem chinese_mathematics_endgame (A : AdmissibleClass) : ChineseMathematicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse