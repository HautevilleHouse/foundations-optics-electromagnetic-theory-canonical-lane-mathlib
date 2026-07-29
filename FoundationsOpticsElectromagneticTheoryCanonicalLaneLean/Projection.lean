import FoundationsOpticsElectromagneticTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def opticsProjection : Projection OpticsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem optics_projection_idempotent (x : OpticsEndgameState) :
    opticsProjection.toFun (opticsProjection.toFun x) = opticsProjection.toFun x := by
  exact opticsProjection.idempotent x

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse