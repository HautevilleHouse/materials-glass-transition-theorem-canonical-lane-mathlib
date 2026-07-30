import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure MCTNonErgodicityPackage (A : AdmissibleClass) where
  densityCorrelatorEquation : Prop
  criticalTransitionPoint : Prop
  modeCouplingKernel : Prop
  nonErgodicParameter : Prop

structure MCTEvidence {A : AdmissibleClass} (M : MCTNonErgodicityPackage A) where
  densityCorrelatorEquationClosed : M.densityCorrelatorEquation
  criticalTransitionPointClosed : M.criticalTransitionPoint
  modeCouplingKernelClosed : M.modeCouplingKernel
  nonErgodicParameterClosed : M.nonErgodicParameter

def MCTNonErgodicityClosed {A : AdmissibleClass} (M : MCTNonErgodicityPackage A) : Prop :=
  M.densityCorrelatorEquation ∧ M.criticalTransitionPoint ∧ M.modeCouplingKernel ∧ M.nonErgodicParameter

theorem mct_non_ergodicity_closed_from_evidence {A : AdmissibleClass} (M : MCTNonErgodicityPackage A) (E : MCTEvidence M) : MCTNonErgodicityClosed M := by
  exact And.intro E.densityCorrelatorEquationClosed (And.intro E.criticalTransitionPointClosed (And.intro E.modeCouplingKernelClosed E.nonErgodicParameterClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
