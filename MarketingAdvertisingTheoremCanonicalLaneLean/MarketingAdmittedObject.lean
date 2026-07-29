import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure MarketingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MarketingAdmittedObject where
  space : MarketingSpace
  targetAudienceReached : Prop
  conversionRatePositive : Prop
  campaignModel : Type
  modelTopology : TopologicalSpace campaignModel
  optimalStrategy : Prop
  conclusion : optimalStrategy

structure MarketingEndgameState where
  object : MarketingAdmittedObject

def MarketingWitnessClosed (O : MarketingAdmittedObject) : Prop :=
  O.optimalStrategy

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse
