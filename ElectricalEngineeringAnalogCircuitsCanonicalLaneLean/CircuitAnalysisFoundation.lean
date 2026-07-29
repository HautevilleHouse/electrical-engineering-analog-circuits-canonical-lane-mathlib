import HautevilleHouse.ElectricalEngineeringAnalogCircuitsCanonicalLaneLean.FilterDesignPackage

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure CircuitAnalysisFoundation where
  opAmp : OperationalAmplifierPackage
  opAmpEvidence : OperationalAmplifierEvidence opAmp
  filter : FilterDesignPackage opAmp
  filterEvidence : FilterDesignEvidence filter
  kirchhoffLawsApplied : Prop
  nodalAnalysisPerformed : Prop

def CircuitAnalysisFoundationClosed (A : CircuitAnalysisFoundation) : Prop :=
  OperationalAmplifierClosed A.opAmp ∧ FilterDesignClosed A.filter ∧ A.kirchhoffLawsApplied ∧ A.nodalAnalysisPerformed

theorem circuit_analysis_foundation_closed_from_evidence (A : CircuitAnalysisFoundation) :
    CircuitAnalysisFoundationClosed A :=
  by
    have hOpAmp := op_amp_closed_from_evidence A.opAmp A.opAmpEvidence
    have hFilter := filter_design_closed_from_evidence A.filter A.filterEvidence
    exact And.intro hOpAmp (And.intro hFilter (And.intro A.kirchhoffLawsApplied A.nodalAnalysisPerformed))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse