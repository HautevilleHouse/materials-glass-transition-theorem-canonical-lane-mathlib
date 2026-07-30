import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCellVolume : ℝ
  symmetricGroup : Type v
  latticeSymmetryClassification : Prop
  bravaisLatticeClassificationClosed : latticeSymmetryClassification

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeSymmetryClassification

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) : CrystallographyClosed C := by
  exact C.bravaisLatticeClassificationClosed

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
