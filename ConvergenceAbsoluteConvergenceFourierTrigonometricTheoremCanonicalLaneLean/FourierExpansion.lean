import ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure TrigonometricSeries (f : ℝ → ℂ) where
  summands : ℕ → ℂ
  partialSums : ℕ → (ℝ → ℂ)
  expansionConvergesPointwise : Prop
  expansionConvergesUniformly : Prop
  fourierCoefficientFormula : Prop

def TrigonometricSeriesSum (f : ℝ → ℂ) (S : TrigonometricSeries f) (x : ℝ) (n : ℕ) : ℂ :=
  Finset.sum (Finset.range (n+1)) (λ k => S.summands k)

theorem fourier_coefficient_uniqueness (f g : ℝ → ℂ) (Sf : TrigonometricSeries f) (Sg : TrigonometricSeries g)
    (h : ∀ n, Sf.summands n = Sg.summands n) : f = g := by
  ext x
  sorry

structure FourierCoefficientFormula (f : ℝ → ℂ) where
  coefficient : ℤ → ℂ
  integralExpression : ℂ
  periodicityVerified : Prop

def FourierExpansionClosed (f : ℝ → ℂ) (S : TrigonometricSeries f) : Prop :=
  S.expansionConvergesPointwise ∧ S.expansionConvergesUniformly

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse