import canonicalLaneMathlib.AdmissibleClass

/-!
# Ad Effectiveness Package
-/

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AdEffectivenessPackage where
  treatmentArm : Type u
  controlArm : Type v
  liftMetric : Type w
  statisticalSignificance : Prop
  effectSize : Prop
  confoundersControlled : Prop
  statisticalSignificanceClosed : statisticalSignificance
  effectSizeClosed : effectSize
  confoundersControlledClosed : confoundersControlled

structure AdEffectivenessEvidence (A : AdEffectivenessPackage) where
  statisticalSignificanceClosed : A.statisticalSignificance
  effectSizeClosed : A.effectSize
  confoundersControlledClosed : A.confoundersControlled

def AdEffectivenessClosed (A : AdEffectivenessPackage) : Prop :=
  A.statisticalSignificance ∧ A.effectSize ∧ A.confoundersControlled

theorem ad_effectiveness_closed_from_evidence
    (A : AdEffectivenessPackage) (E : AdEffectivenessEvidence A) :
    AdEffectivenessClosed A := by
  exact And.intro E.statisticalSignificanceClosed
    (And.intro E.effectSizeClosed E.confoundersControlledClosed)

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse
