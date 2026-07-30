import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  compositionRange : Prop
  phaseStability : Prop
  transitionKinetics : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  phaseStabilityClosed : P.phaseStability
  transitionKineticsClosed : P.transitionKinetics

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.phaseStability ∧ P.transitionKinetics

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed (And.intro E.phaseStabilityClosed E.transitionKineticsClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse