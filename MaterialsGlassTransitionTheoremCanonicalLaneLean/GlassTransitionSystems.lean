import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure GlassTransitionSystem where
  materialType : Type u
  temperature : Type v
  coolingRate : Type w
  freeVolume : temperature -> Prop
  cooperativelyRearrangingRegions : Prop
  fragilityIndex : temperature -> ℝ
  transitionTemperature : temperature
  relaxationTime : temperature -> ℝ
  viscosityDivergence : temperature -> Prop
  cooperativelyRearrangingRegionsTerm : cooperativelyRearrangingRegions
  freeVolumeTerm : ∀ T : temperature, freeVolume T
  fragilityIndexContinuous : Prop
  transitionTemperatureDefined : Prop

structure GlassTransitionSystemEvidence (S : GlassTransitionSystem) where
  cooperativelyRearrangingRegionsClosed : S.cooperativelyRearrangingRegions
  freeVolumeClosed : ∀ T : S.temperature, S.freeVolume T
  fragilityIndexContinuousClosed : S.fragilityIndexContinuous
  transitionTemperatureDefinedClosed : S.transitionTemperatureDefined

def GlassTransitionSystemClosed (S : GlassTransitionSystem) : Prop :=
  S.cooperativelyRearrangingRegions ∧
  (∀ T : S.temperature, S.freeVolume T) ∧
  S.fragilityIndexContinuous ∧
  S.transitionTemperatureDefined

theorem glass_transition_system_closed_from_evidence (S : GlassTransitionSystem) (E : GlassTransitionSystemEvidence S) : GlassTransitionSystemClosed S := by
  exact And.intro E.cooperativelyRearrangingRegionsClosed
    (And.intro E.freeVolumeClosed
      (And.intro E.fragilityIndexContinuousClosed E.transitionTemperatureDefinedClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse