import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsLemmaCanonicalLaneLean

structure CrystallographyGeometry where
  atomPositions : Type u
  unitCell : Type v
  latticeVectors : Type w
  spaceGroup : Prop
  symmetryOperations : Prop
  diffractionPattern : Prop
  unitCellTerm : unitCell
  spaceGroupTerm : spaceGroup
  symmetryOperationsTerm : symmetryOperations
  diffractionPatternTerm : diffractionPattern

structure CrystallographyEvidence (C : CrystallographyGeometry) where
  unitCellClosed : C.unitCell
  spaceGroupClosed : C.spaceGroup
  symmetryOperationsClosed : C.symmetryOperations
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyGeometry) : Prop :=
  C.unitCell ∧ C.spaceGroup ∧ C.symmetryOperations ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyGeometry) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.unitCellClosed (And.intro E.spaceGroupClosed (And.intro E.symmetryOperationsClosed E.diffractionPatternClosed))

end MaterialsBatteryMaterialsLemmaCanonicalLaneLean
end HautevilleHouse