import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure BatteryMaterialsLemma where
  electrodeStability : Prop
  ionicConductivity : Prop
  cycleLife : Prop
  capacityRetention : Prop
  electrodeStabilityTerm : electrodeStability
  ionicConductivityTerm : ionicConductivity
  cycleLifeTerm : cycleLife
  capacityRetentionTerm : capacityRetention

structure BatteryMaterialsEvidence (B : BatteryMaterialsLemma) where
  electrodeStabilityClosed : B.electrodeStability
  ionicConductivityClosed : B.ionicConductivity
  cycleLifeClosed : B.cycleLife
  capacityRetentionClosed : B.capacityRetention

def BatteryMaterialsClosure (B : BatteryMaterialsLemma) : Prop :=
  B.electrodeStability ∧ B.ionicConductivity ∧ B.cycleLife ∧ B.capacityRetention

theorem battery_materials_closed_from_evidence (B : BatteryMaterialsLemma) (E : BatteryMaterialsEvidence B) :
    BatteryMaterialsClosure B := by
  exact And.intro E.electrodeStabilityClosed (And.intro E.ionicConductivityClosed (And.intro E.cycleLifeClosed E.capacityRetentionClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse