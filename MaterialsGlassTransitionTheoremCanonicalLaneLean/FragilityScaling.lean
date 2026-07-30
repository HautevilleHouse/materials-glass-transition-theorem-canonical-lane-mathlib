import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure FragilityScalingPackage where
  strongFragileClassification : Prop
  steepnessIndex : Prop
  activationEnergyRatio : Prop

structure FragilityScalingEvidence (P : FragilityScalingPackage) where
  strongFragileClassificationClosed : P.strongFragileClassification
  steepnessIndexClosed : P.steepnessIndex
  activationEnergyRatioClosed : P.activationEnergyRatio

def FragilityScalingClosed (P : FragilityScalingPackage) : Prop :=
  P.strongFragileClassification ∧ P.steepnessIndex ∧ P.activationEnergyRatio

theorem fragility_scaling_closed_from_evidence (P : FragilityScalingPackage)
    (E : FragilityScalingEvidence P) : FragilityScalingClosed P := by
  exact And.intro E.strongFragileClassificationClosed
    (And.intro E.steepnessIndexClosed E.activationEnergyRatioClosed)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
