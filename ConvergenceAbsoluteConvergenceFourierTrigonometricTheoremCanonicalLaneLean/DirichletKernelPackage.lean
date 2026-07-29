import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure DirichletKernelPackage where
  kernelDefined : Prop
  integralProperty : Prop
  pointwiseConvergence : Prop
  uniformConvergenceForContinuous : Prop

structure DirichletKernelEvidence (D : DirichletKernelPackage) where
  kernelDefinedClosed : D.kernelDefined
  integralPropertyClosed : D.integralProperty
  pointwiseConvergenceClosed : D.pointwiseConvergence
  uniformConvergenceForContinuousClosed : D.uniformConvergenceForContinuous

def DirichletKernelClosed (D : DirichletKernelPackage) : Prop :=
  D.kernelDefined ∧ D.integralProperty ∧ D.pointwiseConvergence ∧ D.uniformConvergenceForContinuous

theorem dirichlet_kernel_closed_from_evidence
    (D : DirichletKernelPackage) (E : DirichletKernelEvidence D) :
    DirichletKernelClosed D := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.integralPropertyClosed
      (And.intro E.pointwiseConvergenceClosed E.uniformConvergenceForContinuousClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse