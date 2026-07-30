import canonicalLaneMathlib.AdmissibleClass
import GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure FragilityAnglePackage where
  material : GlassTransitionAdmittedObject
  fragilityParameter : ℝ
  angleFormation : Prop
  strongFragileTransition : Prop
  doremusModel : Prop
  entropyBarrierCorrelation : Prop

structure FragilityAngleEvidence (F : FragilityAnglePackage) where
  angleFormationClosed : F.angleFormation
  strongFragileTransitionClosed : F.strongFragileTransition
  doremusModelClosed : F.doremusModel
  entropyBarrierCorrelationClosed : F.entropyBarrierCorrelation

def FragilityAngleClosed (F : FragilityAnglePackage) : Prop :=
  F.angleFormation ∧ F.strongFragileTransition ∧ F.doremusModel ∧ F.entropyBarrierCorrelation

theorem fragility_angle_closed_from_evidence (F : FragilityAnglePackage) (E : FragilityAngleEvidence F) :
    FragilityAngleClosed F := by
  exact And.intro E.angleFormationClosed
    (And.intro E.strongFragileTransitionClosed
      (And.intro E.doremusModelClosed E.entropyBarrierCorrelationClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse