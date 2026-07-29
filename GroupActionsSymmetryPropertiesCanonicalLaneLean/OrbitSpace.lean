import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure OrbitWithQuotient {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (φ : GroupAction G X) (x : X) where
  orbit : Set X := {y : X | ∃ g : G, φ.action g x = y}
  stabilizer : Subgroup G := {g : G | φ.action g x = x}
  orbitType : Type v := SetLike.Carrier orbit
  quotientSpace : Type (max u v) := Quotient (fun (y z : X) => ∃ g : G, φ.action g y = z)

structure ProperAction (G : Type u) (X : Type v) [Group G] [TopologicalSpace X] (φ : GroupAction G X) where
  properProperty : ∀ (x y : X), ∃ U ∈ 𝓝 x, ∃ V ∈ 𝓝 y, {g : G | φ.action g '' U ∩ V ≠ ∅} ⊆ {g : G | φ.action g '' U ∩ V ≠ ∅}
  -- Simplified: proper action means action map G × X → X × X is proper
  actionMapProper : ProperMap (fun (gx : G × X) => (φ.action gx.1 gx.2, gx.2))

structure QuotientManifoldStructure (G : Type u) (X : Type v) [LieGroup G] [SmoothManifold X] (φ : SmoothGroupAction G X) (proper : ProperAction G X φ.toGroupAction) where
  freeAction : ∀ g ≠ 1, ∀ x, φ.action g x ≠ x
  quotientManifold : SmoothManifold (Quotient (fun x y : X => ∃ g : G, φ.action g x = y))
  projectionSmooth : Smooth (Quotient.mk (fun x y : X => ∃ g : G, φ.action g x = y))

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse