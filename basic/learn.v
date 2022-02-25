Check True.

Check False.

Check 3.

Check (3=5).

Check (3,3=5).

Check (fun x:nat => x=3).

Check (forall x:nat , x<3 \/ (exists y:nat , x = y +3)).

Compute let f:= fun x => (x,x+3) in f 3.
