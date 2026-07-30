import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure AdamGibbsPackage where
  configurationalEntropy : Prop
  cooperativelyRearrangingRegion : Prop
  relaxationTimeRelation : Prop

structure AdamGibbsEvidence (P : AdamGibbsPackage) where
  configurationalEntropyClosed : P.configurationalEntropy
  cooperativelyRearrangingRegionClosed : P.cooperativelyRearrangingRegion
  relaxationTimeRelationClosed : P.relaxationTimeRelation

def AdamGibbsClosed (P : AdamGibbsPackage) : Prop :=
  P.configurationalEntropy ∧ P.cooperativelyRearrangingRegion ∧ P.relaxationTimeRelation

theorem adam_gibbs_closed_from_evidence (P : AdamGibbsPackage)
    (E : AdamGibbsEvidence P) : AdamGibbsClosed P := by
  exact And.intro E.configurationalEntropyClosed
    (And.intro E.cooperativelyRearrangingRegionClosed E.relaxationTimeRelationClosed)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
