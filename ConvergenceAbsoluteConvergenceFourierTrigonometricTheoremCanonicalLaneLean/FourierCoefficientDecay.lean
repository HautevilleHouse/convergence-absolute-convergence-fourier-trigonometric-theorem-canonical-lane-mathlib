import ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure CoefficientDecayCondition (f : ℝ → ℂ) where
  decayRate : ℝ → ℝ
  boundedVariation : Prop
  holderContinuity : Prop
  absoluteConvergence : Prop

structure DecayEvidence (f : ℝ → ℂ) (C : CoefficientDecayCondition f) where
  decayRatePositive : C.decayRate 0 > 0
  absoluteConvergenceClosed : C.absoluteConvergence

def CoefficientDecayClosed (f : ℝ → ℂ) (C : CoefficientDecayCondition f) : Prop :=
  C.decayRate 0 > 0 ∧ C.absoluteConvergence ∧ C.boundedVariation

theorem coefficient_decay_closed_from_evidence (f : ℝ → ℂ) (C : CoefficientDecayCondition f) (E : DecayEvidence f C) :
  CoefficientDecayClosed f C := by
  exact And.intro E.decayRatePositive (And.intro E.absoluteConvergenceClosed C.boundedVariation)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse