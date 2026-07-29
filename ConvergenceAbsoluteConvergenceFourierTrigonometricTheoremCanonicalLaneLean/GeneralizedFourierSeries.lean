import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure GeneralizedFourierSeriesPackage where
  orthonormalBasis : Type u
  sturmLiouvilleOperator : Type v
  eigenfunctionExpansion : Prop
  meanSquareConvergence : Prop
  uniformConvergenceConditions : Prop
  pointwiseConvergenceConditions : Prop
  absoluteConvergenceConditions : Prop

structure GeneralizedFourierSeriesEvidence (P : GeneralizedFourierSeriesPackage) where
  eigenfunctionExpansionClosed : P.eigenfunctionExpansion
  meanSquareConvergenceClosed : P.meanSquareConvergence
  uniformConvergenceConditionsClosed : P.uniformConvergenceConditions
  pointwiseConvergenceConditionsClosed : P.pointwiseConvergenceConditions
  absoluteConvergenceConditionsClosed : P.absoluteConvergenceConditions

def GeneralizedFourierSeriesClosed (P : GeneralizedFourierSeriesPackage) : Prop :=
  P.eigenfunctionExpansion ∧ P.meanSquareConvergence ∧
  P.uniformConvergenceConditions ∧ P.pointwiseConvergenceConditions ∧
  P.absoluteConvergenceConditions

theorem generalized_fourier_series_closed_from_evidence
    (P : GeneralizedFourierSeriesPackage) (E : GeneralizedFourierSeriesEvidence P) :
    GeneralizedFourierSeriesClosed P := by
  exact And.intro E.eigenfunctionExpansionClosed
    (And.intro E.meanSquareConvergenceClosed
      (And.intro E.uniformConvergenceConditionsClosed
        (And.intro E.pointwiseConvergenceConditionsClosed
          E.absoluteConvergenceConditionsClosed)))

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse
