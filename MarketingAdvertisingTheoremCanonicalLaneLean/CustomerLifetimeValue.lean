import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure CustomerLifetimeValuePackage where
  averageOrderValue : Prop
  purchaseFrequency : Prop
  customerLifespan : Prop
  clvCalculated : averageOrderValue ∧ purchaseFrequency ∧ customerLifespan → Prop

structure CustomerLifetimeValueEvidence (C : CustomerLifetimeValuePackage) where
  averageOrderValueClosed : C.averageOrderValue
  purchaseFrequencyClosed : C.purchaseFrequency
  customerLifespanClosed : C.customerLifespan
  clvCalculatedClosed : C.clvCalculated (And.intro C.averageOrderValue (And.intro C.purchaseFrequency C.customerLifespan))

def CustomerLifetimeValueClosed (C : CustomerLifetimeValuePackage) : Prop :=
  C.averageOrderValue ∧ C.purchaseFrequency ∧ C.customerLifespan ∧ C.clvCalculated (And.intro C.averageOrderValue (And.intro C.purchaseFrequency C.customerLifespan))

theorem customer_lifetime_value_closed_from_evidence (C : CustomerLifetimeValuePackage) (E : CustomerLifetimeValueEvidence C) :
    CustomerLifetimeValueClosed C := by
  exact And.intro E.averageOrderValueClosed (And.intro E.purchaseFrequencyClosed (And.intro E.customerLifespanClosed E.clvCalculatedClosed))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse