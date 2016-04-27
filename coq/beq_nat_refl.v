(* Software Foundations *)
(* Exercice ** beq_nat_refl *)
Theorem beq_nat_refl: forall n: nat, true = Nat.eqb n n.
Proof.
    intros. induction n as [|n'].
    simpl. reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.
