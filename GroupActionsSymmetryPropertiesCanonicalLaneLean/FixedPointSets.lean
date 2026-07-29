import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure FixedPointSet {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (φ : GroupAction G X) (g : G) where
  points : Set X
  fixedProperty : ∀ x ∈ points, φ.action g x = x

theorem fixed_point_set_closed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] [T1Space X] (φ : GroupAction G X) (g : G) : IsClosed (FixedPointSet.points φ g) := by
  have h_eq : (fun x : X => φ.action g x) = id := by
    ext x; simp
  have h_eq' : (fun x : X => φ.action g x) = continuous_id := by
    ext x; rfl
  have h_continuous : Continuous (fun x : X => φ.action g x) := φ.continuousAction g
  have h_fiber : FixedPointSet.points φ g = {x | φ.action g x = x} := rfl
  have h_closed : IsClosed {x | φ.action g x = x} := by
    have h_diag : {x | φ.action g x = x} = (fun x : X => (φ.action g x, x))⁻¹' (diagonal X) := by
      ext x; simp [diagonal]
    rw [h_diag]
    apply IsClosed.preimage (φ.continuousAction g).prod_mk continuous_id
    exact isClosed_diagonal
  exact h_closed

structure FixedPointSetEvidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] [T1Space X] (φ : GroupAction G X) (g : G) where
  fixedPointSetClosed : IsClosed (FixedPointSet.points φ g)

theorem fixed_point_set_evidence_from_prop {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] [T1Space X] (φ : GroupAction G X) (g : G) : FixedPointSetEvidence φ g := by
  exact { fixedPointSetClosed := fixed_point_set_closed φ g }

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse