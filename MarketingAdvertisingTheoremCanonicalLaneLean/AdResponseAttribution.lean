import canonicalLaneMathlib.AdmissibleClass
import MarketingAdvertisingTheoremCanonicalLaneLean.MarketingAdmittedObject

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AttributionEvidence where
  lastClickAttributed : Prop
  linearAttributed : Prop
  timeDecayAttributed : Prop
  positionBasedAttributed : Prop
  dataDrivenModel : Prop

structure AttributionDataAnalysis where
  attributionModel : String
  attributedConversions : ℝ
  attributedRevenue : ℝ
  attributionEvidence : AttributionEvidence

def AttributionModelClosed (A : AttributionEvidence) : Prop :=
  A.lastClickAttributed ∧ A.linearAttributed ∧ A.timeDecayAttributed ∧ A.positionBasedAttributed ∧ A.dataDrivenModel

theorem attribution_model_closed (A : AttributionEvidence) : AttributionModelClosed A :=
  And.intro A.lastClickAttributed
    (And.intro A.linearAttributed
      (And.intro A.timeDecayAttributed
        (And.intro A.positionBasedAttributed A.dataDrivenModel)))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse