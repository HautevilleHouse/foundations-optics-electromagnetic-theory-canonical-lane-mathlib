import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellPDEPackage where
  electricField : Type u
  magneticField : Type v
  timeParameter : Type w
  faradayLaw : Prop
  ampereLaw : Prop
  gaussLawElectric : Prop
  gaussLawMagnetic : Prop
  constitutiveRelations : Prop

structure MaxwellPDEEvidence (M : MaxwellPDEPackage) where
  faradayLawClosed : M.faradayLaw
  ampereLawClosed : M.ampereLaw
  gaussLawElectricClosed : M.gaussLawElectric
  gaussLawMagneticClosed : M.gaussLawMagnetic
  constitutiveRelationsClosed : M.constitutiveRelations

def MaxwellPDEClosed (M : MaxwellPDEPackage) : Prop :=
  M.faradayLaw ∧ M.ampereLaw ∧ M.gaussLawElectric ∧ M.gaussLawMagnetic ∧ M.constitutiveRelations

theorem maxwell_pde_closed_from_evidence (M : MaxwellPDEPackage) (E : MaxwellPDEEvidence M) :
    MaxwellPDEClosed M := by
  exact And.intro E.faradayLawClosed (And.intro E.ampereLawClosed (And.intro E.gaussLawElectricClosed (And.intro E.gaussLawMagneticClosed E.constitutiveRelationsClosed)))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse