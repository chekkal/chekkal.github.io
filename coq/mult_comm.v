(* Software Foundations *)
(* Exercise: 4 stars (mult comm) *) 
Theorem  plus_0_r: forall n: nat, n+0=n.
Proof.
    intros. induction n as [|n'].
    reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.

Theorem mult_0_r: forall n: nat, n*0 = 0.
Proof. 
    intros. induction n as [|n'].
    reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.


Theorem mult_1_r: forall n: nat, n*1 = n.
Proof. intros. induction n as [|n'].
simpl. reflexivity.
simpl. rewrite IHn'. reflexivity.
Qed.

Theorem plus_succ: forall n m: nat, n + S m = S (n + m).
Proof.
    intros. induction n as [|n'].
    simpl. reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.

Theorem plus_comm: forall n m: nat, n+m = m +n.
Proof.
    intros. induction n as [|n'].
    simpl. rewrite plus_0_r. reflexivity.
    simpl. rewrite IHn'. rewrite plus_succ. reflexivity.
Qed.

Theorem eq_succ: forall n m: nat, S n = S m -> n = m.
Proof.
    intros. inversion H. reflexivity.
Qed.

Theorem plus_same_l: forall n m p, n + m = n + p -> m = p.
Proof.
    intros n m p. induction n as [|n'].
    simpl. intros. rewrite H. reflexivity.
    simpl. intros. auto.
Qed.

Theorem plus_swap: forall n m p: nat, n + (m + p) = m + (n + p).
Proof.
    intros. rewrite plus_comm. induction m as [|m'].
    simpl. rewrite plus_comm. reflexivity.
    simpl. rewrite IHm'. reflexivity.
Qed. 

Theorem mult_succ: forall n m: nat, m * S n = m + m*n.
    Proof. intros. induction m as [|m'].
    simpl. reflexivity.
    simpl. rewrite IHm'. rewrite plus_swap. reflexivity.
Qed.

Theorem mult_comm: forall m n: nat, n*m = m*n.
    Proof. intros. induction n as [|n'].
    simpl. rewrite mult_0_r. reflexivity.
    simpl. rewrite IHn'. rewrite mult_succ. reflexivity.
Qed.

