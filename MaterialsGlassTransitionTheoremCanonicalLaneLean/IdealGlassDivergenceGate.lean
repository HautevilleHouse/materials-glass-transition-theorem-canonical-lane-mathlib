import canonicalLaneMathlib.AdmissibleClass
import GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure IdealGlassDivergencePackage where
  material : GlassTransitionAdmittedObject
  kauzmannTemperature : ℝ
  entropyCatastrophe : Prop
  divergenceExtrapolation : Prop
  thermodynamicConstraint : Prop
  vanishingExcessEntropy : Prop

structure IdealGlassDivergenceEvidence (I : IdealGlassDivergencePackage) where
  entropyCatastropheClosed : I.entropyCatastrophe
  divergenceExtrapolationClosed : I.divergenceExtrapolation
  thermodynamicConstraintClosed : I.thermodynamicConstraint
  vanishingExcessEntropyClosed : I.vanishingExcessEntropy

def IdealGlassDivergenceClosed (I : IdealGlassDivergencePackage) : Prop :=
  I.entropyCatastrophe ∧ I.divergenceExtrapolation ∧ I.thermodynamicConstraint ∧ I.vanishingExcessEntropy

theorem ideal_glass_divergence_closed_from_evidence (I : IdealGlassDivergencePackage)
    (E : IdealGlassDivergenceEvidence I) : IdealGlassDivergenceClosed I := by
  exact And.intro E.entropyCatastropheClosed
    (And.intro E.divergenceExtrapolationClosed
      (And.intro E.thermodynamicConstraintClosed E.vanishingExcessEntropyClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse