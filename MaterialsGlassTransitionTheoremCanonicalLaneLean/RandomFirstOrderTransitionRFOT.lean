import HautevilleHouse.MaterialsGlassTransitionTheoremCanonicalLaneLean.GlassTransitionAdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionTheoremCanonicalLaneLean

structure RFOTPackage (A : AdmissibleClass) where
  mosaicLengthScale : Prop
  surfaceReconfigurationEntropy : Prop
  temperatureScaling : Prop
  thermodynamicCrossover : Prop

structure RFOTEvidence {A : AdmissibleClass} (R : RFOTPackage A) where
  mosaicLengthScaleClosed : R.mosaicLengthScale
  surfaceReconfigurationEntropyClosed : R.surfaceReconfigurationEntropy
  temperatureScalingClosed : R.temperatureScaling
  thermodynamicCrossoverClosed : R.thermodynamicCrossover

def RFOTClosed {A : AdmissibleClass} (R : RFOTPackage A) : Prop :=
  R.mosaicLengthScale ∧ R.surfaceReconfigurationEntropy ∧ R.temperatureScaling ∧ R.thermodynamicCrossover

theorem r_fot_closed_from_evidence {A : AdmissibleClass} (R : RFOTPackage A) (E : RFOTEvidence R) : RFOTClosed R := by
  exact And.intro E.mosaicLengthScaleClosed (And.intro E.surfaceReconfigurationEntropyClosed (And.intro E.temperatureScalingClosed E.thermodynamicCrossoverClosed))

end MaterialsGlassTransitionTheoremCanonicalLaneLean
end HautevilleHouse
