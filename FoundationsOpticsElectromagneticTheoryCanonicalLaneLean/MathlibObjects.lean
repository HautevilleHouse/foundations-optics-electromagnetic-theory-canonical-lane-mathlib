import FoundationsOpticsElectromagneticTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OpticsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OpticsAdmittedObject where
  space : OpticsSpace
  maxwellEquationsHold : Prop
  waveEquationDerived : Prop
  polarizationModel : Type
  polarizationTopology : TopologicalSpace polarizationModel
  polarizationResolved : Prop
  conclusion : polarizationResolved

structure OpticsEndgameState where
  object : OpticsAdmittedObject

def OpticsWitnessClosed (O : OpticsAdmittedObject) : Prop :=
  O.polarizationResolved

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse