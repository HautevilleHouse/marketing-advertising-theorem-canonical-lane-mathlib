import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MarketingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse
