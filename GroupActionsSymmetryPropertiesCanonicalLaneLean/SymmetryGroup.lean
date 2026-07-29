import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure SymmetryGroupPackage where
  objectSpace : Type u
  symmetryGroup : GroupActionPackage
  symmetryAction : symmetryGroup.groupType → objectSpace ≃ objectSpace
  fullSymmetryGroup : Bool
  fullSymmetryGroupClosed : fullSymmetryGroup

structure SymmetryGroupEvidence (S : SymmetryGroupPackage) where
  fullSymmetryGroupClosed : S.fullSymmetryGroup

def SymmetryGroupClosed (S : SymmetryGroupPackage) : Prop := S.fullSymmetryGroup

theorem symmetry_group_closed_from_evidence (S : SymmetryGroupPackage) (E : SymmetryGroupEvidence S) : SymmetryGroupClosed S := by
  exact E.fullSymmetryGroupClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse