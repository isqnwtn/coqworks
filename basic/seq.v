Inductive seq : nat -> Set :=
| niln : seq 0
| consn : forall n : nat , nat -> seq n -> seq (S n).

Fixpoint length (n:nat) (s:seq n) {struct s} : nat :=
  match s with
  | niln => 0
  | consn i _ s' => S (length i s')
  end.
