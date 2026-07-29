import canonicalLaneMathlib.AdmissibleClass

/-!
# Attribution Model Package
-/

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AttributionModelPackage where
  touchpointSet : Type u
  attributionRule : Type v
  lastClickAttribution : Prop
  multiTouchAttribution : Prop
  incrementalAttribution : Prop
  lastClickAttributionClosed : lastClickAttribution
  multiTouchAttributionClosed : multiTouchAttribution
  incrementalAttributionClosed : incrementalAttribution

structure AttributionModelEvidence (A : AttributionModelPackage) where
  lastClickAttributionClosed : A.lastClickAttribution
  multiTouchAttributionClosed : A.multiTouchAttribution
  incrementalAttributionClosed : A.incrementalAttribution

def AttributionModelClosed (A : AttributionModelPackage) : Prop :=
  A.lastClickAttribution ∧ A.multiTouchAttribution ∧ A.incrementalAttribution

theorem attribution_model_closed_from_evidence
    (A : AttributionModelPackage) (E : AttributionModelEvidence A) :
    AttributionModelClosed A := by
  exact And.intro E.lastClickAttributionClosed
    (And.intro E.multiTouchAttributionClosed E.incrementalAttributionClosed)

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse
