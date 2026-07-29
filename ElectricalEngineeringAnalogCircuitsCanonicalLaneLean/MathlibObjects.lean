import HautevilleHouse.ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure AnalogCircuitObject where
  carrier : Type
  kirchhoffLawsSatisfied : Prop
  conclusion : Prop

def AnalogCircuitClosed (O : AnalogCircuitObject) : Prop :=
  O.kirchhoffLawsSatisfied ∧ O.conclusion

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse