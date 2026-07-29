import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.AnalogMathlibObjects

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure AdmissibleClass where
  object : AnalogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AnalogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse