/- PROBLEM 1: Classical logic 

In this problem, we will prove various theorems, some that 
require classical logic (e.g., Classical.em).
-/
-- part 0

-- 12 lines: does this need Classical.em?
theorem p_iff_false: ∀ P : Prop, (P ↔ False) ↔ ¬ P :=
 by sorry

-- 9 lines: does this need Classical.em?
theorem p_and_not_p_eq_false: ∀ P : Prop, (P ∧ ¬ P) ↔ False :=
 by sorry

-- 21 lines: does this need Classical.em?
theorem or_absorb_and_or: ∀ P Q : Prop, P ∨ (¬ P ∧ Q) ↔ (P ∨ Q) :=
  by sorry

-- 11 lines: does this need Classical.em?
theorem redundant_and: ∀ P Q : Prop, (P ∨ Q) ∧ (P ∨ ¬ Q) ↔ P :=
 by sorry

-- 10 lines: does this need Classical.em?
theorem exportation: ∀ A B C : Prop, (A → B → C) ↔ (A ∧ B → C) :=
 by sorry
    
-- part 0

-- THE REMAINING PROBLEMS INVOLVING WRITING TYPES, THEOREMS,
-- BUT NO PROOFS. WE ARE MOVING BACK FROM THE WORLD OF PROOF 
-- INTO THE WORLD OF SPECIFICATION, WHERE WE BEGAN.

/- PROBLEM 2: Binary Trees

A red-black balanced binary search tree is described as the following:

- Each node has a color (red or black) associated with it (in addition to its value and left and right children)
- A node can be "null": these will form the leaves of the tree.

The following 3 properties hold:
- (root property) The root of the red-black tree is black
- (red property) The children of a red node are black.
- (black property) For each node with at least one null child, the number of black nodes on the path from the root to the null child is the same.

As a binary search tree, all left children are _less_ than right children. 

Your task is to:
1. Design an inductive type RedBlackTree. It should have Nat's as values. Use the empty inductive type below to start.
2. Given the (blank) definitions for empty (to create an empty tree), insert (to insert a new Nat to the tree) & delete (to remove a number), write theorems that ensure that the properties hold. Note that you do not need to _prove_ the theorems, just write down what they are.
-/

/-
NOTE: If you write recursive functions that Lean cannot show
 to be terminating, you are welcome to add `decreasing_by sorry` after them: this means you are giving up on showing that they terminate, which for this assignment, is fine.

e.g., 

def my_function : ArgType -> ArgType -> RetType
| patterns => body
| patterns => body
decreasing_by sorry
-/

-- part 1
inductive RedBlackTree : Type where

def RedBlackTree.empty : RedBlackTree := by sorry

def RedBlackTree.insert : RedBlackTree -> Nat -> RedBlackTree := by sorry

def RedBlackTree.delete : RedBlackTree -> Nat -> RedBlackTree := by sorry

-- part 1

/- PROBLEM 3: Information flow

In this problem, you will write a theorem statement that ensures 
that a (unspecified) function `process` does not leak any private 
information. Private information, in this case, is the first 
argument to the function (`private_inputs`); the function also has 
another argument, `public_inputs`, that does not need to remain 
private. 

Note that you need to think about _how_ the private inputs could 
potentially leak: you don't know what the definition of the function 
is, so what theorem can you write about it that nonetheless ensures 
that if users see the _output_ of it they cannot determine anything 
about the private inputs.
-/

-- part 2
def process (private_inputs : List Nat) (public_inputs : List Nat) : Nat := by sorry

-- part 2

/- PROBLEM 4: Algorithmic Fairness

In this problem you are tasked with  writing a theorem that _proves_ 
that there is no bias in a particular function that decides whether 
to give mortgages. It's up to you both to decide _what that means_ 
and how to ensure it.

Consider that you have a function, `give_mortgage` that takes
as input `income` (a list of yearly income, going back several 
years), `assets` (number), `race`, `gender`, `age`, 
`zipcode` (where they currently live), and returns a boolean 
of whether or not to give a mortgage.

Write theorem(s) that ensures that `give_mortgage` does not 
encode bias. Think about how you might express that? How is this 
similar or different from, e.g., the information flow problem above?
 -/


-- part 3
def give_mortgage : List Nat -- income
                 -> Nat      -- assets
                 -> String   -- race
                 -> String   -- gender
                 -> Nat      -- age
                 -> String   -- zipcode
                 -> Bool := by sorry

-- part 3