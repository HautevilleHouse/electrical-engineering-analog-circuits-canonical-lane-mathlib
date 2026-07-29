import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.FeedbackAnalysis

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure FilterDesignPackage {O : OperationalAmplifierPackage}
    {F : FeedbackAnalysisPackage O} where
  filterOrder : Nat
  cutoffFrequency : Prop
  passbandRipple : Prop
  stopbandAttenuation : Prop
  filterType : String  -- "lowpass", "highpass", "bandpass", "bandstop"
  transferFunctionValid : Prop
  causalityCondition : Prop

structure FilterDesignEvidence {O : OperationalAmplifierPackage}
    {F : FeedbackAnalysisPackage O} (D : FilterDesignPackage) where
  cutoffFrequencyClosed : D.cutoffFrequency
  passbandRippleClosed : D.passbandRipple
  stopbandAttenuationClosed : D.stopbandAttenuation
  transferFunctionValidClosed : D.transferFunctionValid
  causalityConditionClosed : D.causalityCondition

def FilterDesignClosed {O : OperationalAmplifierPackage}
    {F : FeedbackAnalysisPackage O} (D : FilterDesignPackage) : Prop :=
  D.cutoffFrequency ∧ D.passbandRipple ∧ D.stopbandAttenuation ∧
  D.transferFunctionValid ∧ D.causalityCondition

theorem filter_design_closed_from_evidence {O : OperationalAmplifierPackage}
    {F : FeedbackAnalysisPackage O} (D : FilterDesignPackage)
    (E : FilterDesignEvidence D) : FilterDesignClosed D := by
  exact And.intro E.cutoffFrequencyClosed
    (And.intro E.passbandRippleClosed
      (And.intro E.stopbandAttenuationClosed
        (And.intro E.transferFunctionValidClosed E.causalityConditionClosed)))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse