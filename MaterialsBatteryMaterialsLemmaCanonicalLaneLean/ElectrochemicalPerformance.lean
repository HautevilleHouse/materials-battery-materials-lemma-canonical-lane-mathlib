import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElectrochemicalPerformancePackage where
  capacity : Prop
  voltageProfile : Prop
  cyclingStability : Prop
  rateCapability : Prop
  impedance : Prop

structure ElectrochemicalPerformanceEvidence (E : ElectrochemicalPerformancePackage) where
  capacityClosed : E.capacity
  voltageProfileClosed : E.voltageProfile
  cyclingStabilityClosed : E.cyclingStability
  rateCapabilityClosed : E.rateCapability
  impedanceClosed : E.impedance

def ElectrochemicalPerformanceClosed (E : ElectrochemicalPerformancePackage) : Prop :=
  E.capacity ∧ E.voltageProfile ∧ E.cyclingStability ∧ E.rateCapability ∧ E.impedance

theorem electrochemical_performance_closed_from_evidence (E : ElectrochemicalPerformancePackage) (Ev : ElectrochemicalPerformanceEvidence E) :
    ElectrochemicalPerformanceClosed E := by
  exact And.intro Ev.capacityClosed (And.intro Ev.voltageProfileClosed (And.intro Ev.cyclingStabilityClosed (And.intro Ev.rateCapabilityClosed Ev.impedanceClosed)))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse