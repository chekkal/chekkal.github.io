Lemma plus_assoc: forall n m p: nat, (n + m) + p = n + (m + p).
Proof.
    intros. induction n as [|n'].
    simpl. reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.

Theorem mult_plus_distr_r: forall n m p: nat, 
  (n+m)*p = (n*p) + (m*p).
Proof.
    intros. induction n as [|n']. induction m as [|m'].
    simpl. reflexivity.
    simpl. reflexivity.
    simpl. rewrite IHn'. rewrite plus_assoc. reflexivity. 
Qed.
