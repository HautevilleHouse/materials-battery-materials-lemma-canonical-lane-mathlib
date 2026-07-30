import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticTensor : Matrix (Fin 3) (Fin 3) ℝ
  stressStrainRelation : Prop
  fractureToughness : ℝ
  youngModulus : ℝ
  linearElasticValid : Prop
  fractureCriteriaValid : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  linearElasticValidClosed : E.linearElasticValid
  fractureCriteriaValidClosed : E.fractureCriteriaValid

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.linearElasticValid ∧ E.fractureCriteriaValid

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.linearElasticValidClosed Ev.fractureCriteriaValidClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse