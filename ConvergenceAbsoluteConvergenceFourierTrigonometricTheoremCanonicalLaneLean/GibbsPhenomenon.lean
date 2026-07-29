import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure GibbsPhenomenonPackage where
  jumpDiscontinuity : Prop
  overshootProportion : Prop
  undershootProportion : Prop
  pointwiseConvergenceExceptAtJump : Prop
  wilbrahamGibbsConstant : ℝ

structure GibbsPhenomenonEvidence (P : GibbsPhenomenonPackage) where
  jumpDiscontinuityClosed : P.jumpDiscontinuity
  overshootProportionClosed : P.overshootProportion
  undershootProportionClosed : P.undershootProportion
  pointwiseConvergenceExceptAtJumpClosed : P.pointwiseConvergenceExceptAtJump

def GibbsPhenomenonClosed (P : GibbsPhenomenonPackage) : Prop :=
  P.jumpDiscontinuity ∧ P.overshootProportion ∧
  P.undershootProportion ∧ P.pointwiseConvergenceExceptAtJump

theorem gibbs_phenomenon_closed_from_evidence
    (P : GibbsPhenomenonPackage) (E : GibbsPhenomenonEvidence P) :
    GibbsPhenomenonClosed P := by
  exact And.intro E.jumpDiscontinuityClosed
    (And.intro E.overshootProportionClosed
      (And.intro E.undershootProportionClosed E.pointwiseConvergenceExceptAtJumpClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
