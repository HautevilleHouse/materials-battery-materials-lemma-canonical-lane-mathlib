import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCellVolume : ℝ
  atomicPositions : List (ℝ × ℝ × ℝ)
  spaceGroup : String
  symmetryEquivariant : Prop
  bravaisLatticeValid : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  symmetryEquivariantClosed : C.symmetryEquivariant
  bravaisLatticeValidClosed : C.bravaisLatticeValid

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.symmetryEquivariant ∧ C.bravaisLatticeValid

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.symmetryEquivariantClosed E.bravaisLatticeValidClosed

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse