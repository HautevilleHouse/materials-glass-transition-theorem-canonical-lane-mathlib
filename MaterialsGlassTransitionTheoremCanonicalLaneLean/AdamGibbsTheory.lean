import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionSystems

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure AdamGibbsTheoryPackage (S : GlassTransitionSystem) where
  configurationalEntropy : S.temperature -> ℝ
  criticalEntropy : ℝ
  minimalEntropyForFlow : ℝ
  cooperativitySize : S.temperature -> ℝ
  entropyTemperatureRelation : Prop
  criticalEntropyTerm : criticalEntropy
  minimalEntropyForFlowTerm : minimalEntropyForFlow
  cooperativitySizeContinuous : Prop
  entropyTemperatureRelationTerm : entropyTemperatureRelation

structure AdamGibbsTheoryEvidence {S : GlassTransitionSystem} (A : AdamGibbsTheoryPackage S) where
  criticalEntropyClosed : A.criticalEntropy
  minimalEntropyForFlowClosed : A.minimalEntropyForFlow
  cooperativitySizeContinuousClosed : A.cooperativitySizeContinuous
  entropyTemperatureRelationClosed : A.entropyTemperatureRelation

def AdamGibbsTheoryClosed {S : GlassTransitionSystem} (A : AdamGibbsTheoryPackage S) : Prop :=
  A.criticalEntropy ∧ A.minimalEntropyForFlow ∧ A.cooperativitySizeContinuous ∧ A.entropyTemperatureRelation

theorem adam_gibbs_theory_closed_from_evidence {S : GlassTransitionSystem} (A : AdamGibbsTheoryPackage S) (E : AdamGibbsTheoryEvidence A) : AdamGibbsTheoryClosed A := by
  exact And.intro E.criticalEntropyClosed
    (And.intro E.minimalEntropyForFlowClosed
      (And.intro E.cooperativitySizeContinuousClosed E.entropyTemperatureRelationClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse