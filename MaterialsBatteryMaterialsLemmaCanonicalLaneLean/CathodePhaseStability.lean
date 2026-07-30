import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure CathodePhaseStabilityPackage where
  layeredStructure : Prop
  spinelPhase : Prop
  olivinePhase : Prop
  phaseTransitionTemperature : Prop
  electrochemicalCycling : Prop

structure CathodePhaseStabilityEvidence (C : CathodePhaseStabilityPackage) where
  layeredStructureClosed : C.layeredStructure
  spinelPhaseClosed : C.spinelPhase
  olivinePhaseClosed : C.olivinePhase
  phaseTransitionTemperatureClosed : C.phaseTransitionTemperature
  electrochemicalCyclingClosed : C.electrochemicalCycling

def CathodePhaseStabilityClosed (C : CathodePhaseStabilityPackage) : Prop :=
  C.layeredStructure ∧ C.spinelPhase ∧ C.olivinePhase ∧
  C.phaseTransitionTemperature ∧ C.electrochemicalCycling

theorem cathode_phase_stability_closed_from_evidence
    (C : CathodePhaseStabilityPackage) (Ev : CathodePhaseStabilityEvidence C) :
    CathodePhaseStabilityClosed C := by
  exact And.intro Ev.layeredStructureClosed
    (And.intro Ev.spinelPhaseClosed
      (And.intro Ev.olivinePhaseClosed
        (And.intro Ev.phaseTransitionTemperatureClosed Ev.electrochemicalCyclingClosed)))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse