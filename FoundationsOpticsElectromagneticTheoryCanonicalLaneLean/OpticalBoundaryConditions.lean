import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticalBoundaryConditionsPackage where
  snellLaw : Prop
  fresnelEquations : Prop
  totalInternalReflection : Prop

structure OpticalBoundaryConditionsEvidence (P : OpticalBoundaryConditionsPackage) where
  snellLawClosed : P.snellLaw
  fresnelEquationsClosed : P.fresnelEquations
  totalInternalReflectionClosed : P.totalInternalReflection

def OpticalBoundaryConditionsClosed (P : OpticalBoundaryConditionsPackage) : Prop :=
  P.snellLaw ∧ P.fresnelEquations ∧ P.totalInternalReflection

theorem optical_boundary_conditions_closed_from_evidence (P : OpticalBoundaryConditionsPackage) (E : OpticalBoundaryConditionsEvidence P) :
    OpticalBoundaryConditionsClosed P := by
  exact And.intro E.snellLawClosed (And.intro E.fresnelEquationsClosed E.totalInternalReflectionClosed)

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
