import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

def ConstrainedBatteryMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_battery_materials_endgame (A : AdmissibleClass) :
    ConstrainedBatteryMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse