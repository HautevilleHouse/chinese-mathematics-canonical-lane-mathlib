import ChineseMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure ChineseEndgameState where
  object : AdmissibleClass

def chineseProjection : ChineseEndgameState → ChineseEndgameState := id

theorem chinese_projection_idempotent (x : ChineseEndgameState) :
    chineseProjection (chineseProjection x) = chineseProjection x := rfl

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse
