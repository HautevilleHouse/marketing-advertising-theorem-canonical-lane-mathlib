import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarketingAdvertisingTheoremCanonicalLaneLean

structure MediaMixPackage where
  tvWeight : ℝ
  digitalWeight : ℝ
  printWeight : ℝ
  outdoorWeight : ℝ
  totalWeight : Prop
  totalWeightCondition : tvWeight + digitalWeight + printWeight + outdoorWeight = 1 := by
    norm_num

structure MediaMixEvidence (M : MediaMixPackage) where
  tvWeightClosed : M.tvWeight ≥ 0
  digitalWeightClosed : M.digitalWeight ≥ 0
  printWeightClosed : M.printWeight ≥ 0
  outdoorWeightClosed : M.outdoorWeight ≥ 0
  totalWeightClosed : M.totalWeight

def MediaMixClosed (M : MediaMixPackage) : Prop :=
  M.tvWeight ≥ 0 ∧ M.digitalWeight ≥ 0 ∧ M.printWeight ≥ 0 ∧ M.outdoorWeight ≥ 0 ∧ M.totalWeight

theorem media_mix_closed_from_evidence (M : MediaMixPackage) (E : MediaMixEvidence M) :
    MediaMixClosed M := by
  exact And.intro E.tvWeightClosed (And.intro E.digitalWeightClosed (And.intro E.printWeightClosed (And.intro E.outdoorWeightClosed E.totalWeightClosed)))

end MarketingAdvertisingTheoremCanonicalLaneLean
end HautevilleHouse