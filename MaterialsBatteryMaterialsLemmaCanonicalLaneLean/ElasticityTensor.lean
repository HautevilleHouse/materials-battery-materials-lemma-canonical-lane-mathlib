import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessMatrix : List (List Float)
  complianceMatrix : List (List Float)
  youngModulus : Float
  poissonRatio : Float
  elasticStability : Prop

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.elasticStability

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  elasticStabilityClosed : E.elasticStability

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact Ev.elasticStabilityClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse