import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElasticPropertiesPackage where
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop
  stressStrainRelation : Prop

structure ElasticPropertiesEvidence (E : ElasticPropertiesPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  stressStrainRelationClosed : E.stressStrainRelation

def ElasticPropertiesClosed (E : ElasticPropertiesPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.shearModulus ∧ E.bulkModulus ∧ E.stressStrainRelation

theorem elastic_properties_closed_from_evidence (E : ElasticPropertiesPackage) (Ev : ElasticPropertiesEvidence E) :
    ElasticPropertiesClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed Ev.stressStrainRelationClosed)))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse