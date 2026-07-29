import ChineseMathematicsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "chinese-mathematics-canonical-lane",
  theoremObject := "Chinese Mathematics Classical Statements",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedChineseClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_chinese_endgame A

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse
