import ChineseMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure FourColorPackage where
  planarGraph : Prop
  vertexColoring : Prop
  edgeColoring : Prop
  coloringExists : Prop

structure FourColorEvidence (F : FourColorPackage) where
  planarGraphClosed : F.planarGraph
  vertexColoringClosed : F.vertexColoring
  edgeColoringClosed : F.edgeColoring
  coloringExistsClosed : F.coloringExists

def FourColorClosed (F : FourColorPackage) : Prop :=
  F.planarGraph ∧ F.vertexColoring ∧ F.edgeColoring ∧ F.coloringExists

theorem four_color_closed_from_evidence (F : FourColorPackage) (E : FourColorEvidence F) :
    FourColorClosed F := by
  exact And.intro E.planarGraphClosed (And.intro E.vertexColoringClosed (And.intro E.edgeColoringClosed E.coloringExistsClosed))

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse