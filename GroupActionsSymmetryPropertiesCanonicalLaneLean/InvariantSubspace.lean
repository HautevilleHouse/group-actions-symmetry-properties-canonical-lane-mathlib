import HautevilleHouse.GroupActionsSymmetryPropertiesCanonicalLaneLean.SymmetryGroup

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure InvariantSubspacePackage {X : Type u} (S : SymmetryGroupPackage X) where
  subspace : Set X
  invariantUnderSymmetries : ∀ f : X → X, f ∈ S.symmetries → f '' subspace ⊆ subspace

structure InvariantSubspaceEvidence {X : Type u} {S : SymmetryGroupPackage X} (I : InvariantSubspacePackage S) where
  invariantUnderSymmetriesClosed : I.invariantUnderSymmetries

def InvariantSubspaceClosed {X : Type u} {S : SymmetryGroupPackage X} (I : InvariantSubspacePackage S) : Prop :=
  I.invariantUnderSymmetries

theorem invariant_subspace_closed_from_evidence {X : Type u} {S : SymmetryGroupPackage X} (I : InvariantSubspacePackage S) (E : InvariantSubspaceEvidence I) : InvariantSubspaceClosed I := by
  exact E.invariantUnderSymmetriesClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse