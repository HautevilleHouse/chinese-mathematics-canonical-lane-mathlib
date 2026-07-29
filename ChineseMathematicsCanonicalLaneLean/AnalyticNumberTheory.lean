import ChineseMathematicsCanonicalLaneLean.ClassicalStatistics

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure AnalyticNumberTheoryPackage where
  zetaFunction : Type u
  primeNumberTheorem : Prop
  dirichletSeries : Type v

structure AnalyticNumberTheoryEvidence (A : AnalyticNumberTheoryPackage) where
  primeNumberTheoremClosed : A.primeNumberTheorem

def AnalyticNumberTheoryClosed (A : AnalyticNumberTheoryPackage) : Prop :=
  A.primeNumberTheorem

theorem analytic_number_theory_closed_from_evidence (A : AnalyticNumberTheoryPackage)
    (E : AnalyticNumberTheoryEvidence A) : AnalyticNumberTheoryClosed A := by
  exact E.primeNumberTheoremClosed

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse
