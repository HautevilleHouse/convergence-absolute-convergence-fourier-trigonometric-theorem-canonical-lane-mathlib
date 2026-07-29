import canonicalLaneMathlib.AdmissibleClass

/-!
# Fejér Summability Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FejerSummabilityPackage where
  cesaroMeanApproximation : Prop
  uniformConvergenceForContinuous : Prop
  fejerKernelPositivity : Prop

structure FejerSummabilityEvidence (F : FejerSummabilityPackage) where
  cesaroMeanApproximationClosed : F.cesaroMeanApproximation
  uniformConvergenceForContinuousClosed : F.uniformConvergenceForContinuous
  fejerKernelPositivityClosed : F.fejerKernelPositivity

def FejerSummabilityClosed (F : FejerSummabilityPackage) : Prop :=
  F.cesaroMeanApproximation ∧ F.uniformConvergenceForContinuous ∧ F.fejerKernelPositivity

theorem fejer_summability_closed_from_evidence (F : FejerSummabilityPackage)
    (E : FejerSummabilityEvidence F) : FejerSummabilityClosed F := by
  exact And.intro E.cesaroMeanApproximationClosed (And.intro E.uniformConvergenceForContinuousClosed E.fejerKernelPositivityClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse