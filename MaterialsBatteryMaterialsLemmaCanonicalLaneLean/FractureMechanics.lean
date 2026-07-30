import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure FractureMechanics where
  crackPropagation : Type u
  stressIntensityFactor : Prop
  fractureToughness : Prop
  cyclicFatigue : Prop
  energyReleaseRate : Prop
  stressIntensityFactorTerm : stressIntensityFactor
  fractureToughnessTerm : fractureToughness
  cyclicFatigueTerm : cyclicFatigue
  energyReleaseRateTerm : energyReleaseRate

structure FractureEvidence (F : FractureMechanics) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  cyclicFatigueClosed : F.cyclicFatigue
  energyReleaseRateClosed : F.energyReleaseRate

def FractureClosed (F : FractureMechanics) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.cyclicFatigue ∧ F.energyReleaseRate

theorem fracture_closed_from_evidence (F : FractureMechanics) (E : FractureEvidence F) :
    FractureClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.fractureToughnessClosed (And.intro E.cyclicFatigueClosed E.energyReleaseRateClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse