import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MarketingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MarketingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse
