import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure SummabilityMethodsPackage where
  cesaroSummability : Prop
  abelSummability : Prop
  fejerTheorem : Prop
  abelPoissonTheorem : Prop
  tauberianTheorem : Prop

structure SummabilityMethodsEvidence (P : SummabilityMethodsPackage) where
  cesaroSummabilityClosed : P.cesaroSummability
  abelSummabilityClosed : P.abelSummability
  fejerTheoremClosed : P.fejerTheorem
  abelPoissonTheoremClosed : P.abelPoissonTheorem
  tauberianTheoremClosed : P.tauberianTheorem

def SummabilityMethodsClosed (P : SummabilityMethodsPackage) : Prop :=
  P.cesaroSummability ∧ P.abelSummability ∧
  P.fejerTheorem ∧ P.abelPoissonTheorem ∧ P.tauberianTheorem

theorem summability_methods_closed_from_evidence
    (P : SummabilityMethodsPackage) (E : SummabilityMethodsEvidence P) :
    SummabilityMethodsClosed P := by
  exact And.intro E.cesaroSummabilityClosed
    (And.intro E.abelSummabilityClosed
      (And.intro E.fejerTheoremClosed
        (And.intro E.abelPoissonTheoremClosed E.tauberianTheoremClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
