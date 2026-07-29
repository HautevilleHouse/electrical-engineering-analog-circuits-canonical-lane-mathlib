import HautevilleHouse.ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.OperationalAmplifierPackage

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure FilterDesignPackage {OpAmp : OperationalAmplifierPackage} where
  filterType : String
  cutoffFrequency : Float
  order : Nat
  transferFunction : String
  implementation : Prop

structure FilterDesignEvidence {OpAmp : OperationalAmplifierPackage} (F : FilterDesignPackage OpAmp) where
  implementationClosed : F.implementation

def FilterDesignClosed {OpAmp : OperationalAmplifierPackage} (F : FilterDesignPackage OpAmp) : Prop :=
  F.implementation

theorem filter_design_closed_from_evidence {OpAmp : OperationalAmplifierPackage}
    (F : FilterDesignPackage OpAmp) (E : FilterDesignEvidence F) :
    FilterDesignClosed F :=
  by
    exact E.implementationClosed

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse