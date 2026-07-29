import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure ConvergenceTheoremPackage where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  convergenceInNorm : Prop
  dirichletKernel : Prop
  fejerKernel : Prop

structure ConvergenceTheoremEvidence (T : ConvergenceTheoremPackage) where
  pointwiseConvergenceClosed : T.pointwiseConvergence
  uniformConvergenceClosed : T.uniformConvergence
  convergenceInNormClosed : T.convergenceInNorm
  dirichletKernelClosed : T.dirichletKernel
  fejerKernelClosed : T.fejerKernel

def ConvergenceTheoremClosed (T : ConvergenceTheoremPackage) : Prop :=
  T.pointwiseConvergence ∧ T.uniformConvergence ∧ T.convergenceInNorm ∧
  T.dirichletKernel ∧ T.fejerKernel

theorem convergence_theorem_closed_from_evidence
    (T : ConvergenceTheoremPackage)
    (E : ConvergenceTheoremEvidence T) :
    ConvergenceTheoremClosed T := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.convergenceInNormClosed
        (And.intro E.dirichletKernelClosed E.fejerKernelClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
