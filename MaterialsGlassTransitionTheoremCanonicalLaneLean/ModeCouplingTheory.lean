import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure ModeCouplingPackage where
  densityCorrelator : Prop
  memoryKernel : Prop
  nonlinearVertex : Prop
  ergodicityBreaking : Prop

structure ModeCouplingEvidence (P : ModeCouplingPackage) where
  densityCorrelatorClosed : P.densityCorrelator
  memoryKernelClosed : P.memoryKernel
  nonlinearVertexClosed : P.nonlinearVertex
  ergodicityBreakingClosed : P.ergodicityBreaking

def ModeCouplingClosed (P : ModeCouplingPackage) : Prop :=
  P.densityCorrelator ∧ P.memoryKernel ∧ P.nonlinearVertex ∧ P.ergodicityBreaking

theorem mode_coupling_closed_from_evidence (P : ModeCouplingPackage)
    (E : ModeCouplingEvidence P) : ModeCouplingClosed P := by
  exact And.intro E.densityCorrelatorClosed
    (And.intro E.memoryKernelClosed
      (And.intro E.nonlinearVertexClosed E.ergodicityBreakingClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
