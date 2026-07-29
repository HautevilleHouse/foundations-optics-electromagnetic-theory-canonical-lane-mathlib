import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  chargeDensity : Prop
  currentDensity : Prop
  gaussLawElectric : Prop
  gaussLawMagnetic : Prop
  faradayLaw : Prop
  ampereLaw : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  gaussLawElectricClosed : M.gaussLawElectric
  gaussLawMagneticClosed : M.gaussLawMagnetic
  faradayLawClosed : M.faradayLaw
  ampereLawClosed : M.ampereLaw

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.gaussLawElectric ∧ M.gaussLawMagnetic ∧ M.faradayLaw ∧ M.ampereLaw

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence M) : MaxwellEquationsClosed M := by
  exact And.intro E.gaussLawElectricClosed
    (And.intro E.gaussLawMagneticClosed
      (And.intro E.faradayLawClosed E.ampereLawClosed))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse