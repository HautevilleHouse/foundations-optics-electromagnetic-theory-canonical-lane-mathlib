import FoundationsOpticsElectromagneticTheoryCanonicalLaneLean.RiemannianCurvature

/-!
# Wave Equation Package
-/

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveEquationPackage {G : RiemannianCurvaturePackage} where
  waveOperator : Type u
  dAlembertian : Type v
  propagationSpeed : Prop
  solutionExistence : Prop
  huygensPrinciple : Prop

structure WaveEquationEvidence {G : RiemannianCurvaturePackage}
    (W : WaveEquationPackage G) where
  propagationSpeedClosed : W.propagationSpeed
  solutionExistenceClosed : W.solutionExistence
  huygensPrincipleClosed : W.huygensPrinciple

def WaveEquationClosed {G : RiemannianCurvaturePackage}
    (W : WaveEquationPackage G) : Prop :=
  W.propagationSpeed ∧ W.solutionExistence ∧ W.huygensPrinciple

theorem wave_equation_closed_from_evidence
    {G : RiemannianCurvaturePackage} (W : WaveEquationPackage G)
    (E : WaveEquationEvidence W) : WaveEquationClosed W := by
  exact And.intro E.propagationSpeedClosed
    (And.intro E.solutionExistenceClosed E.huygensPrincipleClosed)

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse