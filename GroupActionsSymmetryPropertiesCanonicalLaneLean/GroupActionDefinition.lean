import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure GroupAction (G : Type u) (X : Type v) [Group G] [TopologicalSpace X] where
  action : G → X → X
  identityAction : ∀ x : X, action 1 x = x
  compatibility : ∀ (g h : G) (x : X), action (g * h) x = action g (action h x)
  continuousAction : ∀ g : G, Continuous (action g)

structure SmoothGroupAction (G : Type u) (X : Type v) [LieGroup G] [SmoothManifold X] extends GroupAction G X where
  smoothAction : ∀ g : G, Smooth (action g)

structure IsometricGroupAction (G : Type u) (X : Type v) [Group G] [RiemannianManifold X] extends GroupAction G X where
  isometryAction : ∀ g : G, Isometry (action g)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse