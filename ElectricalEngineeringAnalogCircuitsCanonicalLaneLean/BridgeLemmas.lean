import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnalogWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse