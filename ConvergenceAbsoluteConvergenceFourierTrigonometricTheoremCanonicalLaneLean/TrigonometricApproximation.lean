import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure TrigonometricApproximationPackage where
  weierstrassApproximation : Prop
  trigonometricPolynomialsDense : Prop
  degreeOfApproximation : Prop
  jacksonEstimates : Prop

def TrigonometricApproximationClosed (T : TrigonometricApproximationPackage) : Prop :=
  T.weierstrassApproximation ∧ T.trigonometricPolynomialsDense ∧
  T.degreeOfApproximation ∧ T.jacksonEstimates

structure TrigonometricApproximationEvidence (T : TrigonometricApproximationPackage) where
  weierstrassApproximationClosed : T.weierstrassApproximation
  trigonometricPolynomialsDenseClosed : T.trigonometricPolynomialsDense
  degreeOfApproximationClosed : T.degreeOfApproximation
  jacksonEstimatesClosed : T.jacksonEstimates

theorem trigonometric_approximation_closed_from_evidence
    (T : TrigonometricApproximationPackage) (E : TrigonometricApproximationEvidence T) :
    TrigonometricApproximationClosed T := by
  exact And.intro E.weierstrassApproximationClosed
    (And.intro E.trigonometricPolynomialsDenseClosed
      (And.intro E.degreeOfApproximationClosed E.jacksonEstimatesClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
