import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticFieldPackage where
  spaceTime : Type u
  topology : TopologicalSpace spaceTime
  electricField : spaceTime → Type v
  magneticField : spaceTime → Type w
  sourceFree : Prop
  maxwellEquations : Prop
  energyConservation : Prop

structure ElectromagneticFieldEvidence (F : ElectromagneticFieldPackage) where
  sourceFreeClosed : F.sourceFree
  maxwellEquationsClosed : F.maxwellEquations
  energyConservationClosed : F.energyConservation

def ElectromagneticFieldClosed (F : ElectromagneticFieldPackage) : Prop :=
  F.sourceFree ∧ F.maxwellEquations ∧ F.energyConservation

theorem electromagnetic_field_closed_from_evidence (F : ElectromagneticFieldPackage)
    (E : ElectromagneticFieldEvidence F) : ElectromagneticFieldClosed F := by
  exact And.intro E.sourceFreeClosed (And.intro E.maxwellEquationsClosed E.energyConservationClosed)

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse