import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElectrolyteDegradationPackage where
  voltageWindow : Prop
  sideReactionKinetics : Prop
  seiLayerFormation : Prop
  capacityFadeRate : Prop

structure ElectrolyteDegradationEvidence (E : ElectrolyteDegradationPackage) where
  voltageWindowClosed : E.voltageWindow
  sideReactionKineticsClosed : E.sideReactionKinetics
  seiLayerFormationClosed : E.seiLayerFormation
  capacityFadeRateClosed : E.capacityFadeRate

def ElectrolyteDegradationClosed (E : ElectrolyteDegradationPackage) : Prop :=
  E.voltageWindow ∧ E.sideReactionKinetics ∧ E.seiLayerFormation ∧ E.capacityFadeRate

theorem electrolyte_degradation_closed_from_evidence
    (E : ElectrolyteDegradationPackage) (Ev : ElectrolyteDegradationEvidence E) :
    ElectrolyteDegradationClosed E := by
  exact And.intro Ev.voltageWindowClosed
    (And.intro Ev.sideReactionKineticsClosed
      (And.intro Ev.seiLayerFormationClosed Ev.capacityFadeRateClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse