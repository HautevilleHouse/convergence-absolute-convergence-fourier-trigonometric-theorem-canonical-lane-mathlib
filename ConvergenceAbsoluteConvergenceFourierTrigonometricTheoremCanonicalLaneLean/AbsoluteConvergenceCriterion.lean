import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure AbsoluteConvergenceCriterionPackage where
  coefficientDecay : Prop
  holderCondition : Prop
  boundedVariation : Prop
  absolutelySummable : Prop
  convergenceCondition : Prop

structure AbsoluteConvergenceCriterionEvidence (C : AbsoluteConvergenceCriterionPackage) where
  coefficientDecayClosed : C.coefficientDecay
  holderConditionClosed : C.holderCondition
  boundedVariationClosed : C.boundedVariation
  absolutelySummableClosed : C.absolutelySummable
  convergenceConditionClosed : C.convergenceCondition

def AbsoluteConvergenceCriterionClosed (C : AbsoluteConvergenceCriterionPackage) : Prop :=
  C.coefficientDecay ∧ C.holderCondition ∧ C.boundedVariation ∧
  C.absolutelySummable ∧ C.convergenceCondition

theorem absolute_convergence_criterion_closed_from_evidence
    (C : AbsoluteConvergenceCriterionPackage)
    (E : AbsoluteConvergenceCriterionEvidence C) :
    AbsoluteConvergenceCriterionClosed C := by
  exact And.intro E.coefficientDecayClosed
    (And.intro E.holderConditionClosed
      (And.intro E.boundedVariationClosed
        (And.intro E.absolutelySummableClosed E.convergenceConditionClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
