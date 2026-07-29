import canonicalLaneMathlib.AdmissibleClass
import FoundationsOpticsElectromagneticTheoryCanonicalLaneLean.BridgeLemmas
import FoundationsOpticsElectromagneticTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

def ConstrainedOpticsElectromagnetismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_optics_electromagnetism_endgame (A : AdmissibleClass) :
    ConstrainedOpticsElectromagnetismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse