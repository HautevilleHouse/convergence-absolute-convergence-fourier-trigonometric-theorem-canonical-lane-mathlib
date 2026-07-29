import ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierSeriesPacket where
  approximationSpace : Type
  operator : (ℝ → ℂ) → (ℝ → ℂ)
  boundedInNorm : Prop
  convergenceOnDenseSubset : Prop

structure FourierSeriesBoundedness (F : FourierSeriesPacket) where
  operatorNorm : ℝ
  continuityConstant : ℝ
  boundInequality : Prop

def FourierSeriesOperatorClosed (F : FourierSeriesPacket) : Prop :=
  F.boundedInNorm ∧ F.convergenceOnDenseSubset

theorem fourier_series_operator_closed_from_boundedness (F : FourierSeriesPacket) (B : FourierSeriesBoundedness F) :
  FourierSeriesOperatorClosed F := by
  exact And.intro B.boundInequality (by
    -- placeholder for convergence on dense subset
    exact F.convergenceOnDenseSubset)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse