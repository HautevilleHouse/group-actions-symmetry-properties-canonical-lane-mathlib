import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure GroupActionPackage where
  groupType : Type u
  groupMultiplication : groupType → groupType → groupType
  groupIdentity : groupType
  groupInverse : groupType → groupType
  groupLaws : Prop
  actionSpace : Type v
  actionMap : groupType → actionSpace → actionSpace
  actionLaws : Prop
  groupLawsClosed : groupLaws
  actionLawsClosed : actionLaws

structure GroupActionEvidence (G : GroupActionPackage) where
  groupLawsClosed : G.groupLaws
  actionLawsClosed : G.actionLaws

def GroupActionClosed (G : GroupActionPackage) : Prop := G.groupLaws ∧ G.actionLaws

theorem group_action_closed_from_evidence (G : GroupActionPackage) (E : GroupActionEvidence G) : GroupActionClosed G := by
  exact And.intro E.groupLawsClosed E.actionLawsClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse