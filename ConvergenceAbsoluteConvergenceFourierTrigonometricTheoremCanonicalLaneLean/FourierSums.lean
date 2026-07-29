import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierSumsPackage {F : FourierConvergencePackage}
    {D : DirichletKernelPackage} where
  partialSums : Prop
  fejerSums : Prop
  abelSums : Prop
  summationMethodsEquivalent : Prop

def FourierSumsClosed {F : FourierConvergencePackage} {D : DirichletKernelPackage}
    (S : FourierSumsPackage F D) : Prop :=
  S.partialSums ∧ S.fejerSums ∧ S.abelSums ∧ S.summationMethodsEquivalent

structure FourierSumsEvidence {F : FourierConvergencePackage}
    {D : DirichletKernelPackage} (S : FourierSumsPackage F D) where
  partialSumsClosed : S.partialSums
  fejerSumsClosed : S.fejerSums
  abelSumsClosed : S.abelSums
  summationMethodsEquivalentClosed : S.summationMethodsEquivalent

theorem fourier_sums_closed_from_evidence {F : FourierConvergencePackage}
    {D : DirichletKernelPackage} (S : FourierSumsPackage F D)
    (E : FourierSumsEvidence S) : FourierSumsClosed S := by
  exact And.intro E.partialSumsClosed
    (And.intro E.fejerSumsClosed
      (And.intro E.abelSumsClosed E.summationMethodsEquivalentClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
