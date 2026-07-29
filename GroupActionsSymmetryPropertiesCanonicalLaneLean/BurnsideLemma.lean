import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure BurnsideLemmaPackage {G : GroupActionPackage} (O : OrbitStabilizerPackage G) where
  orbitsCount : Nat
  fixedPointsSum : Nat
  burnsideIdentity : Prop
  orbitCountComputed : Prop

structure BurnsideLemmaEvidence {G : GroupActionPackage} {O : OrbitStabilizerPackage G}
    (B : BurnsideLemmaPackage G O) where
  burnsideIdentityClosed : B.burnsideIdentity
  orbitCountComputedClosed : B.orbitCountComputed

def BurnsideLemmaClosed {G : GroupActionPackage} {O : OrbitStabilizerPackage G}
    (B : BurnsideLemmaPackage G O) : Prop :=
  B.burnsideIdentity ∧ B.orbitCountComputed

theorem burnside_lemma_closed_from_evidence
    {G : GroupActionPackage} {O : OrbitStabilizerPackage G}
    (B : BurnsideLemmaPackage G O) (E : BurnsideLemmaEvidence B) :
    BurnsideLemmaClosed B := by
  exact And.intro E.burnsideIdentityClosed E.orbitCountComputedClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse
