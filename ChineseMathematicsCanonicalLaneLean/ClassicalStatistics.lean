import ChineseMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure ClassicalStatisticsPackage where
  sampleSpace : Type u
  distributionFamily : Type v
  sufficiency : Prop
  completeness : Prop
  exponentialFamily : Prop

structure ClassicalStatisticsEvidence (C : ClassicalStatisticsPackage) where
  sufficiencyClosed : C.sufficiency
  completenessClosed : C.completeness
  exponentialFamilyClosed : C.exponentialFamily

def ClassicalStatisticsClosed (C : ClassicalStatisticsPackage) : Prop :=
  C.sufficiency ∧ C.completeness ∧ C.exponentialFamily

theorem classical_statistics_closed_from_evidence (C : ClassicalStatisticsPackage)
    (E : ClassicalStatisticsEvidence C) : ClassicalStatisticsClosed C := by
  exact And.intro E.sufficiencyClosed (And.intro E.completenessClosed E.exponentialFamilyClosed)

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse
