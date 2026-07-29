import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure EMEnergyMomentumPackage where
  poyntingVector : Prop
  energyDensity : Prop
  maxwellStressTensor : Prop
  conservationLaws : Prop

structure EMEnergyMomentumEvidence (P : EMEnergyMomentumPackage) where
  poyntingVectorClosed : P.poyntingVector
  energyDensityClosed : P.energyDensity
  maxwellStressTensorClosed : P.maxwellStressTensor
  conservationLawsClosed : P.conservationLaws

def EMEnergyMomentumClosed (P : EMEnergyMomentumPackage) : Prop :=
  P.poyntingVector ∧ P.energyDensity ∧ P.maxwellStressTensor ∧ P.conservationLaws

theorem em_energy_momentum_closed_from_evidence (P : EMEnergyMomentumPackage) (E : EMEnergyMomentumEvidence P) :
    EMEnergyMomentumClosed P := by
  exact And.intro E.poyntingVectorClosed
    (And.intro E.energyDensityClosed
      (And.intro E.maxwellStressTensorClosed E.conservationLawsClosed))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
