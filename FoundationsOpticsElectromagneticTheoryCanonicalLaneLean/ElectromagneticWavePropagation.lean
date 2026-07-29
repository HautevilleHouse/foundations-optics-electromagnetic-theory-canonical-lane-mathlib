import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticWavePropagationPackage where
  waveEquation : Prop
  polarization : Prop
  phaseVelocity : Prop
  groupVelocity : Prop
  dispersionRelation : Prop

structure ElectromagneticWavePropagationEvidence (W : ElectromagneticWavePropagationPackage) where
  waveEquationClosed : W.waveEquation
  polarizationClosed : W.polarization
  phaseVelocityClosed : W.phaseVelocity
  groupVelocityClosed : W.groupVelocity
  dispersionRelationClosed : W.dispersionRelation

def ElectromagneticWavePropagationClosed (W : ElectromagneticWavePropagationPackage) : Prop :=
  W.waveEquation ∧ W.polarization ∧ W.phaseVelocity ∧ W.groupVelocity ∧ W.dispersionRelation

theorem electromagnetic_wave_propagation_closed_from_evidence
    (W : ElectromagneticWavePropagationPackage)
    (E : ElectromagneticWavePropagationEvidence W) :
    ElectromagneticWavePropagationClosed W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.polarizationClosed
      (And.intro E.phaseVelocityClosed
        (And.intro E.groupVelocityClosed E.dispersionRelationClosed)))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse