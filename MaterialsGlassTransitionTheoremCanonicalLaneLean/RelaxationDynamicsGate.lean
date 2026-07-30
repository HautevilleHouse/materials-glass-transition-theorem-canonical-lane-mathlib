import canonicalLaneMathlib.AdmissibleClass
import GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure RelaxationDynamicsPackage where
  material : GlassTransitionAdmittedObject
  kohlrauschWilliamsWattsCoeff : ℝ
  stretchedExponent : ℝ
  nonExponentialDecay : Prop
  timeTemperatureSuperposition : Prop
  fragilityCorrelation : Prop

structure RelaxationDynamicsEvidence (R : RelaxationDynamicsPackage) where
  nonExponentialDecayClosed : R.nonExponentialDecay
  timeTemperatureSuperpositionClosed : R.timeTemperatureSuperposition
  fragilityCorrelationClosed : R.fragilityCorrelation

def RelaxationDynamicsClosed (R : RelaxationDynamicsPackage) : Prop :=
  R.nonExponentialDecay ∧ R.timeTemperatureSuperposition ∧ R.fragilityCorrelation

theorem relaxation_dynamics_closed_from_evidence (R : RelaxationDynamicsPackage)
    (E : RelaxationDynamicsEvidence R) : RelaxationDynamicsClosed R := by
  exact And.intro E.nonExponentialDecayClosed (And.intro E.timeTemperatureSuperpositionClosed E.fragilityCorrelationClosed)

def gateClosedRelaxationDynamics (R : RelaxationDynamicsPackage) : Prop :=
  RelaxationDynamicsClosed R

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse