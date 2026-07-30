import canonicalLaneMathlib.AdmissibleClass
import GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure ConfigurationalEntropyPackage where
  material : GlassTransitionAdmittedObject
  temperatureRange : ℝ → ℝ → Prop
  entropyProfile : ℝ → ℝ
  adamGibbsRelation : Prop
  vogelFulcherTammannRelation : Prop
  divergenceAtIdealGlass : Prop

structure ConfigurationalEntropyEvidence (P : ConfigurationalEntropyPackage) where
  adamGibbsRelationClosed : P.adamGibbsRelation
  vogelFulcherTammannRelationClosed : P.vogelFulcherTammannRelation
  divergenceAtIdealGlassClosed : P.divergenceAtIdealGlass

def ConfigurationalEntropyClosed (P : ConfigurationalEntropyPackage) : Prop :=
  P.adamGibbsRelation ∧ P.vogelFulcherTammannRelation ∧ P.divergenceAtIdealGlass

theorem configurational_entropy_closed_from_evidence (P : ConfigurationalEntropyPackage)
    (E : ConfigurationalEntropyEvidence P) : ConfigurationalEntropyClosed P := by
  exact And.intro E.adamGibbsRelationClosed (And.intro E.vogelFulcherTammannRelationClosed E.divergenceAtIdealGlassClosed)

def bridgeClosedConfigurationalEntropy (P : ConfigurationalEntropyPackage) : Prop :=
  ConfigurationalEntropyClosed P

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse