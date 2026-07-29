import ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure ConvergenceCriterion (f : ℝ → ℂ) where
  partialSumConverges : ℕ → ℝ → ℂ
  limitFunction : ℝ → ℂ
  uniformConvergence : Prop
  absoluteConvergence : Prop

structure CriterionEvidence (f : ℝ → ℂ) (C : ConvergenceCriterion f) where
  uniformConvergenceClosed : C.uniformConvergence
  absoluteConvergenceClosed : C.absoluteConvergence

def ConvergenceCriterionClosed (f : ℝ → ℂ) (C : ConvergenceCriterion f) : Prop :=
  C.uniformConvergence ∧ C.absoluteConvergence

theorem convergence_criterion_closed_from_evidence (f : ℝ → ℂ) (C : ConvergenceCriterion f) (E : CriterionEvidence f C) :
  ConvergenceCriterionClosed f C := by
  exact And.intro E.uniformConvergenceClosed E.absoluteConvergenceClosed

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse