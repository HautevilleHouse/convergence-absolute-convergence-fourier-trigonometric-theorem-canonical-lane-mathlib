import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure FourierSpace where
  carrier : Type
  measure : carrier → ℂ
  integrable : Prop
  fourierSeriesConverges : Prop

structure FourierAdmittedObject where
  space : FourierSpace
  periodic : Prop
  bounded : Prop
  fourierCoefficients : Type
  absoluteConvergence : Prop
  trigonometricRepresentation : Prop
  conclusion : absoluteConvergence ∧ trigonometricRepresentation

def FourierWitnessClosed (O : FourierAdmittedObject) : Prop :=
  O.absoluteConvergence ∧ O.trigonometricRepresentation

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse