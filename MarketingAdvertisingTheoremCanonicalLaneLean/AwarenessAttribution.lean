import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AwarenessAttributionPackage where
  awarenessMetrics : Type u
  attributionModel : Prop
  incrementalReach : Prop
  brandLift : Prop
  adRecall : Prop

structure AwarenessAttributionEvidence (A : AwarenessAttributionPackage) where
  attributionModelClosed : A.attributionModel
  incrementalReachClosed : A.incrementalReach
  brandLiftClosed : A.brandLift
  adRecallClosed : A.adRecall

def AwarenessAttributionClosed (A : AwarenessAttributionPackage) : Prop :=
  A.attributionModel ∧ A.incrementalReach ∧ A.brandLift ∧ A.adRecall

theorem awareness_attribution_closed_from_evidence (A : AwarenessAttributionPackage)
    (E : AwarenessAttributionEvidence A) : AwarenessAttributionClosed A := by
  exact And.intro E.attributionModelClosed
    (And.intro E.incrementalReachClosed
      (And.intro E.brandLiftClosed E.adRecallClosed))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse