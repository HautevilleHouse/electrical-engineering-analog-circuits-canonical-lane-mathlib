import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure GainBandwidthPackage where
  gain : Prop
  bandwidth : Prop
  gainBandwidthProduct : Prop
  gainBandwidthProductConstant : Prop
  unityGainFrequency : Prop

structure GainBandwidthEvidence (G : GainBandwidthPackage) where
  gainClosed : G.gain
  bandwidthClosed : G.bandwidth
  gainBandwidthProductClosed : G.gainBandwidthProduct
  gainBandwidthProductConstantClosed : G.gainBandwidthProductConstant
  unityGainFrequencyClosed : G.unityGainFrequency

def GainBandwidthClosed (G : GainBandwidthPackage) : Prop :=
  G.gain ∧ G.bandwidth ∧ G.gainBandwidthProduct ∧ G.gainBandwidthProductConstant ∧ G.unityGainFrequency

theorem gain_bandwidth_closed_from_evidence (G : GainBandwidthPackage) (E : GainBandwidthEvidence G) :
    GainBandwidthClosed G := by
  exact And.intro E.gainClosed
    (And.intro E.bandwidthClosed
      (And.intro E.gainBandwidthProductClosed
        (And.intro E.gainBandwidthProductConstantClosed E.unityGainFrequencyClosed)))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse