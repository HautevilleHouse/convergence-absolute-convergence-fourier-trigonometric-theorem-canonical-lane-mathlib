import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure DirichletKernelPackage where
  kernelDefined : Prop
  integralForm : Prop
  convergenceProperties : Prop
  conjugateKernelDefined : Prop

def DirichletKernelClosed (D : DirichletKernelPackage) : Prop :=
  D.kernelDefined ∧ D.integralForm ∧ D.convergenceProperties ∧ D.conjugateKernelDefined

structure DirichletKernelEvidence (D : DirichletKernelPackage) where
  kernelDefinedClosed : D.kernelDefined
  integralFormClosed : D.integralForm
  convergencePropertiesClosed : D.convergenceProperties
  conjugateKernelDefinedClosed : D.conjugateKernelDefined

theorem dirichlet_kernel_closed_from_evidence (D : DirichletKernelPackage)
    (E : DirichletKernelEvidence D) : DirichletKernelClosed D := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.integralFormClosed
      (And.intro E.convergencePropertiesClosed E.conjugateKernelDefinedClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
