import canonicalLaneMathlib.AdmissibleClass
import ConfigurationalEntropyBridge
import RelaxationDynamicsGate

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

def ConstrainedGlassTransitionClosure (A : GlassTransitionAdmissibleClass) : Prop :=
  bridgeClosed A.toAdmissibleClass ∧ gateClosed A.toAdmissibleClass

theorem constrained_glass_transition_endgame (A : GlassTransitionAdmissibleClass) :
    ConstrainedGlassTransitionClosure A := by
  have h1 : bridgeClosed A.toAdmissibleClass := bridge_from_admissible_class A.toAdmissibleClass
  have h2 : gateClosed A.toAdmissibleClass := gate_from_admissible_class A.toAdmissibleClass
  exact And.intro h1 h2

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse