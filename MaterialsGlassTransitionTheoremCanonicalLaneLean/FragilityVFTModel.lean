import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure VFTFragilityPackage (A : AdmissibleClass) where
  fragilityIndex : A.object.fragilityIndex
  vftEquation : Prop
  relaxationTimescaleSeparation : Prop
  divergenceTemperature : Prop

structure VFTEvidence {A : AdmissibleClass} (V : VFTFragilityPackage A) where
  vftEquationClosed : V.vftEquation
  relaxationTimescaleSeparationClosed : V.relaxationTimescaleSeparation
  divergenceTemperatureClosed : V.divergenceTemperature

def VFTFragilityClosed {A : AdmissibleClass} (V : VFTFragilityPackage A) : Prop :=
  V.vftEquation ∧ V.relaxationTimescaleSeparation ∧ V.divergenceTemperature

theorem vft_fragility_closed_from_evidence {A : AdmissibleClass} (V : VFTFragilityPackage A) (E : VFTEvidence V) : VFTFragilityClosed V := by
  exact And.intro E.vftEquationClosed (And.intro E.relaxationTimescaleSeparationClosed E.divergenceTemperatureClosed)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
