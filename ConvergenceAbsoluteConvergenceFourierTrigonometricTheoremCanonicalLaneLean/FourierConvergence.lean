import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierConvergencePackage where
  functionSpace : Type u
  integrabilityCondition : Prop
  fourierSeriesDefined : Prop
  partialSumConvergence : Prop
  convergenceCriterion : Prop

structure FourierConvergenceEvidence (F : FourierConvergencePackage) where
  integrabilityConditionClosed : F.integrabilityCondition
  fourierSeriesDefinedClosed : F.fourierSeriesDefined
  partialSumConvergenceClosed : F.partialSumConvergence
  convergenceCriterionClosed : F.convergenceCriterion

def FourierConvergenceClosed (F : FourierConvergencePackage) : Prop :=
  F.integrabilityCondition ∧ F.fourierSeriesDefined ∧
  F.partialSumConvergence ∧ F.convergenceCriterion

theorem fourier_convergence_closed_from_evidence (F : FourierConvergencePackage)
    (E : FourierConvergenceEvidence F) : FourierConvergenceClosed F := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.fourierSeriesDefinedClosed
      (And.intro E.partialSumConvergenceClosed E.convergenceCriterionClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
