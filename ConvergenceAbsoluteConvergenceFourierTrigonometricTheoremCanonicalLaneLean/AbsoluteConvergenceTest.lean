import canonicalLaneMathlib.AdmissibleClass

/-!
# Absolute Convergence Test Package
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure AbsoluteConvergenceTestPackage where
  testCondition : Prop
  coefficientDecayRate : Prop
  convergenceGuarantee : Prop

structure AbsoluteConvergenceTestEvidence (A : AbsoluteConvergenceTestPackage) where
  testConditionClosed : A.testCondition
  coefficientDecayRateClosed : A.coefficientDecayRate
  convergenceGuaranteeClosed : A.convergenceGuarantee

def AbsoluteConvergenceTestClosed (A : AbsoluteConvergenceTestPackage) : Prop :=
  A.testCondition ∧ A.coefficientDecayRate ∧ A.convergenceGuarantee

theorem absolute_convergence_test_closed_from_evidence (A : AbsoluteConvergenceTestPackage)
    (E : AbsoluteConvergenceTestEvidence A) : AbsoluteConvergenceTestClosed A := by
  exact And.intro E.testConditionClosed (And.intro E.coefficientDecayRateClosed E.convergenceGuaranteeClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse