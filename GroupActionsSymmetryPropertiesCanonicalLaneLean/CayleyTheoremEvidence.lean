import HautevilleHouse.GroupActionsSymmetryPropertiesCanonicalLaneLean.GroupActionSymmetry

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure CayleyPackage where
  group : Type u
  permutationAction : group → (group → group)
  faithfulEmbedding : Prop

structure CayleyEvidence (C : CayleyPackage) where
  faithfulEmbeddingClosed : C.faithfulEmbedding

def CayleyClosed (C : CayleyPackage) : Prop :=
  C.faithfulEmbedding

theorem cayley_closed_from_evidence (C : CayleyPackage) (E : CayleyEvidence C) :
    CayleyClosed C := by
  exact E.faithfulEmbeddingClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse