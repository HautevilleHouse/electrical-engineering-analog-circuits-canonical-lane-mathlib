import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringAnalogCircuitsCanonicalLaneLean

structure FilterTransferFunctionPackage where
  transferFunction : Prop
  poleLocations : Prop
  zeroLocations : Prop
  frequencyResponse : Prop
  filterOrder : Prop

structure FilterTransferFunctionEvidence (F : FilterTransferFunctionPackage) where
  transferFunctionClosed : F.transferFunction
  poleLocationsClosed : F.poleLocations
  zeroLocationsClosed : F.zeroLocations
  frequencyResponseClosed : F.frequencyResponse
  filterOrderClosed : F.filterOrder

def FilterTransferFunctionClosed (F : FilterTransferFunctionPackage) : Prop :=
  F.transferFunction ∧ F.poleLocations ∧ F.zeroLocations ∧ F.frequencyResponse ∧ F.filterOrder

theorem filter_transfer_function_closed_from_evidence (F : FilterTransferFunctionPackage) (E : FilterTransferFunctionEvidence F) :
    FilterTransferFunctionClosed F := by
  exact And.intro E.transferFunctionClosed
    (And.intro E.poleLocationsClosed
      (And.intro E.zeroLocationsClosed
        (And.intro E.frequencyResponseClosed E.filterOrderClosed)))

end ElectricalEngineeringAnalogCircuitsCanonicalLaneLean
end HautevilleHouse