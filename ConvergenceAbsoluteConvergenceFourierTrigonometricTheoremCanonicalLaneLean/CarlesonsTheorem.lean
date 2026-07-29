import canonicalLaneMathlib.AdmissibleClass

/-!
# Carleson's Theorem Package (L² Convergence Almost Everywhere)
-/

namespace HautevilleHouse
namespace ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean

structure CarlesonTheoremPackage where
  maximalFunctionBounded : Prop
  almostEverywhereConvergence : Prop
  l2Result : Prop

structure CarlesonTheoremEvidence (C : CarlesonTheoremPackage) where
  maximalFunctionBoundedClosed : C.maximalFunctionBounded
  almostEverywhereConvergenceClosed : C.almostEverywhereConvergence
  l2ResultClosed : C.l2Result

def CarlesonTheoremClosed (C : CarlesonTheoremPackage) : Prop :=
  C.maximalFunctionBounded ∧ C.almostEverywhereConvergence ∧ C.l2Result

theorem carleson_theorem_closed_from_evidence (C : CarlesonTheoremPackage)
    (E : CarlesonTheoremEvidence C) : CarlesonTheoremClosed C := by
  exact And.intro E.maximalFunctionBoundedClosed (And.intro E.almostEverywhereConvergenceClosed E.l2ResultClosed)

end ConvergenceAbsoluteConvergenceFourierTrigonometricTheoremCanonicalLaneLean
end HautevilleHouse