import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure AbsoluteConvergenceTheoremPackage where
  absoluteConvergenceCondition : Prop
  convergenceConditionImplied : Prop
  applicationToSpecificFunctions : Prop

structure AbsoluteConvergenceTheoremEvidence (T : AbsoluteConvergenceTheoremPackage) where
  absoluteConvergenceConditionClosed : T.absoluteConvergenceCondition
  convergenceConditionImpliedClosed : T.convergenceConditionImplied
  applicationToSpecificFunctionsClosed : T.applicationToSpecificFunctions

def AbsoluteConvergenceTheoremClosed (T : AbsoluteConvergenceTheoremPackage) : Prop :=
  T.absoluteConvergenceCondition ∧ T.convergenceConditionImplied ∧
  T.applicationToSpecificFunctions

theorem absolute_convergence_theorem_closed_from_evidence
    (T : AbsoluteConvergenceTheoremPackage)
    (E : AbsoluteConvergenceTheoremEvidence T) :
    AbsoluteConvergenceTheoremClosed T := by
  exact And.intro E.absoluteConvergenceConditionClosed
    (And.intro E.convergenceConditionImpliedClosed
      E.applicationToSpecificFunctionsClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
