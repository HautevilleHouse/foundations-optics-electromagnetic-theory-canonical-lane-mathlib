import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure PolarizationCoherencePackage where
  jonesVector : Type u
  stokesParameters : Type v
  muellerMatrix : Type w
  coherenceFunction : Prop
  degreeOfCoherence : Prop
  crossSpectralDensity : Prop

structure PolarizationCoherenceEvidence (P : PolarizationCoherencePackage) where
  coherenceFunctionClosed : P.coherenceFunction
  degreeOfCoherenceClosed : P.degreeOfCoherence
  crossSpectralDensityClosed : P.crossSpectralDensity

def PolarizationCoherenceClosed (P : PolarizationCoherencePackage) : Prop :=
  P.coherenceFunction ∧ P.degreeOfCoherence ∧ P.crossSpectralDensity

theorem polarization_coherence_closed_from_evidence (P : PolarizationCoherencePackage) (E : PolarizationCoherenceEvidence P) :
    PolarizationCoherenceClosed P := by
  exact And.intro E.coherenceFunctionClosed (And.intro E.degreeOfCoherenceClosed E.crossSpectralDensityClosed)

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse