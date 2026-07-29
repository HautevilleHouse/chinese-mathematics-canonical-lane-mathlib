import ChineseMathematicsCanonicalLaneLean.AnalyticNumberTheory

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure AlgebraicGeometryPackage where
  scheme : Type u
  cohomology : Type v
  theoremRiemannRoch : Prop

structure AlgebraicGeometryEvidence (A : AlgebraicGeometryPackage) where
  theoremRiemannRochClosed : A.theoremRiemannRoch

def AlgebraicGeometryClosed (A : AlgebraicGeometryPackage) : Prop :=
  A.theoremRiemannRoch

theorem algebraic_geometry_closed_from_evidence (A : AlgebraicGeometryPackage)
    (E : AlgebraicGeometryEvidence A) : AlgebraicGeometryClosed A := by
  exact E.theoremRiemannRochClosed

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse
