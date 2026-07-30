import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionSystems

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure KineticStrengthTheoryPackage (S : GlassTransitionSystem) where
  defectDensity : S.temperature -> ℝ
  diffusionCoefficient : S.temperature -> ℝ
  defectFormationEnergy : ℝ
  criticalDefectDensity : ℝ
  diffusionRelaxationRelation : Prop
  defectFormationEnergyTerm : defectFormationEnergy
  criticalDefectDensityTerm : criticalDefectDensity
  diffusionRelaxationRelationTerm : diffusionRelaxationRelation

structure KineticStrengthTheoryEvidence {S : GlassTransitionSystem} (K : KineticStrengthTheoryPackage S) where
  defectFormationEnergyClosed : K.defectFormationEnergy
  criticalDefectDensityClosed : K.criticalDefectDensity
  diffusionRelaxationRelationClosed : K.diffusionRelaxationRelation

def KineticStrengthTheoryClosed {S : GlassTransitionSystem} (K : KineticStrengthTheoryPackage S) : Prop :=
  K.defectFormationEnergy ∧ K.criticalDefectDensity ∧ K.diffusionRelaxationRelation

theorem kinetic_strength_theory_closed_from_evidence {S : GlassTransitionSystem} (K : KineticStrengthTheoryPackage S) (E : KineticStrengthTheoryEvidence K) : KineticStrengthTheoryClosed K := by
  exact And.intro E.defectFormationEnergyClosed
    (And.intro E.criticalDefectDensityClosed E.diffusionRelaxationRelationClosed)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse