import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure IonicConductivityPackage where
  conductivity : Float
  activationEnergy : Float
  temperature : Float
  nernstEinsteinValid : Prop

def IonicConductivityClosed (I : IonicConductivityPackage) : Prop :=
  I.nernstEinsteinValid

structure IonicConductivityEvidence (I : IonicConductivityPackage) where
  nernstEinsteinValidClosed : I.nernstEinsteinValid

theorem ionic_conductivity_closed_from_evidence (I : IonicConductivityPackage) (E : IonicConductivityEvidence I) : IonicConductivityClosed I := by
  exact E.nernstEinsteinValidClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse