import MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

def bridgeClosed (A : GlassTransitionAdmittedObject) : Prop :=
  A.object.glassTransitionObserved

theorem bridge_from_admissible_class (A : GlassTransitionAdmittedObject) : bridgeClosed A := by
  exact A.object.glassTransitionObserved

def gateClosed (A : GlassTransitionAdmittedObject) : Prop :=
  A.admissibilityWitness

theorem gate_from_admissible_class (A : GlassTransitionAdmittedObject) : gateClosed A := by
  exact A.admissibilityWitness

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
