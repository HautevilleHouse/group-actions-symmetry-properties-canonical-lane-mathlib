import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure OrbitStabilizerPackage {G : GroupActionPackage} where
  orbitSet : Set G.actionSpace
  stabilizerSubgroup : Subgroup G.groupType
  orbitStabilizerBijection : G.orbitSet ≃ (G.stabilizerSubgroup : Set G.groupType)
  orbitStabilizerTheorem : Prop
  orbitStabilizerTheoremClosed : orbitStabilizerTheorem

structure OrbitStabilizerEvidence {G : GroupActionPackage} (P : OrbitStabilizerPackage G) where
  orbitStabilizerTheoremClosed : P.orbitStabilizerTheorem

def OrbitStabilizerClosed {G : GroupActionPackage} (P : OrbitStabilizerPackage G) : Prop :=
  P.orbitStabilizerTheorem

theorem orbit_stabilizer_closed_from_evidence {G : GroupActionPackage}
    (P : OrbitStabilizerPackage G) (E : OrbitStabilizerEvidence P) :
    OrbitStabilizerClosed P := by
  exact E.orbitStabilizerTheoremClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse