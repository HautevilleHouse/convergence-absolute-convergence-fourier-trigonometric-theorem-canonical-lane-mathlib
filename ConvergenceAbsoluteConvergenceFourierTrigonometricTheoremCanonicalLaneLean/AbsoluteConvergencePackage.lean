import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure AbsoluteConvergencePackage where
  summabilityCondition : Prop
  comparisonTest : Prop
  absoluteConvergenceImpliesConvergence : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergencePackage) where
  summabilityConditionClosed : A.summabilityCondition
  comparisonTestClosed : A.comparisonTest
  absoluteConvergenceImpliesConvergenceClosed : A.absoluteConvergenceImpliesConvergence

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.summabilityCondition ∧ A.comparisonTest ∧ A.absoluteConvergenceImpliesConvergence

theorem absolute_convergence_closed_from_evidence
    (A : AbsoluteConvergencePackage) (E : AbsoluteConvergenceEvidence A) :
    AbsoluteConvergenceClosed A := by
  exact And.intro E.summabilityConditionClosed
    (And.intro E.comparisonTestClosed E.absoluteConvergenceImpliesConvergenceClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse