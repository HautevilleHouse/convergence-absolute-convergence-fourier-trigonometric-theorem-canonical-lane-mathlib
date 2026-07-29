import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure AbsoluteConvergenceCriteriaPackage where
  coefficientDecayCondition : Prop
  holderCondition : Prop
  boundedVariationCondition : Prop
  lipschitzCondition : Prop
  absoluteConvergenceImplied : Prop

structure AbsoluteConvergenceCriteriaEvidence (P : AbsoluteConvergenceCriteriaPackage) where
  coefficientDecayConditionClosed : P.coefficientDecayCondition
  holderConditionClosed : P.holderCondition
  boundedVariationConditionClosed : P.boundedVariationCondition
  lipschitzConditionClosed : P.lipschitzCondition
  absoluteConvergenceImpliedClosed : P.absoluteConvergenceImplied

def AbsoluteConvergenceCriteriaClosed (P : AbsoluteConvergenceCriteriaPackage) : Prop :=
  P.coefficientDecayCondition ∧ P.holderCondition ∧
  P.boundedVariationCondition ∧ P.lipschitzCondition ∧
  P.absoluteConvergenceImplied

theorem absolute_convergence_criteria_closed_from_evidence
    (P : AbsoluteConvergenceCriteriaPackage) (E : AbsoluteConvergenceCriteriaEvidence P) :
    AbsoluteConvergenceCriteriaClosed P := by
  exact And.intro E.coefficientDecayConditionClosed
    (And.intro E.holderConditionClosed
      (And.intro E.boundedVariationConditionClosed
        (And.intro E.lipschitzConditionClosed E.absoluteConvergenceImpliedClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
