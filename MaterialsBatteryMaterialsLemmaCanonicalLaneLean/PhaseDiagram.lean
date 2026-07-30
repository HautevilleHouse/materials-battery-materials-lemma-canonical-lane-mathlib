import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  stablePhases : Prop
  transitionTemperatures : Prop
  miscibilityGaps : Prop
  phaseBoundaries : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  stablePhasesClosed : P.stablePhases
  transitionTemperaturesClosed : P.transitionTemperatures
  miscibilityGapsClosed : P.miscibilityGaps
  phaseBoundariesClosed : P.phaseBoundaries

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.stablePhases ∧ P.transitionTemperatures ∧ P.miscibilityGaps ∧ P.phaseBoundaries

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.stablePhasesClosed (And.intro E.transitionTemperaturesClosed (And.intro E.miscibilityGapsClosed E.phaseBoundariesClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse