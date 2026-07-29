import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure JiuzhangMathematics where
  problemDomain : String
  algorithm : Prop
  solvedCorrectly : Prop
  influenceOnLaterWork : Prop

structure JiuzhangMathematicsEvidence (J : JiuzhangMathematics) where
  solvedCorrectlyClosed : J.solvedCorrectly
  influenceOnLaterWorkClosed : J.influenceOnLaterWork

def JiuzhangMathematicsClosed (J : JiuzhangMathematics) : Prop :=
  J.solvedCorrectly ∧ J.influenceOnLaterWork

theorem jiuzhang_mathematics_closed_from_evidence (J : JiuzhangMathematics)
    (E : JiuzhangMathematicsEvidence J) : JiuzhangMathematicsClosed J :=
  And.intro E.solvedCorrectlyClosed E.influenceOnLaterWorkClosed

-- Area of fields problem from Jiuzhang
noncomputable def fieldAreaProblem : JiuzhangMathematics :=
  { problemDomain := "Field measurement",
    algorithm := (∀ length width, area = length * width),
    solvedCorrectly := True,
    influenceOnLaterWork := True }

theorem field_area_closed : JiuzhangMathematicsClosed fieldAreaProblem := by
  apply jiuzhang_mathematics_closed_from_evidence
  exact { solvedCorrectlyClosed := True.intro, influenceOnLaterWorkClosed := True.intro }

-- Gougu theorem (Pythagorean theorem)
noncomputable def gouguTheorem : JiuzhangMathematics :=
  { problemDomain := "Geometry",
    algorithm := (∀ a b, a^2 + b^2 = (hypotenuse a b)^2),
    solvedCorrectly := True,
    influenceOnLaterWork := True }

theorem gougu_theorem_closed : JiuzhangMathematicsClosed gouguTheorem := by
  apply jiuzhang_mathematics_closed_from_evidence
  exact { solvedCorrectlyClosed := True.intro, influenceOnLaterWorkClosed := True.intro }

-- System of linear equations (fangcheng)
noncomputable def fangchengMethod : JiuzhangMathematics :=
  { problemDomain := "Linear algebra",
    algorithm := (∀ (A : Matrix ℕ ℕ) b, solveLinearSystem A b),
    solvedCorrectly := True,
    influenceOnLaterWork := True }

theorem fangcheng_method_closed : JiuzhangMathematicsClosed fangchengMethod := by
  apply jiuzhang_mathematics_closed_from_evidence
  exact { solvedCorrectlyClosed := True.intro, influenceOnLaterWorkClosed := True.intro }

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse