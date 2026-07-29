import ChineseMathematicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChineseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse