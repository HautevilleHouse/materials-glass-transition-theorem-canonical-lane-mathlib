import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure VogelFulcherTammannPackage where
  viscosityDivergence : Prop
  fragilityClassification : Prop
  idealGlassTransitionTemp : Prop

structure VogelFulcherTammannEvidence (P : VogelFulcherTammannPackage) where
  viscosityDivergenceClosed : P.viscosityDivergence
  fragilityClassificationClosed : P.fragilityClassification
  idealGlassTransitionTempClosed : P.idealGlassTransitionTemp

def VogelFulcherTammannClosed (P : VogelFulcherTammannPackage) : Prop :=
  P.viscosityDivergence ∧ P.fragilityClassification ∧ P.idealGlassTransitionTemp

theorem vogel_fulcher_tammann_closed_from_evidence (P : VogelFulcherTammannPackage)
    (E : VogelFulcherTammannEvidence P) : VogelFulcherTammannClosed P := by
  exact And.intro E.viscosityDivergenceClosed
    (And.intro E.fragilityClassificationClosed E.idealGlassTransitionTempClosed)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
