import HautevilleHouse.GroupActionsSymmetryPropertiesCanonicalLaneLean.GroupActionSymmetry

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure BurnsidePackage where
  orbitCount : ℕ
  stabilizerSum : ℕ
  groupOrder : ℕ
  equationHolds : Prop

structure BurnsideEvidence (B : BurnsidePackage) where
  equationHoldsClosed : B.equationHolds

def BurnsideClosed (B : BurnsidePackage) : Prop :=
  B.equationHolds

theorem burnside_closed_from_evidence (B : BurnsidePackage) (E : BurnsideEvidence B) :
    BurnsideClosed B := by
  exact E.equationHoldsClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse