import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLatticeType : Prop
  defectFormationEnergy : Prop
  ionicConductivity : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeTypeClosed : C.bravaisLatticeType
  defectFormationEnergyClosed : C.defectFormationEnergy
  ionicConductivityClosed : C.ionicConductivity

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLatticeType ∧ C.defectFormationEnergy ∧ C.ionicConductivity

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.bravaisLatticeTypeClosed (And.intro E.defectFormationEnergyClosed E.ionicConductivityClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse