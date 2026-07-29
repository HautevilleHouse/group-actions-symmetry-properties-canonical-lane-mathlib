import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupActionsSymmetryPropertiesCanonicalLaneLean

structure WignerEckartPackage {G : GroupActionPackage} where
  irreducibleRepresentations : Prop
  tensorOperators : Prop
  reducedMatrixElements : Prop
  selectionRules : Prop

structure WignerEckartEvidence {G : GroupActionPackage}
    (W : WignerEckartPackage G) where
  irreducibleRepresentationsClosed : W.irreducibleRepresentations
  tensorOperatorsClosed : W.tensorOperators
  reducedMatrixElementsClosed : W.reducedMatrixElements
  selectionRulesClosed : W.selectionRules

def WignerEckartClosed {G : GroupActionPackage}
    (W : WignerEckartPackage G) : Prop :=
  W.irreducibleRepresentations ∧ W.tensorOperators ∧
  W.reducedMatrixElements ∧ W.selectionRules

theorem wigner_eckart_closed_from_evidence
    {G : GroupActionPackage} (W : WignerEckartPackage G)
    (E : WignerEckartEvidence W) : WignerEckartClosed W := by
  exact And.intro E.irreducibleRepresentationsClosed
    (And.intro E.tensorOperatorsClosed
      (And.intro E.reducedMatrixElementsClosed
        E.selectionRulesClosed))

end GroupActionsSymmetryPropertiesCanonicalLaneLean
end HautevilleHouse
