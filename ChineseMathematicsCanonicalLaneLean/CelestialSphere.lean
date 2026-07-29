import Mathlib.Analysis.Calculus.Series

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure CelestialSphereModel where
  radius : ℝ
  seasons : Nat
  solarTerms : Nat
  observations : Prop
  computationalAlgorithms : Prop

structure CelestialSphereEvidence (C : CelestialSphereModel) where
  observationsClosed : C.observations
  computationalAlgorithmsClosed : C.computationalAlgorithms

def CelestialSphereClosed (C : CelestialSphereModel) : Prop :=
  C.observations ∧ C.computationalAlgorithms

theorem celestial_sphere_closed_from_evidence (C : CelestialSphereModel) (E : CelestialSphereEvidence C) : CelestialSphereClosed C := by
  exact And.intro E.observationsClosed E.computationalAlgorithmsClosed

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse