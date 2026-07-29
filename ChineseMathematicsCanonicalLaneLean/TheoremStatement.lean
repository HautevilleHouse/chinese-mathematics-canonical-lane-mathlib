import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure ChineseMathematicsAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  keyStructure : Prop
  conclusion : keyStructure

def ChineseMathematicsWitnessClosed (O : ChineseMathematicsAdmittedObject) : Prop :=
  O.keyStructure

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse