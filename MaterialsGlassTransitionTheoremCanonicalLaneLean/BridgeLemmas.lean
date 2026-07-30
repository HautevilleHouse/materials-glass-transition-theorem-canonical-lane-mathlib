import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GlassTransitionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
