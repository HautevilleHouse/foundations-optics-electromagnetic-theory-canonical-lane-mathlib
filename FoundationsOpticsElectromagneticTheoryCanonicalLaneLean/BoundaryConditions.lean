import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure BoundaryConditionsPackage where
  snellsLaw : Prop
  fresnelEquations : Prop
  totalInternalReflection : Prop
  impedanceMatching : Prop

def BoundaryConditionsClosed (B : BoundaryConditionsPackage) : Prop :=
  B.snellsLaw ∧ B.fresnelEquations ∧ B.totalInternalReflection ∧ B.impedanceMatching

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse