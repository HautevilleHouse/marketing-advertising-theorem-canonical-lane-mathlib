import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure CustomerSegmentationPackage where
  demographicSegmentation : Prop
  behavioralSegmentation : Prop
  psychographicSegmentation : Prop
  geographicSegmentation : Prop
  demographicValid : demographicSegmentation
  behavioralValid : behavioralSegmentation
  psychographicValid : psychographicSegmentation
  geographicValid : geographicSegmentation

def CustomerSegmentationClosed (C : CustomerSegmentationPackage) : Prop :=
  C.demographicSegmentation ∧ C.behavioralSegmentation ∧ C.psychographicSegmentation ∧ C.geographicSegmentation

structure CustomerSegmentationEvidence (C : CustomerSegmentationPackage) where
  demographicClosed : C.demographicSegmentation
  behavioralClosed : C.behavioralSegmentation
  psychographicClosed : C.psychographicSegmentation
  geographicClosed : C.geographicSegmentation

theorem customer_segmentation_closed_from_evidence (C : CustomerSegmentationPackage) (E : CustomerSegmentationEvidence C) :
    CustomerSegmentationClosed C := by
  exact And.intro E.demographicClosed (And.intro E.behavioralClosed (And.intro E.psychographicClosed E.geographicClosed))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse
