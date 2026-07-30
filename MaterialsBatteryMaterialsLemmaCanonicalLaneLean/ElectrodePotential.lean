import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElectrodePotentialPackage where
  redoxPotential : Float
  openCircuitVoltage : Float
  capacity : Float
  thermodynamicStability : Prop

def ElectrodePotentialClosed (E : ElectrodePotentialPackage) : Prop :=
  E.thermodynamicStability

structure ElectrodePotentialEvidence (E : ElectrodePotentialPackage) where
  thermodynamicStabilityClosed : E.thermodynamicStability

theorem electrode_potential_closed_from_evidence (E : ElectrodePotentialPackage) (Ev : ElectrodePotentialEvidence E) : ElectrodePotentialClosed E := by
  exact Ev.thermodynamicStabilityClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse