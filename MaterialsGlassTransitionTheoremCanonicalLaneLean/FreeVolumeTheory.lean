import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionSystems

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure FreeVolumeTheoryPackage (S : GlassTransitionSystem) where
  holeFormationEnergy : S.temperature -> ℝ
  criticalHoleVolume : Prop
  occupiedVolumeFraction : S.temperature -> ℝ
  wlfCoefficients : ℝ × ℝ
  temperatureDependence : Prop
  criticalHoleVolumeTerm : criticalHoleVolume
  occupiedVolumeFractionContinuous : Prop
  wlfCoefficientsComputed : Prop
  temperatureDependenceTerm : temperatureDependence

structure FreeVolumeTheoryEvidence {S : GlassTransitionSystem} (F : FreeVolumeTheoryPackage S) where
  criticalHoleVolumeClosed : F.criticalHoleVolume
  occupiedVolumeFractionContinuousClosed : F.occupiedVolumeFractionContinuous
  wlfCoefficientsComputedClosed : F.wlfCoefficientsComputed
  temperatureDependenceClosed : F.temperatureDependence

def FreeVolumeTheoryClosed {S : GlassTransitionSystem} (F : FreeVolumeTheoryPackage S) : Prop :=
  F.criticalHoleVolume ∧ F.occupiedVolumeFractionContinuous ∧ F.wlfCoefficientsComputed ∧ F.temperatureDependence

theorem free_volume_theory_closed_from_evidence {S : GlassTransitionSystem} (F : FreeVolumeTheoryPackage S) (E : FreeVolumeTheoryEvidence F) : FreeVolumeTheoryClosed F := by
  exact And.intro E.criticalHoleVolumeClosed
    (And.intro E.occupiedVolumeFractionContinuousClosed
      (And.intro E.wlfCoefficientsComputedClosed E.temperatureDependenceClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse