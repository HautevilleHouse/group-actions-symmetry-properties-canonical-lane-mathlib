import GroupActionsSymmetryPropertiesCanonicalLaneLean.GroupActionBridge

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure OrbitStabilizerPackage (A : AdmissibleClass) where
  orbitStructure : Prop
  stabilizerSubgroup : Prop
  orbitStabilizerBijection : Prop
  orbitDecomposition : Prop

structure OrbitStabilizerEvidence {A : AdmissibleClass} (O : OrbitStabilizerPackage A) where
  orbitStructureClosed : O.orbitStructure
  stabilizerSubgroupClosed : O.stabilizerSubgroup
  orbitStabilizerBijectionClosed : O.orbitStabilizerBijection
  orbitDecompositionClosed : O.orbitDecomposition

def OrbitStabilizerClosed {A : AdmissibleClass} (O : OrbitStabilizerPackage A) : Prop :=
  O.orbitStructure ∧ O.stabilizerSubgroup ∧ O.orbitStabilizerBijection ∧ O.orbitDecomposition

theorem orbit_stabilizer_closed_from_evidence {A : AdmissibleClass} (O : OrbitStabilizerPackage A) (E : OrbitStabilizerEvidence O) : OrbitStabilizerClosed O :=
  And.intro E.orbitStructureClosed (And.intro E.stabilizerSubgroupClosed (And.intro E.orbitStabilizerBijectionClosed E.orbitDecompositionClosed))

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse