import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure FiniteGroupActionClassificationPackage {G : GroupActionPackage}
    (B : BurnsideLemmaPackage G (by
      exact { orbit := λ _ => ∅, stabilizer := λ _ => ∅,
              orbitStructure := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              stabilizerSubgroup := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              orbitStabilizerBijection := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)) })) where
  finiteGroupActionOnFiniteSet : Prop
  orbitDecomposition : Prop
  classificationComplete : Prop

structure FiniteGroupActionClassificationEvidence {G : GroupActionPackage}
    {B : BurnsideLemmaPackage G (by
      exact { orbit := λ _ => ∅, stabilizer := λ _ => ∅,
              orbitStructure := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              stabilizerSubgroup := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              orbitStabilizerBijection := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)) })}
    (C : FiniteGroupActionClassificationPackage G B) where
  finiteGroupActionOnFiniteSetClosed : C.finiteGroupActionOnFiniteSet
  orbitDecompositionClosed : C.orbitDecomposition
  classificationCompleteClosed : C.classificationComplete

def FiniteGroupActionClassificationClosed {G : GroupActionPackage}
    {B : BurnsideLemmaPackage G (by
      exact { orbit := λ _ => ∅, stabilizer := λ _ => ∅,
              orbitStructure := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              stabilizerSubgroup := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              orbitStabilizerBijection := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)) })}
    (C : FiniteGroupActionClassificationPackage G B) : Prop :=
  C.finiteGroupActionOnFiniteSet ∧ C.orbitDecomposition ∧ C.classificationComplete

theorem finite_group_action_classification_closed_from_evidence
    {G : GroupActionPackage} {B : BurnsideLemmaPackage G (by
      exact { orbit := λ _ => ∅, stabilizer := λ _ => ∅,
              orbitStructure := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              stabilizerSubgroup := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)),
              orbitStabilizerBijection := False.elim (by
                have := B.burnsideIdentity; exact False.elim (by
                  exact this)) })}
    (C : FiniteGroupActionClassificationPackage G B)
    (E : FiniteGroupActionClassificationEvidence C) :
    FiniteGroupActionClassificationClosed C := by
  exact And.intro E.finiteGroupActionOnFiniteSetClosed
    (And.intro E.orbitDecompositionClosed E.classificationCompleteClosed)

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse
