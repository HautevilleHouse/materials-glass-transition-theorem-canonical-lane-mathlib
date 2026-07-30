import MaterialsGlassTransitionTheoremCanonicalLaneLean.ModeCouplingTheory

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure FragilityPackage where
  strongFragileIndex : Prop
  activationEnergyDistribution : Prop
  cooperativityCorrelation : Prop
  vogelFulcherTammannParameter : Prop

structure FragilityEvidence (F : FragilityPackage) where
  strongFragileIndexClosed : F.strongFragileIndex
  activationEnergyDistributionClosed : F.activationEnergyDistribution
  cooperativityCorrelationClosed : F.cooperativityCorrelation
  vogelFulcherTammannParameterClosed : F.vogelFulcherTammannParameter

def FragilityClosed (F : FragilityPackage) : Prop :=
  F.strongFragileIndex ∧ F.activationEnergyDistribution ∧ F.cooperativityCorrelation ∧ F.vogelFulcherTammannParameter

theorem fragility_closed_from_evidence (F : FragilityPackage) (E : FragilityEvidence F) : FragilityClosed F := by
  exact And.intro E.strongFragileIndexClosed (And.intro E.activationEnergyDistributionClosed (And.intro E.cooperativityCorrelationClosed E.vogelFulcherTammannParameterClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
