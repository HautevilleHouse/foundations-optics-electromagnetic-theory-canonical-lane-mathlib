import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeConstant : Prop
  anisotropyField : Prop
  saturationMagnetization : Prop
  dispersionRelation : Prop
  waveVectorRange : Prop

structure SpinWaveDispersionEvidence (S : SpinWaveDispersionPackage) where
  exchangeConstantClosed : S.exchangeConstant
  anisotropyFieldClosed : S.anisotropyField
  saturationMagnetizationClosed : S.saturationMagnetization
  dispersionRelationClosed : S.dispersionRelation
  waveVectorRangeClosed : S.waveVectorRange

def SpinWaveDispersionClosed (S : SpinWaveDispersionPackage) : Prop :=
  S.exchangeConstant ∧ S.anisotropyField ∧ S.saturationMagnetization ∧ S.dispersionRelation ∧ S.waveVectorRange

theorem spin_wave_dispersion_closed_from_evidence (S : SpinWaveDispersionPackage) (E : SpinWaveDispersionEvidence S) :
    SpinWaveDispersionClosed S := by
  exact And.intro E.exchangeConstantClosed (And.intro E.anisotropyFieldClosed (And.intro E.saturationMagnetizationClosed (And.intro E.dispersionRelationClosed E.waveVectorRangeClosed)))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse