import HautevilleHouse.ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.CircuitAnalysisFoundation

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure OperationalAmplifierPackage where
  idealModel : Prop
  virtualShort : Prop
  infiniteInputImpedance : Prop
  zeroOutputImpedance : Prop
  infiniteGain : Prop

structure OperationalAmplifierEvidence (P : OperationalAmplifierPackage) where
  idealModelClosed : P.idealModel
  virtualShortClosed : P.virtualShort
  infiniteInputImpedanceClosed : P.infiniteInputImpedance
  zeroOutputImpedanceClosed : P.zeroOutputImpedance
  infiniteGainClosed : P.infiniteGain

def OperationalAmplifierClosed (P : OperationalAmplifierPackage) : Prop :=
  P.idealModel ∧ P.virtualShort ∧ P.infiniteInputImpedance ∧ P.zeroOutputImpedance ∧ P.infiniteGain

theorem op_amp_closed_from_evidence (P : OperationalAmplifierPackage) (E : OperationalAmplifierEvidence P) :
    OperationalAmplifierClosed P :=
  by
    exact And.intro E.idealModelClosed
      (And.intro E.virtualShortClosed
        (And.intro E.infiniteInputImpedanceClosed
          (And.intro E.zeroOutputImpedanceClosed E.infiniteGainClosed)))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse