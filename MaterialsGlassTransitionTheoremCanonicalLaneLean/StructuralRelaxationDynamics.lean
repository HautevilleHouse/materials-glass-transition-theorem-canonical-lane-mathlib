import MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure StructuralRelaxationPackage where
  alphaRelaxationTime : Prop
  betaRelaxationProcess : Prop
  cooperativityVolume : Prop
  stretchExponent : Prop

structure StructuralRelaxationEvidence (P : StructuralRelaxationPackage) where
  alphaRelaxationTimeClosed : P.alphaRelaxationTime
  betaRelaxationProcessClosed : P.betaRelaxationProcess
  cooperativityVolumeClosed : P.cooperativityVolume
  stretchExponentClosed : P.stretchExponent

def StructuralRelaxationClosed (P : StructuralRelaxationPackage) : Prop :=
  P.alphaRelaxationTime ∧ P.betaRelaxationProcess ∧ P.cooperativityVolume ∧ P.stretchExponent

theorem structural_relaxation_closed_from_evidence (P : StructuralRelaxationPackage) (E : StructuralRelaxationEvidence P) : StructuralRelaxationClosed P := by
  exact And.intro E.alphaRelaxationTimeClosed (And.intro E.betaRelaxationProcessClosed (And.intro E.cooperativityVolumeClosed E.stretchExponentClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
