import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure BatteryPerformancePackage where
  capacity : ℝ
  cycleLife : ℕ
  rateCapability : ℝ
  ionicConductivity : ℝ
  capacityStable : Prop
  conductivityWithinBounds : Prop

structure BatteryPerformanceEvidence (B : BatteryPerformancePackage) where
  capacityStableClosed : B.capacityStable
  conductivityWithinBoundsClosed : B.conductivityWithinBounds

def BatteryPerformanceClosed (B : BatteryPerformancePackage) : Prop :=
  B.capacityStable ∧ B.conductivityWithinBounds

theorem battery_performance_closed_from_evidence (B : BatteryPerformancePackage) (E : BatteryPerformanceEvidence B) : BatteryPerformanceClosed B := by
  exact And.intro E.capacityStableClosed E.conductivityWithinBoundsClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse