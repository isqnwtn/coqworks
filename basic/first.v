Inductive boolean :=
                 | true
                 | false.

Definition negb (b : boolean) : boolean :=
  match b with
  | true => false
  | false => true
  end.

Theorem negb_negb : forall (b: boolean), negb(negb b) = b.
Proof.
intros.
destruct b.
simpl.
reflexivity.
simpl.
reflexivity.
Qed.
