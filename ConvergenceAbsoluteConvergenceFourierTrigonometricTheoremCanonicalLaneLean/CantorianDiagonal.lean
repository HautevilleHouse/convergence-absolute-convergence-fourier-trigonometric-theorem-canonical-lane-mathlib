import ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure CantorianDiagonalSet where
  functionSpace : Set (ℝ → ℂ)
  uniformBound : ℝ
  equicontinuousFamily : Prop
  diagConstruction : ℕ → ℂ
  contradictionConclusion : Prop

def CantorianDiagonalClosed (D : CantorianDiagonalSet) : Prop :=
  D.uniformBound > 0 ∧ D.equicontinuousFamily ∧ D.contradictionConclusion

theorem cantorian_diagonal_closed_from_classification (D : CantorianDiagonalSet) (h : CantorianDiagonalClosed D) :
  CantorianDiagonalClosed D := h

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse