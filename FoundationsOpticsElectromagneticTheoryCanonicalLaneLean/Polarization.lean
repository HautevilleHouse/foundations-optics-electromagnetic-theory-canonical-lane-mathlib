import FoundationsOpticsElectromagneticTheoryCanonicalLaneLean.WaveEquation

/-!
# Polarization Package
-/

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure PolarizationPackage {G : RiemannianCurvaturePackage}
    (W : WaveEquationPackage G) where
  polarizationState : Type u
  jonesVector : Type v
  stokesParameters : Type w
  coherenceTheory : Prop
  polarizationResolved : Prop

structure PolarizationEvidence {G : RiemannianCurvaturePackage}
    {W : WaveEquationPackage G} (P : PolarizationPackage W) where
  coherenceTheoryClosed : P.coherenceTheory
  polarizationResolvedClosed : P.polarizationResolved

def PolarizationClosed {G : RiemannianCurvaturePackage}
    {W : WaveEquationPackage G} (P : PolarizationPackage W) : Prop :=
  P.coherenceTheory ∧ P.polarizationResolved

theorem polarization_closed_from_evidence
    {G : RiemannianCurvaturePackage} {W : WaveEquationPackage G}
    (P : PolarizationPackage W) (E : PolarizationEvidence P) :
    PolarizationClosed P := by
  exact And.intro E.coherenceTheoryClosed E.polarizationResolvedClosed

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse