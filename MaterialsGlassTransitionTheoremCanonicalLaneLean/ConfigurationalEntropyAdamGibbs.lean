import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure AdamGibbsConfigurationalEntropyPackage (A : AdmissibleClass) where
  configurationalEntropyDefined : A.object.configurationalEntropy
  entropyRelaxationRelation : Prop
  cooperativelyRearrangingRegions : Prop
  thermodynamicTransitionExtrapolation : Prop

structure AdamGibbsEvidence {A : AdmissibleClass} (C : AdamGibbsConfigurationalEntropyPackage A) where
  configurationalEntropyDefinedClosed : C.configurationalEntropyDefined
  entropyRelaxationRelationClosed : C.entropyRelaxationRelation
  cooperativelyRearrangingRegionsClosed : C.cooperativelyRearrangingRegions
  thermodynamicTransitionExtrapolationClosed : C.thermodynamicTransitionExtrapolation

def ConfigurationalEntropyClosed {A : AdmissibleClass} (C : AdamGibbsConfigurationalEntropyPackage A) : Prop :=
  C.configurationalEntropyDefined ∧ C.entropyRelaxationRelation ∧ C.cooperativelyRearrangingRegions ∧ C.thermodynamicTransitionExtrapolation

theorem configurational_entropy_closed_from_evidence {A : AdmissibleClass} (C : AdamGibbsConfigurationalEntropyPackage A) (E : AdamGibbsEvidence C) : ConfigurationalEntropyClosed C := by
  exact And.intro E.configurationalEntropyDefinedClosed (And.intro E.entropyRelaxationRelationClosed (And.intro E.cooperativelyRearrangingRegionsClosed E.thermodynamicTransitionExtrapolationClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
