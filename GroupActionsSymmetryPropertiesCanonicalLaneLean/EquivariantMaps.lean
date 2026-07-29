import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure EquivariantMap {G : Type u} {X : Type v} {Y : Type w} [Group G] [TopologicalSpace X] [TopologicalSpace Y]
  (φ : GroupAction G X) (ψ : GroupAction G Y) where
  map : X → Y
  equivariance : ∀ (g : G) (x : X), map (φ.action g x) = ψ.action g (map x)
  continuousMap : Continuous map

theorem equivariant_composition {G : Type u} {X : Type v} {Y : Type w} {Z : Type z}
  [Group G] [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {φ : GroupAction G X} {ψ : GroupAction G Y} {χ : GroupAction G Z}
  (f : EquivariantMap φ ψ) (g : EquivariantMap ψ χ) : EquivariantMap φ χ := by
  refine {
    map := g.map ∘ f.map
    equivariance := ?_
    continuousMap := Continuous.comp g.continuousMap f.continuousMap
  }
  intro h x
  calc
    (g.map ∘ f.map) (φ.action h x) = g.map (f.map (φ.action h x)) := rfl
    _ = g.map (ψ.action h (f.map x)) := by rw [f.equivariance]
    _ = χ.action h (g.map (f.map x)) := by rw [g.equivariance]
    _ = χ.action h ((g.map ∘ f.map) x) := rfl

def identityEquivariant {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (φ : GroupAction G X) : EquivariantMap φ φ := by
  refine {
    map := id
    equivariance := λ g x => rfl
    continuousMap := continuous_id
  }

structure EquivariantMapEvidence {G : Type u} {X : Type v} {Y : Type w} [Group G] [TopologicalSpace X] [TopologicalSpace Y]
  (φ : GroupAction G X) (ψ : GroupAction G Y) (F : EquivariantMap φ ψ) where
  coreEquivarianceClosed : ∀ g : G, ∀ x : X, F.map (φ.action g x) = ψ.action g (F.map x) := F.equivariance

theorem equivariant_map_evidence_self {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
  (φ : GroupAction G X) : EquivariantMapEvidence φ φ (identityEquivariant φ) := by
  exact {
    coreEquivarianceClosed := λ g x => rfl
  }

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse