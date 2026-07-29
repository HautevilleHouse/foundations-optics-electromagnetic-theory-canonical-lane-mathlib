import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure PolarizationOpticsPackage where
  linearPolarization : Prop
  circularPolarization : Prop
  ellipticalPolarization : Prop
  jonesCalculus : Prop

def PolarizationOpticsClosed (P : PolarizationOpticsPackage) : Prop :=
  P.linearPolarization ∧ P.circularPolarization ∧ P.ellipticalPolarization ∧ P.jonesCalculus

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse