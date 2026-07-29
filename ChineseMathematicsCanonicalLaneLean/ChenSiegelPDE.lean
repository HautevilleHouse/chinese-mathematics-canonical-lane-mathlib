import ChineseMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChineseMathematicsCanonicalLaneLean

structure ChenSiegelPDEPackage where
  complexMongeAmpere : Prop
  pluricomplexGreenFunction : Prop
  holderEstimates : Prop
  solutionExists : Prop

structure ChenSiegelPDEEvidence (C : ChenSiegelPDEPackage) where
  complexMongeAmpereClosed : C.complexMongeAmpere
  pluricomplexGreenFunctionClosed : C.pluricomplexGreenFunction
  holderEstimatesClosed : C.holderEstimates
  solutionExistsClosed : C.solutionExists

def ChenSiegelPDEClosed (C : ChenSiegelPDEPackage) : Prop :=
  C.complexMongeAmpere ∧ C.pluricomplexGreenFunction ∧ C.holderEstimates ∧ C.solutionExists

theorem chen_siegel_pde_closed_from_evidence (C : ChenSiegelPDEPackage) (E : ChenSiegelPDEEvidence C) :
    ChenSiegelPDEClosed C := by
  exact And.intro E.complexMongeAmpereClosed (And.intro E.pluricomplexGreenFunctionClosed (And.intro E.holderEstimatesClosed E.solutionExistsClosed))

end ChineseMathematicsCanonicalLaneLean
end HautevilleHouse