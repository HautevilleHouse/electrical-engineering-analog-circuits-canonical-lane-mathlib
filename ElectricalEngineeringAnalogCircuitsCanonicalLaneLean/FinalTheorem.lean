import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.BridgeLemmas
import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

def ConstrainedAnalogClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_analog_endgame (A : AdmissibleClass) :
    ConstrainedAnalogClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse