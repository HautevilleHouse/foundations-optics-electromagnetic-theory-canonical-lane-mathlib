import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure LorentzForceLawPackage where
  forceOnCharge : Prop
  electricFieldForce : Prop
  magneticFieldForce : Prop
  workDone : Prop
  relativisticCovariance : Prop

structure LorentzForceLawEvidence (L : LorentzForceLawPackage) where
  forceOnChargeClosed : L.forceOnCharge
  electricFieldForceClosed : L.electricFieldForce
  magneticFieldForceClosed : L.magneticFieldForce
  workDoneClosed : L.workDone
  relativisticCovarianceClosed : L.relativisticCovariance

def LorentzForceLawClosed (L : LorentzForceLawPackage) : Prop :=
  L.forceOnCharge ∧ L.electricFieldForce ∧ L.magneticFieldForce ∧ L.workDone ∧ L.relativisticCovariance

theorem lorentz_force_law_closed_from_evidence (L : LorentzForceLawPackage)
    (E : LorentzForceLawEvidence L) : LorentzForceLawClosed L := by
  exact And.intro E.forceOnChargeClosed
    (And.intro E.electricFieldForceClosed
      (And.intro E.magneticFieldForceClosed
        (And.intro E.workDoneClosed E.relativisticCovarianceClosed)))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse