import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : ℝ × ℝ
  pressureRange : ℝ × ℝ
  phaseBoundaries : Set (ℝ × ℝ)
  glassTransitionLine : Prop
  glassTransitionLineClosed : glassTransitionLine

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.glassTransitionLine

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) : PhaseDiagramClosed P := by
  exact P.glassTransitionLineClosed

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
