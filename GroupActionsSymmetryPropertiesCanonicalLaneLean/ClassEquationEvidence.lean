import HautevilleHouse.GroupActionsSymmetryPropertiesCanonicalLaneLean.GroupActionSymmetry

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure ClassEquationPackage where
  groupOrder : ℕ
  centerOrder : ℕ
  conjugacyClassSizes : List ℕ
  equationHolds : Prop

structure ClassEquationEvidence (C : ClassEquationPackage) where
  equationHoldsClosed : C.equationHolds

def ClassEquationClosed (C : ClassEquationPackage) : Prop :=
  C.equationHolds

theorem class_equation_closed_from_evidence (C : ClassEquationPackage) (E : ClassEquationEvidence C) :
    ClassEquationClosed C := by
  exact E.equationHoldsClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse