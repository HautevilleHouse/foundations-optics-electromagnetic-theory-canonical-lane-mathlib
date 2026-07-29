import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticalMediumPackage where
  permittivityDefined : Prop
  permeabilityDefined : Prop
  refractiveIndex : Prop
  dispersionRelation : Prop

def OpticalMediumClosed (O : OpticalMediumPackage) : Prop :=
  O.permittivityDefined ∧ O.permeabilityDefined ∧ O.refractiveIndex ∧ O.dispersionRelation

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse