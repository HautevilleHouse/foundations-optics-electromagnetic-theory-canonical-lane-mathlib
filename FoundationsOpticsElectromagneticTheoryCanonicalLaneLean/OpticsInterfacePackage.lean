import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticsInterfacePackage {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} {P : PoyntingTheoremPackage F W} where
  reflectionCoefficient : Prop
  transmissionCoefficient : Prop
  fresnelEquations : Prop
  brewsterAngle : Prop

structure OpticsInterfaceEvidence {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} {P : PoyntingTheoremPackage F W}
    (O : OpticsInterfacePackage F W P) where
  reflectionCoefficientClosed : O.reflectionCoefficient
  transmissionCoefficientClosed : O.transmissionCoefficient
  fresnelEquationsClosed : O.fresnelEquations
  brewsterAngleClosed : O.brewsterAngle

def OpticsInterfaceClosed {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} {P : PoyntingTheoremPackage F W}
    (O : OpticsInterfacePackage F W P) : Prop :=
  O.reflectionCoefficient ∧ O.transmissionCoefficient ∧
  O.fresnelEquations ∧ O.brewsterAngle

theorem optics_interface_closed_from_evidence {F : ElectromagneticFieldPackage}
    {W : WaveEquationPackage F} {P : PoyntingTheoremPackage F W}
    (O : OpticsInterfacePackage F W P) (E : OpticsInterfaceEvidence F W P O) :
    OpticsInterfaceClosed O := by
  exact And.intro E.reflectionCoefficientClosed
    (And.intro E.transmissionCoefficientClosed
      (And.intro E.fresnelEquationsClosed E.brewsterAngleClosed))

end FoundationsOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse