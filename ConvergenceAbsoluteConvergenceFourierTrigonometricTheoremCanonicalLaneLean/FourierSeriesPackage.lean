import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierAdmittedObject where
  space : FourierSpace
  integrableFunction : Prop
  fourierCoefficientsDefined : Prop
  partialSumsConverge : Prop
  conclusion : partialSumsConverge

structure FourierSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FourierSeriesPackage where
  functionSpace : Type u
  integrabilityCondition : Prop
  fourierCoefficients : Type v
  partialSums : Type w
  convergenceMode : Prop

structure FourierSeriesEvidence (F : FourierSeriesPackage) where
  integrabilityConditionClosed : F.integrabilityCondition
  convergenceModeClosed : F.convergenceMode

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.integrabilityCondition ∧ F.convergenceMode

theorem fourier_series_closed_from_evidence
    (F : FourierSeriesPackage) (E : FourierSeriesEvidence F) :
    FourierSeriesClosed F := by
  exact And.intro E.integrabilityConditionClosed E.convergenceModeClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse