import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure EMWavePropagationPackage where
  waveEquation : Prop
  planeWaveSolution : Prop
  dispersionRelation : Prop
  polarization : Prop

structure EMWavePropagationEvidence (P : EMWavePropagationPackage) where
  waveEquationClosed : P.waveEquation
  planeWaveSolutionClosed : P.planeWaveSolution
  dispersionRelationClosed : P.dispersionRelation
  polarizationClosed : P.polarization

def EMWavePropagationClosed (P : EMWavePropagationPackage) : Prop :=
  P.waveEquation ∧ P.planeWaveSolution ∧ P.dispersionRelation ∧ P.polarization

theorem em_wave_propagation_closed_from_evidence (P : EMWavePropagationPackage) (E : EMWavePropagationEvidence P) :
    EMWavePropagationClosed P := by
  exact And.intro E.waveEquationClosed
    (And.intro E.planeWaveSolutionClosed
      (And.intro E.dispersionRelationClosed E.polarizationClosed))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
