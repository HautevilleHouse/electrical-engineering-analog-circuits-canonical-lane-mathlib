import ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.OperationalAmplifier

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure FeedbackAnalysisPackage {O : OperationalAmplifierPackage} where
  closedLoopGain : Prop
  stabilityMargin : Prop
  phaseMargin : Prop
  gainMargin : Prop
  feedbackFactor : Prop
  stabilityCondition : Prop

structure FeedbackAnalysisEvidence {O : OperationalAmplifierPackage}
    (F : FeedbackAnalysisPackage O) where
  closedLoopGainClosed : F.closedLoopGain
  stabilityMarginClosed : F.stabilityMargin
  phaseMarginClosed : F.phaseMargin
  gainMarginClosed : F.gainMargin
  feedbackFactorClosed : F.feedbackFactor
  stabilityConditionClosed : F.stabilityCondition

def FeedbackAnalysisClosed {O : OperationalAmplifierPackage}
    (F : FeedbackAnalysisPackage O) : Prop :=
  F.closedLoopGain ∧ F.stabilityMargin ∧ F.phaseMargin ∧ F.gainMargin ∧
  F.feedbackFactor ∧ F.stabilityCondition

theorem feedback_analysis_closed_from_evidence {O : OperationalAmplifierPackage}
    (F : FeedbackAnalysisPackage O) (E : FeedbackAnalysisEvidence F) :
    FeedbackAnalysisClosed F := by
  exact And.intro E.closedLoopGainClosed
    (And.intro E.stabilityMarginClosed
      (And.intro E.phaseMarginClosed
        (And.intro E.gainMarginClosed
          (And.intro E.feedbackFactorClosed E.stabilityConditionClosed))))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse