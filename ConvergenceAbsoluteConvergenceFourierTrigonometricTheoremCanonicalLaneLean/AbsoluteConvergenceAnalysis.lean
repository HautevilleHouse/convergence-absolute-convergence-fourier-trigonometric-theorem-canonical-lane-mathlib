import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure AbsoluteConvergencePackage {F : FourierConvergencePackage} where
  absoluteConvergenceCondition : Prop
  uniformConvergenceCondition : Prop
  normEstimates : Prop
  summationByParts : Prop
  decayCondition : Prop

structure AbsoluteConvergenceEvidence {F : FourierConvergencePackage}
    (A : AbsoluteConvergencePackage F) where
  absoluteConvergenceConditionClosed : A.absoluteConvergenceCondition
  uniformConvergenceConditionClosed : A.uniformConvergenceCondition
  normEstimatesClosed : A.normEstimates
  summationByPartsClosed : A.summationByParts
  decayConditionClosed : A.decayCondition

def AbsoluteConvergenceClosed {F : FourierConvergencePackage}
    (A : AbsoluteConvergencePackage F) : Prop :=
  A.absoluteConvergenceCondition ∧ A.uniformConvergenceCondition ∧
  A.normEstimates ∧ A.summationByParts ∧ A.decayCondition

theorem absolute_convergence_closed_from_evidence
    {F : FourierConvergencePackage} (A : AbsoluteConvergencePackage F)
    (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A := by
  exact And.intro E.absoluteConvergenceConditionClosed
    (And.intro E.uniformConvergenceConditionClosed
      (And.intro E.normEstimatesClosed
        (And.intro E.summationByPartsClosed E.decayConditionClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
