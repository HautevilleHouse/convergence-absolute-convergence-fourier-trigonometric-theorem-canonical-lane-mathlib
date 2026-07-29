import canonicalLaneMathlib.AdmissibleClass

/-!
# Fourier Coefficient Analysis Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierCoefficientPackage where
  functionSpace : Type u
  integrabilityCondition : Prop
  coefficientSequence : Type v
  fourierSeriesRepresentation : Prop

structure FourierCoefficientEvidence (F : FourierCoefficientPackage) where
  integrabilityConditionClosed : F.integrabilityCondition
  fourierSeriesRepresentationClosed : F.fourierSeriesRepresentation

def FourierCoefficientClosed (F : FourierCoefficientPackage) : Prop :=
  F.integrabilityCondition ∧ F.fourierSeriesRepresentation

theorem fourier_coefficient_closed_from_evidence (F : FourierCoefficientPackage)
    (E : FourierCoefficientEvidence F) : FourierCoefficientClosed F := by
  exact And.intro E.integrabilityConditionClosed E.fourierSeriesRepresentationClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse