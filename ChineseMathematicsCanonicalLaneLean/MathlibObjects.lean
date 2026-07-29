import ChineseMathematicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChineseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChineseAdmittedObject where
  space : ChineseSpace
  essentialProperty : Prop
  bridgeCondition : Prop
  model : Type
  modelTopology : TopologicalSpace model
  isomorphicToModel : Prop
  conclusion : isomorphicToModel

structure ChineseEndgameState where
  object : ChineseAdmittedObject

def ChineseWitnessClosed (O : ChineseAdmittedObject) : Prop :=
  O.isomorphicToModel

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse