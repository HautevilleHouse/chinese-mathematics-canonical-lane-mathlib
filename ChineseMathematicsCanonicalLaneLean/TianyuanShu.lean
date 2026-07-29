import Mathlib.Data.Polynomial.Basic

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure TianyuanShuSystem where
  unknowns : Nat
  degree : Nat
  equations : Vector (Polynomial ℚ) unknowns
  eliminationMethod : Prop
  rootFinding : Prop

structure TianyuanShuEvidence (T : TianyuanShuSystem) where
  eliminationMethodClosed : T.eliminationMethod
  rootFindingClosed : T.rootFinding

def TianyuanShuClosed (T : TianyuanShuSystem) : Prop :=
  T.eliminationMethod ∧ T.rootFinding

theorem tianyuan_shu_closed_from_evidence (T : TianyuanShuSystem) (E : TianyuanShuEvidence T) : TianyuanShuClosed T := by
  exact And.intro E.eliminationMethodClosed E.rootFindingClosed

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse