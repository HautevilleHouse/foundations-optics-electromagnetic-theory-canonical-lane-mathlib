import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveEquationPackage {F : ElectromagneticFieldPackage} where
  waveEquation : Prop
  propagationSpeed : Prop
  polarisationBasis : Prop
  phaseVelocity : Prop

structure WaveEquationEvidence {F : ElectromagneticFieldPackage}
    (W : WaveEquationPackage F) where
  waveEquationClosed : W.waveEquation
  propagationSpeedClosed : W.propagationSpeed
  polarisationBasisClosed : W.polarisationBasis
  phaseVelocityClosed : W.phaseVelocity

def WaveEquationClosed {F : ElectromagneticFieldPackage}
    (W : WaveEquationPackage F) : Prop :=
  W.waveEquation ∧ W.propagationSpeed ∧ W.polarisationBasis ∧ W.phaseVelocity

theorem wave_equation_closed_from_evidence {F : ElectromagneticFieldPackage}
    (W : WaveEquationPackage F) (E : WaveEquationEvidence W) : WaveEquationClosed W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.propagationSpeedClosed
      (And.intro E.polarisationBasisClosed E.phaseVelocityClosed))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse