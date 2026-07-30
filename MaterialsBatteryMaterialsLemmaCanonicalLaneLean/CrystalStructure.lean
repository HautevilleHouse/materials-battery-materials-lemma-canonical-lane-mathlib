import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  unitCellVolume : Prop
  latticeParameters : Prop
  symmetryGroup : Prop
  sitesOccupied : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  unitCellVolumeClosed : C.unitCellVolume
  latticeParametersClosed : C.latticeParameters
  symmetryGroupClosed : C.symmetryGroup
  sitesOccupiedClosed : C.sitesOccupied

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.unitCellVolume ∧ C.latticeParameters ∧ C.symmetryGroup ∧ C.sitesOccupied

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.latticeParametersClosed (And.intro E.symmetryGroupClosed E.sitesOccupiedClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse