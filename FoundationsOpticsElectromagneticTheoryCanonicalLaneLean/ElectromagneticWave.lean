import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticWavePackage where
  waveEquationDerived : Prop
  transverseNature : Prop
  polarizationStates : Prop
  phaseVelocity : Prop

def ElectromagneticWaveClosed (W : ElectromagneticWavePackage) : Prop :=
  W.waveEquationDerived ∧ W.transverseNature ∧ W.polarizationStates ∧ W.phaseVelocity

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse