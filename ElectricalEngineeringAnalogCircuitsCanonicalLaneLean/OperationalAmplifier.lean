import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure OperationalAmplifierPackage where
  gain : Type u
  bandwidth : Type v
  inputImpedance : Type w
  outputImpedance : Type x
  slewRate : Type y
  gainBandwidthProduct : Prop
  infiniteGainIdeal : Prop
  infiniteBandwidthIdeal : Prop
  infiniteInputImpedance : Prop
  zeroOutputImpedanceIdeal : Prop

structure OperationalAmplifierEvidence (O : OperationalAmplifierPackage) where
  gainBandwidthProductClosed : O.gainBandwidthProduct
  infiniteGainIdealClosed : O.infiniteGainIdeal
  infiniteBandwidthIdealClosed : O.infiniteBandwidthIdeal
  infiniteInputImpedanceClosed : O.infiniteInputImpedance
  zeroOutputImpedanceIdealClosed : O.zeroOutputImpedanceIdeal

def OperationalAmplifierClosed (O : OperationalAmplifierPackage) : Prop :=
  O.gainBandwidthProduct ∧ O.infiniteGainIdeal ∧ O.infiniteBandwidthIdeal ∧
  O.infiniteInputImpedance ∧ O.zeroOutputImpedanceIdeal

theorem operational_amplifier_closed_from_evidence (O : OperationalAmplifierPackage)
    (E : OperationalAmplifierEvidence O) : OperationalAmplifierClosed O := by
  exact And.intro E.gainBandwidthProductClosed
    (And.intro E.infiniteGainIdealClosed
      (And.intro E.infiniteBandwidthIdealClosed
        (And.intro E.infiniteInputImpedanceClosed
          E.zeroOutputImpedanceIdealClosed)))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse