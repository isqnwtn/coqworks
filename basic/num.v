Definition make_inc (x:nat) (y:nat) : nat := x+y.

Definition is_zero (x:nat) : bool :=
  match x with
  | 0 => true
  | _ => false
  end.

Fixpoint add (x:nat) (y:nat) : nat :=
  match x with
  | 0 => y
  | S b => S ( add b y )
  end.

Fixpoint factorial (x:nat) :nat :=
  match x with
  | 0 => 1
  | (S x') => x * (factorial x')
  end.

Fixpoint is_even (x:nat) :bool :=
  match x with
  | 0 => true
  | (S x') => is_odd x'
  end with
is_odd (x:nat) : bool :=
  match x with
  | 0 => false
  | (S x') => is_even x'
  end.

(*
================================THEOREMS=====================================
 *)

(*reflexivity*)
Lemma everything_is_itself:
  forall x:Set, x=x.
Proof.
  intros.
  reflexivity.
Qed.

(*assumption*)
Lemma everything_implies_itself:
  forall p:Prop, p -> p.
Proof.
  intros.
  assumption. (*see you can also use apply H here*)
Qed.
