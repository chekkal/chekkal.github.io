(* Software Foundations *)
(* Exercice ** plus_swap' *)
Lemma  plus_0_r: forall n: nat, n+0=n.
Proof.
    intros. induction n as [|n'].
    reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.

Lemma plus_succ: forall n m: nat, n + S m = S (n + m).
Proof.
    intros. induction n as [|n'].
    simpl. reflexivity.
    simpl. rewrite IHn'. reflexivity.
Qed.

Lemma plus_comm: forall n m: nat, n+m = m +n.
Proof.
    intros. induction n as [|n'].
    simpl. rewrite plus_0_r. reflexivity.
    simpl. rewrite IHn'. rewrite plus_succ. reflexivity.
Qed.

Theorem plus_swap: forall n m p: nat, n + (m + p) = m + (n + p).
Proof.
    intros. rewrite plus_comm. induction m as [|m'].
    simpl. rewrite plus_comm. reflexivity.
    simpl. rewrite IHm'. reflexivity.
Qed.


(* using only the Lemma plus_succ *)
Theorem plus_swap': forall n m p: nat, n + (m + p) = m + (n + p).
Proof.
    intros. induction n as [|n']. induction m as [|m'].
    simpl. reflexivity.
    simpl. reflexivity.
    simpl. rewrite IHn'. (*remember (n'+p) as u*) rewrite plus_succ. reflexivity.
Qed.
