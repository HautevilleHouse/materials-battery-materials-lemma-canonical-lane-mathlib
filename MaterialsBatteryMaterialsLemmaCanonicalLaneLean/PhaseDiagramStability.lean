import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phases : List String
  freeEnergy : String → ℝ
  convexHull : List (String × ℝ)
  transitionEnergies : List (String × ℝ)
  equilibriumPhases : Prop
  stabilityRange : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumPhasesClosed : P.equilibriumPhases
  stabilityRangeClosed : P.stabilityRange

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumPhases ∧ P.stabilityRange

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumPhasesClosed E.stabilityRangeClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse