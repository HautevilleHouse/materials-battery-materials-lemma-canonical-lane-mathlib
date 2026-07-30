import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure AnodeLithiationMechanicsPackage where
  volumeExpansion : Prop
  stressEvolution : Prop
  lithiationFrontPropagation : Prop
  capacityRetention : Prop

structure AnodeLithiationMechanicsEvidence (A : AnodeLithiationMechanicsPackage) where
  volumeExpansionClosed : A.volumeExpansion
  stressEvolutionClosed : A.stressEvolution
  lithiationFrontPropagationClosed : A.lithiationFrontPropagation
  capacityRetentionClosed : A.capacityRetention

def AnodeLithiationMechanicsClosed (A : AnodeLithiationMechanicsPackage) : Prop :=
  A.volumeExpansion ∧ A.stressEvolution ∧ A.lithiationFrontPropagation ∧ A.capacityRetention

theorem anode_lithiation_mechanics_closed_from_evidence
    (A : AnodeLithiationMechanicsPackage) (Ev : AnodeLithiationMechanicsEvidence A) :
    AnodeLithiationMechanicsClosed A := by
  exact And.intro Ev.volumeExpansionClosed
    (And.intro Ev.stressEvolutionClosed
      (And.intro Ev.lithiationFrontPropagationClosed Ev.capacityRetentionClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse