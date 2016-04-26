(*Software Foundations*)
(*Exercise: 2 stars, optional (evenb_n__oddb_Sn)*)
Theorem negb_twice: forall b: bool, negb (negb b) = b.
Proof.
    intros. destruct b.
    simpl. reflexivity.
    simpl. reflexivity.
Qed.


Theorem even_double: forall n: nat, Nat.even (S (S n)) = Nat.even n.
Proof.
    intros. destruct Nat.even.
    reflexivity.
    reflexivity.
Qed.

Theorem evenb_n_oddb_Sn: forall n: nat, Nat.even n = negb (Nat.even (S n)).
Proof.
    intros. induction n as [|n'].
    simpl. reflexivity.
    rewrite even_double. rewrite IHn'. rewrite negb_twice. reflexivity.
Qed.
