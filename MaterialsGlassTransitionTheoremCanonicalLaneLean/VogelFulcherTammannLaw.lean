import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionSystems

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure VogelFulcherTammannLawPackage (S : GlassTransitionSystem) where
  vftParameters : ℝ × ℝ × ℝ
  viscosityFormula : S.temperature -> ℝ
  divergenceTemperature : S.temperature
  fragilityParameter : ℝ
  lawValid : Prop
  divergenceTemperatureDefined : Prop
  fragilityParameterConstant : Prop
  lawValidTerm : lawValid
  divergenceTemperatureDefinedTerm : divergenceTemperatureDefined
  fragilityParameterConstantTerm : fragilityParameterConstant

structure VogelFulcherTammannLawEvidence {S : GlassTransitionSystem} (V : VogelFulcherTammannLawPackage S) where
  lawValidClosed : V.lawValid
  divergenceTemperatureDefinedClosed : V.divergenceTemperatureDefined
  fragilityParameterConstantClosed : V.fragilityParameterConstant

def VogelFulcherTammannLawClosed {S : GlassTransitionSystem} (V : VogelFulcherTammannLawPackage S) : Prop :=
  V.lawValid ∧ V.divergenceTemperatureDefined ∧ V.fragilityParameterConstant

theorem vogel_fulcher_tammann_law_closed_from_evidence {S : GlassTransitionSystem} (V : VogelFulcherTammannLawPackage S) (E : VogelFulcherTammannLawEvidence V) : VogelFulcherTammannLawClosed V := by
  exact And.intro E.lawValidClosed
    (And.intro E.divergenceTemperatureDefinedClosed E.fragilityParameterConstantClosed)

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse