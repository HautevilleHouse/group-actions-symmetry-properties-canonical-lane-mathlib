import GroupActionsSymmetryPropertiesCanonicalLaneLean.BurnsideLemma

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure FiniteGroupActionClassificationPackage {A : AdmissibleClass} {O : OrbitStabilizerPackage A} {B : BurnsideLemmaPackage O} where
  classificationComplete : Prop
  isomorphismClasses : ℕ
  classificationCompleteClosed : classificationComplete

structure FiniteGroupActionClassificationEvidence {A : AdmissibleClass} {O : OrbitStabilizerPackage A} {B : BurnsideLemmaPackage O} (C : FiniteGroupActionClassificationPackage B) where
  classificationCompleteClosed : C.classificationComplete

def FiniteGroupActionClassificationClosed {A : AdmissibleClass} {O : OrbitStabilizerPackage A} {B : BurnsideLemmaPackage O} (C : FiniteGroupActionClassificationPackage B) : Prop :=
  C.classificationComplete

theorem finite_group_action_classification_closed_from_evidence {A : AdmissibleClass} {O : OrbitStabilizerPackage A} {B : BurnsideLemmaPackage O} (C : FiniteGroupActionClassificationPackage B) (E : FiniteGroupActionClassificationEvidence C) : FiniteGroupActionClassificationClosed C :=
  E.classificationCompleteClosed

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse