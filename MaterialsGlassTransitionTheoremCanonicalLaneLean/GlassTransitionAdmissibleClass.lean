import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure GlassTransitionAdmittedObject where
  material : Type
  structureFactor : Prop
  fragilityIndex : Prop
  alphaRelaxationTime : Prop
  conclusion : fragilityIndex ∧ alphaRelaxationTime

structure AdmissibleClass where
  object : GlassTransitionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GlassTransitionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GlassTransitionWitnessClosed (O : GlassTransitionAdmittedObject) : Prop :=
  O.fragilityIndex ∧ O.alphaRelaxationTime

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
