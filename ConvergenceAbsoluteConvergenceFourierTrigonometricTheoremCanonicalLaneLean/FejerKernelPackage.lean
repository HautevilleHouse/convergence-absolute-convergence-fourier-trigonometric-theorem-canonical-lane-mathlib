import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FejerKernelPackage where
  cesaroMeansDefined : Prop
  uniformConvergenceForContinuous : Prop
  positivityProperty : Prop
  approximationIdentity : Prop

structure FejerKernelEvidence (F : FejerKernelPackage) where
  cesaroMeansDefinedClosed : F.cesaroMeansDefined
  uniformConvergenceForContinuousClosed : F.uniformConvergenceForContinuous
  positivityPropertyClosed : F.positivityProperty
  approximationIdentityClosed : F.approximationIdentity

def FejerKernelClosed (F : FejerKernelPackage) : Prop :=
  F.cesaroMeansDefined ∧ F.uniformConvergenceForContinuous ∧ F.positivityProperty ∧ F.approximationIdentity

theorem fejer_kernel_closed_from_evidence
    (F : FejerKernelPackage) (E : FejerKernelEvidence F) :
    FejerKernelClosed F := by
  exact And.intro E.cesaroMeansDefinedClosed
    (And.intro E.uniformConvergenceForContinuousClosed
      (And.intro E.positivityPropertyClosed E.approximationIdentityClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse