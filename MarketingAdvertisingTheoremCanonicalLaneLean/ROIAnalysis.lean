import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure ROIInput where
  revenue : Float
  cost : Float
  attributableConversions : Nat

struct ROIResult where
  roi : Float
  roas : Float  -- Return on Ad Spend = revenue / cost
  profitMargin : Float

structure ROIAnalysisPackage where
  input : ROIInput
  result : ROIResult
  formulaCorrect : Prop

structure ROIAnalysisEvidence (R : ROIAnalysisPackage) where
  roiFormulaClosed : R.result.roi = (R.input.revenue - R.input.cost) / R.input.cost
  roasFormulaClosed : R.result.roas = R.input.revenue / R.input.cost
  profitMarginClosed : R.result.profitMargin = (R.input.revenue - R.input.cost) / R.input.revenue

def ROIAnalysisClosed (R : ROIAnalysisPackage) : Prop :=
  R.result.roi = (R.input.revenue - R.input.cost) / R.input.cost ∧
  R.result.roas = R.input.revenue / R.input.cost ∧
  R.result.profitMargin = (R.input.revenue - R.input.cost) / R.input.revenue

theorem roi_analysis_closed_from_evidence (R : ROIAnalysisPackage) (E : ROIAnalysisEvidence R) :
    ROIAnalysisClosed R := by
  exact And.intro E.roiFormulaClosed (And.intro E.roasFormulaClosed E.profitMarginClosed)

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse