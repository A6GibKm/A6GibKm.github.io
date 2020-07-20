---
layout: post
title: "The Peter-Weyl Theorem"
tags: [lie-groups]
---

Let $$G$$ be a locally compact topological group, this is a survey on some
elementary results on the representation theory when $$G$$ is compact.
From now on are going to assume all groups compact and all the Hilbert spaces separable.

Since $$G$$ is compact by averaging any Radon measure on $$G$$ we can construct a
left invariant Haar measure $$dy$$; i.e. one which satisfies

$$
 \int_G f(xy) dy = \int_G f(y)\,dy,\qquad f \in L^1(G,dy)
$$

for all $$x\in G$$. Without loss of generality one chooses $$dy$$ to satisfy $$\int_G dy = 1$$.

 <!-- more -->

Given a strongly-continuous unitary representation $$\pi: G \to \mathcal{B}(\mathcal{H})$$, we denote by $$Hom_G (\mathcal{H})$$ the space of
_intertwining_ operators, that is, operators $$T: \mathcal{H} \to \mathcal{H}$$ such
that $$\pi(x)T = T \pi(x)$$ for all the elements of our group. Analogously for two
representations $$\pi_1,\pi_2$$ we denote the space of intertwining operators by

$$
Hom_{G}( \mathcal{H}_{\pi_1}; {\mathcal{H}}_{\pi_2}).
$$

If $$\pi$$ is a representation, we denote by
$$\mathcal{H}_\pi$$ the space on which $$G$$ acts.

>**Definition**: A representation of $$G$$ on a Hilbert space $$\mathcal{H}_\pi$$ is called _irreducible_ if $$\mathcal{H}_\pi$$
>does not have any non-trivial closed invariant subspace.

>**Definition**: Two unitary representations are called equivalent if there exist an
>invertible intertwining operator between them, we denote this "equivalence
>relation" by $$\cong$$.

Since the group has a finite measure there is no harm in assuming all
representations unitary. This is due to Weyl's unitary trick; it consists of taking
any inner product on the Space on which $$G$$ acts and averaging it, i.e. defining
a new inner product by formula

$$
\langle u,v \rangle_G =\int_G\langle \pi(x)u,\pi(x)v \rangle\,dx.
$$

What is obtained is a inner product for which $$\pi(x)$$ is a unitary operator for
every element $$x \in G$$.

We recall one of the fundamental result in representation theory.

> **Theorem**: (Schur's Lemma) Let $$G$$ be a locally compact group. A unitary
> representation of $$G$$ is irreducible if and only if $$Hom_G(\mathcal{H},\mathcal{H})$$
> contains only multiples of the identity.
>
> Suppose $$\pi_1,\pi_2$$ are irreducible representations. Then either
> $$Hom_G(\mathcal{H}_{\pi_1}; \mathcal{H}_{\pi_2})$$ is one dimensional and
> $$\pi_1 \cong \pi_2$$, or, otherwise $$Hom_G(\mathcal{H}_{\pi_1}; \mathcal{H}_{\pi_2})$$ is trivial.

_Proof_: Notice that both the kernel and the image of a non-zero intertwining
operator $$U$$ are invariant subspaces of $$\mathcal{H}$$, consequently $$U$$ is bijective. By the open mapping theorem $$U$$ must be invertible
in $$Hom_G(\mathcal{H},\mathcal{H})$$, so the later is a Banach division algebra
over $$\mathcal C$$, by the Gelfand-Mazur theorem the only Banach algebra that satisfies
this is $$\mathcal{C}$$. To prove the second part of the statement,
by the same arguments one checks that any nonzero intertwining operator must be
an isomorphism, plus the observation that $$U^*U \in Hom_G(\mathcal{H}_{\pi_1})$$
hence $$U = \lambda id_{\mathcal{H}_{\pi_1}}$$ for some non zero constant
$$\lambda \geq 0$$, normalizing $$U$$ one gets the desired unitary equivalence. If
$$U,S \in Hom_G(\mathcal{H}_{\pi_1},\mathcal{H}_{\pi_2})$$, then $$S^{-1}U \in
Hom_G(\mathcal{H}_{\pi_1})$$, therefore $$U$$ and $$S$$ must be multiples of each
other. $$\square$$

Let $$\pi$$ be a representation of $$G$$, given $$u,v \in \mathcal{H} = \mathcal{H}_\pi$$ we define

$$
Tu = \int_G \langle u,\pi(x) v \rangle\pi(x)v\,dx.
$$

Since $$\langle Tu,u \rangle = \int_G \lvert \langle u,\pi(y)u \rangle\rvert^2 dy
\geq 0$$, $$T$$ is a positive
bounded operator in $$\mathcal{H}$$, it is constructed in such a way that it intertwines
$$\pi$$ with itself, and it is non zero since $$Tv \not= 0$$. If $$\pi$$ is irreducible, then $$T$$ must
be a multiple of the identity, this is a key point since

> **Proposition**: $$T:\mathcal{H} \to \mathcal{H}$$ is a compact self-adjoint
> intertwining operator.

_Proof_:
$$G$$ is compact so for any $$v \in \mathcal{H}$$ the function $$\pi(x)v$$ is uniformly
continuous in $$x$$. Let $$\varepsilon \ge 0$$, we choose open sets $$V_1,\dots,V_n$$ and
$$x_i \in V_i$$ such that for all $$i=1,\dots,n$$:

$$
\lVert \pi(x)v - \pi(x_i) \rVert\ \ge \varepsilon \qquad \forall x \in V_i .
$$

Note that

$$
\begin{aligned}
\lVert \langle u,\pi(x)v \rangle\pi(x)v - \langle u,\pi(x_i)v \rangle\pi(x_i)v \rVert &\\
\leq& \lVert \langle u, [\pi(x)v-\pi(x_i)v] \rangle\pi(x)v \rVert\\
\qquad +& \lVert \langle u,\pi(x_i)v \rangle
[\pi(x)v-\pi(x_i)v]\rVert\\
\leq& \varepsilon \lVert u\rVert
\end{aligned}
$$

Define $$T_\varepsilon = \sum_{i=1}^n \int_{V_i} \langle  u,\pi(x_i)v \rangle\pi(x_i)v \,dx$$,
the range of this operator is spanned by $$\{ \pi(x_i)v \}_{i=1}^n$$.
The previous calculation shows that $$\lVert T - T_\varepsilon \rVert \le
\varepsilon$$ hence $$T$$ can be approximated by finite range operators, in
particular $$T$$ is compact. $$\square$$

> **Corollary**: Every irreducible representation of a compact group is finite-dimensional.

Now we have the main ingredients for the structure theorems of representations
of compact groups.

One comment before the main theorem. If $$\mathcal{H}$$ is a representation of
$$G$$, then any invariant subspace $$E$$ admits an orthogonal complement; i.e. since
the representation is unitary $$E^\perp $$ is also an invariant subspace and
$$\mathcal{H} = E \oplus E^\perp$$. If $$ \mathcal{H}$$ is finite-dimensional, one
could continue to divide $$\mathcal{H}$$ into smaller invariant subspaces, and
eventually one ends with a decomposition of $$\mathcal{H}$$ consisting only of
irreducible subrepresentations. In the infinite-dimensional case this process
can go on indefinitely, but the case of compact groups is very similar to the
case when $$G$$ is finite, more precisely.

> **Theorem (Peter-Weyl Theorem)**: Let $$\pi:G\to \mathcal{H}$$ be a
> representation of a compact group. Then there exist irreducible invariant
> subspaces $$\{\mathcal{H}_i \}_{ i\in I}$$ such that $$\mathcal{H} = \bigoplus_i
>\mathcal{H}_i.$$

_Proof_:
As usual we are in need of the axiom of choice. We consider the partially ordered
set (by inclusion)

$$
\mathcal{C } = \{ \bigoplus_{i \in I} \mathcal{H}_i \mid \mathcal{H}_i \text{ is a
closed irreducible invariant subspace
of } \mathcal{H} \}.
$$

Recall that $$T$$ is a (non-zero) compact self-adjoint operator, by the spectral theorem, $$\mathcal{H}$$
decomposes as the direct sum of its eigenspaces, with $$\ker(T-\lambda)$$ being finite
dimensional for $$\lambda \not= 0$$, we fix one of those eigenspaces. Since the
later is finite dimensional it can be decomposed as a sum of irreducible
subspaces, so $$\mathcal{C}$$ is not vacuous.
It is clear that all chains in $$\mathcal{C}$$ have an upper bound; So $$\mathcal{C}$$ has a maximal
element $$E = \oplus_i \mathcal{H}_i \in \mathcal{C}$$. If we take $$v\in E^\perp$$ and define $$Tu = \int \langle u,\pi(x)v
\rangle\pi(x)v\,dx$$ as before, repeating the previous argument one gets a new finite
dimensional subspace of $$E^\perp$$, which contradicts the maximality of $$E$$; so
$$E = \mathcal{H}$$. $$\square$$

Now given an arbitrary representation $$\mathcal{H}$$ of $$G$$, and a decomposition
into irreducible representations $$\mathcal{H} = \bigoplus_i \mathcal{H}_i$$; we can group
equivalent representations in the decomposition, say

$$
\mathcal{H} =
\bigoplus_{\pi \in \widehat G} \left( \bigoplus_{\{ i:\mathcal{H}_i \cong
\mathcal{H}_\pi \}} \mathcal{H}_i \right).
$$

To put it another way we get an equivalent formulation.

> **Theorem**: Let $$\mathcal{H}$$ be a representation of a compact group, then
> there exist constants $$m_\pi \in \mathbb N \cup \{ \infty\}$$ such that
> $$\mathcal{H}$$ decomposes as a direct sum of finite dimensional irreducible
> representations
>
> $$
> \mathcal{H} \cong \bigoplus_{\pi \in \widehat G}\ m_\pi \cdot \mathcal{H}_\pi.
> $$
