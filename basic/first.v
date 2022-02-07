Inductive boolean :=
                 | true
                 | false.

Definition negb (b : boolean) : boolean :=
  match b with
  | true => false
  | false => true
  end.

Definition andb (a b:boolean) : boolean :=
  match a with
  | true => b
  | false => false
  end.

Definition nandb (a b:boolean): boolean :=
  match a with
  | true => negb(b)
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

Theorem false_nand: forall a b: boolean, nandb a b = false -> a=true /\ b=true.
Proof.
intros.
destruct a.
split.
reflexivity.
destruct b.
reflexivity.
simpl in H.
symmetry.
apply H.
destruct b.
simpl in H.
split.
symmetry.
apply H.
reflexivity.
simpl in H.
split.
symmetry.
apply H.
symmetry.
apply H.
Qed.
