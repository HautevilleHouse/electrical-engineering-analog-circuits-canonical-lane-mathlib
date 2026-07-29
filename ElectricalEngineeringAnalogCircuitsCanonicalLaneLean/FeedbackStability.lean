import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure FeedbackStabilityPackage where
  loopGain : Prop
  phaseMargin : Prop
  gainMargin : Prop
  stabilityCondition : Prop
  closedLoopPolesStable : Prop

structure FeedbackStabilityEvidence (F : FeedbackStabilityPackage) where
  loopGainClosed : F.loopGain
  phaseMarginClosed : F.phaseMargin
  gainMarginClosed : F.gainMargin
  stabilityConditionClosed : F.stabilityCondition
  closedLoopPolesStableClosed : F.closedLoopPolesStable

def FeedbackStabilityClosed (F : FeedbackStabilityPackage) : Prop :=
  F.loopGain ∧ F.phaseMargin ∧ F.gainMargin ∧ F.stabilityCondition ∧ F.closedLoopPolesStable

theorem feedback_stability_closed_from_evidence (F : FeedbackStabilityPackage) (E : FeedbackStabilityEvidence F) :
    FeedbackStabilityClosed F := by
  exact And.intro E.loopGainClosed
    (And.intro E.phaseMarginClosed
      (And.intro E.gainMarginClosed
        (And.intro E.stabilityConditionClosed E.closedLoopPolesStableClosed)))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse