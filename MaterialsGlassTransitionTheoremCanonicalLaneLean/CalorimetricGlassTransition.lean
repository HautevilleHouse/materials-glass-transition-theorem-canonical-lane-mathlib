import MaterialsGlassTransitionTheoremCanonicalLaneLean.FragilityClassification

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure CalorimetricPackage where
  fictiveTemperature : Prop
  enthalpyRelaxation : Prop
  heatCapacityJump : Prop
  configurationalEntropy : Prop

structure CalorimetricEvidence (C : CalorimetricPackage) where
  fictiveTemperatureClosed : C.fictiveTemperature
  enthalpyRelaxationClosed : C.enthalpyRelaxation
  heatCapacityJumpClosed : C.heatCapacityJump
  configurationalEntropyClosed : C.configurationalEntropy

def CalorimetricClosed (C : CalorimetricPackage) : Prop :=
  C.fictiveTemperature ∧ C.enthalpyRelaxation ∧ C.heatCapacityJump ∧ C.configurationalEntropy

theorem calorimetric_closed_from_evidence (C : CalorimetricPackage) (E : CalorimetricEvidence C) : CalorimetricClosed C := by
  exact And.intro E.fictiveTemperatureClosed (And.intro E.enthalpyRelaxationClosed (And.intro E.heatCapacityJumpClosed E.configurationalEntropyClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
