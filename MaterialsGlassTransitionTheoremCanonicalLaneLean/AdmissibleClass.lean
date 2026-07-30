import MaterialsGlassTransitionTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsGlassTransitionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialsGlassTransitionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse