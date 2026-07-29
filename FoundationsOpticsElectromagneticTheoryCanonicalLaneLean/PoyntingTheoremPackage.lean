import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure PoyntingTheoremPackage {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} where
  poyntingVector : Type u
  energyFlux : Prop
  energyDensity : Prop
  conservationLaw : Prop

structure PoyntingTheoremEvidence {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} (P : PoyntingTheoremPackage F W) where
  poyntingVectorDefined : Prop
  poyntingVectorDefinedTerm : P.poyntingVector = P.poyntingVector
  energyFluxClosed : P.energyFlux
  energyDensityClosed : P.energyDensity
  conservationLawClosed : P.conservationLaw

def PoyntingTheoremClosed {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} (P : PoyntingTheoremPackage F W) : Prop :=
  P.energyFlux ∧ P.energyDensity ∧ P.conservationLaw

theorem poynting_theorem_closed_from_evidence {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} (P : PoyntingTheoremPackage F W)
    (E : PoyntingTheoremEvidence F W P) : PoyntingTheoremClosed P := by
  exact And.intro E.energyFluxClosed (And.intro E.energyDensityClosed E.conservationLawClosed)

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse