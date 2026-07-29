import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure ConversionFunnelPackage where
  awarenessLevel : Prop
  interestLevel : Prop
  desireLevel : Prop
  actionLevel : Prop

structure ConversionFunnelEvidence (F : ConversionFunnelPackage) where
  awarenessLevelClosed : F.awarenessLevel
  interestLevelClosed : F.interestLevel
  desireLevelClosed : F.desireLevel
  actionLevelClosed : F.actionLevel

def ConversionFunnelClosed (F : ConversionFunnelPackage) : Prop :=
  F.awarenessLevel ∧ F.interestLevel ∧ F.desireLevel ∧ F.actionLevel

theorem conversion_funnel_closed_from_evidence (F : ConversionFunnelPackage) (E : ConversionFunnelEvidence F) :
    ConversionFunnelClosed F := by
  exact And.intro E.awarenessLevelClosed (And.intro E.interestLevelClosed (And.intro E.desireLevelClosed E.actionLevelClosed))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse