Theorem mult_plus_distr_r: forall n m p: nat,
      (n+m)*p = (n*p) + (m*p).
Proof.
    (* Proved in the previous exercice mult_plus_distr_r *)
    Admitted.

Theorem mult_assoc: forall n m p: nat, (n*m)*p = n*(m*p).
Proof.
    intros. induction n as [|n'].
    simpl. reflexivity.
    simpl. rewrite <- IHn'. rewrite mult_plus_distr_r. reflexivity.
Qed.
