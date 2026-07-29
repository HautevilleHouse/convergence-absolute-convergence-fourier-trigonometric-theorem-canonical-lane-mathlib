import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierCoefficientPackage where
  functionF : Type u
  interval : Type v
  integrability : Prop
  trigonometricSystem : Prop
  coefficientSequence : Type w
  partialSums : Prop
  parsevalIdentity : Prop

structure FourierCoefficientEvidence (F : FourierCoefficientPackage) where
  integrabilityClosed : F.integrability
  trigonometricSystemClosed : F.trigonometricSystem
  partialSumsClosed : F.partialSums
  parsevalIdentityClosed : F.parsevalIdentity

def FourierCoefficientClosed (F : FourierCoefficientPackage) : Prop :=
  F.integrability ∧ F.trigonometricSystem ∧ F.partialSums ∧ F.parsevalIdentity

theorem fourier_coefficient_closed_from_evidence (F : FourierCoefficientPackage)
    (E : FourierCoefficientEvidence F) : FourierCoefficientClosed F := by
  exact And.intro E.integrabilityClosed
    (And.intro E.trigonometricSystemClosed
      (And.intro E.partialSumsClosed E.parsevalIdentityClosed))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
