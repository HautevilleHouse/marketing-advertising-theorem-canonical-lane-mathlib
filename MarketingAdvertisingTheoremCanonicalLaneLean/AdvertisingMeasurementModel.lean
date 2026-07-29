import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AdvertisingMetrics where
  impressions : Nat
  clicks : Nat
  conversions : Nat
  cost : Float

structure CustomerJourney where
  touchpoints : List String
  attributionWeights : List Float

structure MeasurementPackage where
  metrics : AdvertisingMetrics
  journey : CustomerJourney
  attributionMethod : String
  roi : Float

structure MeasurementEvidence (M : MeasurementPackage) where
  impressionsClosed : M.metrics.impressions > 0
  clicksClosed : M.metrics.clicks > 0
  conversionsClosed : M.metrics.conversions > 0
  costClosed : M.metrics.cost > 0
  attributionClosed : M.attributionMethod ≠ ""

def MeasurementClosed (M : MeasurementPackage) : Prop :=
  M.metrics.impressions > 0 ∧ M.metrics.clicks > 0 ∧ M.metrics.conversions > 0 ∧
  M.metrics.cost > 0 ∧ M.attributionMethod ≠ ""

theorem measurement_closed_from_evidence (M : MeasurementPackage) (E : MeasurementEvidence M) :
    MeasurementClosed M := by
  exact And.intro E.impressionsClosed (And.intro E.clicksClosed (And.intro E.conversionsClosed (And.intro E.costClosed E.attributionClosed)))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse