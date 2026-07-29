import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierTransformConvergencePackage where
  integrableFunctionSpace : Type u
  fourierTransform : Type v
  inversionFormula : Prop
  pointwiseConvergence : Prop
  l1Convergence : Prop
  l2Convergence : Prop
  plancherelTheorem : Prop

structure FourierTransformConvergenceEvidence (P : FourierTransformConvergencePackage) where
  inversionFormulaClosed : P.inversionFormula
  pointwiseConvergenceClosed : P.pointwiseConvergence
  l1ConvergenceClosed : P.l1Convergence
  l2ConvergenceClosed : P.l2Convergence
  plancherelTheoremClosed : P.plancherelTheorem

def FourierTransformConvergenceClosed (P : FourierTransformConvergencePackage) : Prop :=
  P.inversionFormula ∧ P.pointwiseConvergence ∧
  P.l1Convergence ∧ P.l2Convergence ∧ P.plancherelTheorem

theorem fourier_transform_convergence_closed_from_evidence
    (P : FourierTransformConvergencePackage) (E : FourierTransformConvergenceEvidence P) :
    FourierTransformConvergenceClosed P := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.pointwiseConvergenceClosed
      (And.intro E.l1ConvergenceClosed
        (And.intro E.l2ConvergenceClosed E.plancherelTheoremClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
