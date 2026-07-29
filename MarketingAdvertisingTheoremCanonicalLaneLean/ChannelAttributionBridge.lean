import canonicalLaneMathlib.AdmissibleClass
import MarketingAdvertisingTheoremCanonicalLaneLean.MarketingAdmittedObject
import MarketingAdvertisingTheoremCanonicalLaneLean.AdResponseAttribution

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure ChannelContribution where
  channel : AdChannel
  attributedConversions : ℝ
  marginalROI : ℝ
  synergyEffect : ℝ

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MarketingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse