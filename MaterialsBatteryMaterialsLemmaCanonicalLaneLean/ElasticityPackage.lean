import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Prop
  youngModulus : Prop
  fractureToughness : Prop
  cyclingDegradation : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  youngModulusClosed : E.youngModulus
  fractureToughnessClosed : E.fractureToughness
  cyclingDegradationClosed : E.cyclingDegradation

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.youngModulus ∧ E.fractureToughness ∧ E.cyclingDegradation

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed (And.intro Ev.youngModulusClosed (And.intro Ev.fractureToughnessClosed Ev.cyclingDegradationClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse