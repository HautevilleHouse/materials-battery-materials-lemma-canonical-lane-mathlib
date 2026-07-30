import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorship where
  elasticModuli : Type u
  stressStrainRelation : Prop
  anisotropicResponse : Prop
  complianceMatrix : Prop
  youngModulus : Prop
  stressStrainRelationTerm : stressStrainRelation
  anisotropicResponseTerm : anisotropicResponse
  complianceMatrixTerm : complianceMatrix
  youngModulusTerm : youngModulus

structure ElasticityEvidence (E : ElasticityTensorship) where
  stressStrainRelationClosed : E.stressStrainRelation
  anisotropicResponseClosed : E.anisotropicResponse
  complianceMatrixClosed : E.complianceMatrix
  youngModulusClosed : E.youngModulus

def ElasticityClosed (E : ElasticityTensorship) : Prop :=
  E.stressStrainRelation ∧ E.anisotropicResponse ∧ E.complianceMatrix ∧ E.youngModulus

theorem elasticity_closed_from_evidence (E : ElasticityTensorship) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed (And.intro Ev.anisotropicResponseClosed (And.intro Ev.complianceMatrixClosed Ev.youngModulusClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse