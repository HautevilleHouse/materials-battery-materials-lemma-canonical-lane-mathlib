import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElectrodeMicrostructurePackage where
  particleSizeDistribution : List ℝ
  porosity : ℝ
  tortuosity : ℝ
  surfaceArea : ℝ
  morphologyValid : Prop
  transportPropertiesValid : Prop

structure ElectrodeMicrostructureEvidence (E : ElectrodeMicrostructurePackage) where
  morphologyValidClosed : E.morphologyValid
  transportPropertiesValidClosed : E.transportPropertiesValid

def ElectrodeMicrostructureClosed (E : ElectrodeMicrostructurePackage) : Prop :=
  E.morphologyValid ∧ E.transportPropertiesValid

theorem electrode_microstructure_closed_from_evidence (E : ElectrodeMicrostructurePackage) (Ev : ElectrodeMicrostructureEvidence E) : ElectrodeMicrostructureClosed E := by
  exact And.intro Ev.morphologyValidClosed Ev.transportPropertiesValidClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse