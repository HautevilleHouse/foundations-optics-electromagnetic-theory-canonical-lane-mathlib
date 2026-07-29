import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MaterialResponsePackage where
  permittivity : Prop
  permeability : Prop
  conductivity : Prop
  lorentzOscillatorModel : Prop

structure MaterialResponseEvidence (P : MaterialResponsePackage) where
  permittivityClosed : P.permittivity
  permeabilityClosed : P.permeability
  conductivityClosed : P.conductivity
  lorentzOscillatorModelClosed : P.lorentzOscillatorModel

def MaterialResponseClosed (P : MaterialResponsePackage) : Prop :=
  P.permittivity ∧ P.permeability ∧ P.conductivity ∧ P.lorentzOscillatorModel

theorem material_response_closed_from_evidence (P : MaterialResponsePackage) (E : MaterialResponseEvidence P) :
    MaterialResponseClosed P := by
  exact And.intro E.permittivityClosed
    (And.intro E.permeabilityClosed
      (And.intro E.conductivityClosed E.lorentzOscillatorModelClosed))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
