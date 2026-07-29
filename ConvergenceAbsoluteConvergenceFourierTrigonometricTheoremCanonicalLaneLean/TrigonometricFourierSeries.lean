import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure TrigonometricFourierSeriesPackage where
  functionSpace : Type u
  innerProduct : Type v
  orthonormalSystem : Type w
  fourierCoefficients : Type x
  partialSums : Type y
  pointwiseConvergenceCondition : Prop
  l2ConvergenceCondition : Prop
  rieszFischerTheorem : Prop
  carlesonHuntTheorem : Prop
  dirichletKernel : Type z
  fejerKernel : Type z1

structure TrigonometricFourierSeriesEvidence (P : TrigonometricFourierSeriesPackage) where
  pointwiseConvergenceConditionClosed : P.pointwiseConvergenceCondition
  l2ConvergenceConditionClosed : P.l2ConvergenceCondition
  rieszFischerTheoremClosed : P.rieszFischerTheorem
  carlesonHuntTheoremClosed : P.carlesonHuntTheorem

def TrigonometricFourierSeriesClosed (P : TrigonometricFourierSeriesPackage) : Prop :=
  P.pointwiseConvergenceCondition ∧ P.l2ConvergenceCondition ∧
  P.rieszFischerTheorem ∧ P.carlesonHuntTheorem

theorem trigonometric_fourier_series_closed_from_evidence
    (P : TrigonometricFourierSeriesPackage) (E : TrigonometricFourierSeriesEvidence P) :
    TrigonometricFourierSeriesClosed P := by
  exact And.intro E.pointwiseConvergenceConditionClosed
    (And.intro E.l2ConvergenceConditionClosed
      (And.intro E.rieszFischerTheoremClosed E.carlesonHuntTheoremClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
