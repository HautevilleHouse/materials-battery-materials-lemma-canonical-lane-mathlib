import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure BatterySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BatteryAdmittedObject where
  space : BatterySpace
  closedBatterySystem : Prop
  electrodeStability : Prop
  ionicConductivityBound : Prop
  cycleLifeGuarantee : Prop
  capacityRetentionBound : Prop
  conclusion : cycleLifeGuarantee

def BatteryWitnessClosed (O : BatteryAdmittedObject) : Prop :=
  O.cycleLifeGuarantee

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse