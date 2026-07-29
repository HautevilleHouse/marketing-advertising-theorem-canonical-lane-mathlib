import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure AttributionRules where
  ruleName : String
  ruleType : String  -- e.g., "first_touch", "last_touch", "linear", "time_decay", "position_based"
  weights : List Float
  validityCondition : Prop

structure AttributionResult where
  channelContributions : List (String × Float)
  totalConversions : Nat

def LastTouchAttributionRule : AttributionRules := {
  ruleName := "last_touch"
  ruleType := "last_touch"
  weights := []
  validityCondition := True
}

def FirstTouchAttributionRule : AttributionRules := {
  ruleName := "first_touch"
  ruleType := "first_touch"
  weights := []
  validityCondition := True
}

def LinearAttributionRule : AttributionRules := {
  ruleName := "linear"
  ruleType := "linear"
  weights := []
  validityCondition := True
}

def PositionBasedAttributionRule (first : Float) (middle : Float) (last : Float) : AttributionRules := {
  ruleName := "position_based"
  ruleType := "position_based"
  weights := [first, middle, last]
  validityCondition := first + middle + last = 1.0
}

structure AttributionPackage where
  rule : AttributionRules
  result : AttributionResult
  ruleValid : Prop
  resultConsistent : Prop

structure AttributionEvidence (A : AttributionPackage) where
  ruleValidClosed : A.ruleValid
  resultConsistentClosed : A.resultConsistent

def AttributionClosed (A : AttributionPackage) : Prop :=
  A.ruleValid ∧ A.resultConsistent

theorem attribution_closed_from_evidence (A : AttributionPackage) (E : AttributionEvidence A) :
    AttributionClosed A := by
  exact And.intro E.ruleValidClosed E.resultConsistentClosed

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse