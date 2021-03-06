---
layout: post
title: L²(G) Decomposition for compact groups
tags: [lie-groups]
---

Continuing the [previous post][3], there are still much things to be said about the
decomposition of the regular representation on $$L^2(G)$$, by the
Peter-Weyl theorem, there exist unique
constants $$m_\pi \in \mathbb N$$ such that

$$
    L^2(G) \cong \bigoplus_{\pi \in \widehat G} m_\pi \cdot \mathcal{H}_\pi.
$$

The goal is to show that the constants appearing in the decomposition
actually correspond
to the dimension of $$\mathcal{H}_\pi$$, from now on we denote the later by 
$$d_\pi = \text{dim} (\mathcal{H}_\pi)$$.

<!-- more -->

We begin by noting some properties of the matrix coefficients of
representations.

Let $$\pi$$ be a representation, given $$u,v \in \mathcal{H}_\pi$$ define $$\pi_{v,u}(x) = \langle  v, \pi(x)u \rangle$$ this is
the matrix coefficient of $$\pi$$ at $$u,v$$. Since the representation is strongly
continuous this is a (uniformly) continuous function on $$G$$. If $$\{ e_i\}_i$$ is a orthonormal basis of
$$\mathcal{H}_\pi$$, we denote $$\pi_{e_j,e_i}= \pi_{i,j}$$.

The following point of view is very fruitful, fix a normal vector $$v \in \mathcal{H}_\pi$$ and consider
$$C_\pi u(x) = \pi_{v,u}(x)$$, as an operator $$C_\pi: \mathcal{H} \to L^2(G)$$.

> **Remark**: for all $$x,y \in G$$,
>
> $$
> C_\pi ( \pi(y)u )(x) = \langle u,\pi(y^{-1}x)v \rangle = C_\pi u (y^{-1}x),
> $$
>
> this shows that $$C_\pi$$ intertwines $$\pi$$ and the left regular representation.
{: .definition}

We show for further use the adjoint of $$C_\pi: L^2(G) \to \mathcal{H}$$. Given $$f
\in L^2(G)$$, the adjoint of $$C_\pi$$ is, in the weak sense,

$$
    {C_\pi}^* (f) = \int f(x)\pi(x)v\, dx.
$$

First note that if two
representations $$\pi,\sigma$$ aren't equivalent, then by Schur's lemma
$$\langle \pi_{u,v},\sigma_{u',v'} \rangle = \langle {C_\sigma}^*C_\pi
u,u' \rangle = 0$$, so matrix coefficients corresponding to
nonequivalent representations are mutually orthogonal.

> **Theorem**: for all $$u,u',v,v' \in \mathcal{H}_\pi$$ one has
>
> $$
> \langle \pi_{u,v},\pi_{u',v'} \rangle_{L^2(G)} = \frac 1 d_\pi \langle
> u,u'\rangle\langle v',v \rangle.
> $$
>
> In particular $$\{ \frac 1 {\sqrt d_\pi} \pi_{i,j} \mid \pi \in \widehat G , u,v \in \mathcal{H}_\pi\}$$ is an orthonormal set.

_Proof_: Define $$A_{v,v'}u = \int_G \langle u,\pi(x)v \rangle \pi(x)v' dx$$. One checks that
$$A_{v,v'}$$ is a intertwining operator, hence by Schur's Lemma
$$A_{v,v'} = d_\pi^{-1} \text{Tr}(A_{v,v'}) id_{\mathcal{H}_\pi}$$, note that the trace of $$A_{v,v'}$$ only depends on
$$v,v'$$. We first prove the assertion with $$u = u'$$, let

$$
    B*u(v,v') = \langle \pi*{u,v},\pi*{u,v'} \rangle*{L^2(G)}.
$$

Note that $$B_u(v,v') = \langle A_{u,u}v',v \rangle = \langle A_{v,v'}u,u \rangle$$, so
in particular

$$
\text{Tr}(A_{u,u}) \langle v',v \rangle = \text{Tr}(A_{u,u}) \langle
u,u \rangle.
$$

Taking $$u$$ of unitary norm, one checks that
$$\text{Tr}(A_{v,v'}) = \langle v',v \rangle$$, so
$$B_u(v,v') = \frac 1 {d_\pi} \langle v',v \rangle \langle u,u
\rangle$$ using the polarization identity one gets the desired
result.$$\square$$

Let $$L^2_\pi(G)$$ be the subspace generated by the matrix coefficients
of $$\pi$$, by the previous theorem $$\{\pi_{i,j}\}$$ is a basis of
$$L^2_\pi(G)$$ so the later has dimension $$d_\pi$$. As we saw before $$L^2_\pi(G) \perp L^2_\sigma(G)$$ for
in-equivalent representations. If $$U \pi(x) = \sigma(x) U$$ are
equivalent, by a simple calculation $$\pi_{v,u} = \sigma_{Uv,Uu}$$ so
$$L^2_\pi(G)$$ only depends on the unitary class of $$\pi$$.

> **Theorem**: For a compact group $$G$$,
>
> $$
> L^2(G) = \bigoplus_{\pi \in \widehat G} L^2_\pi(G),
> $$
>
> were each summand is invariant under the action of the left regular
> representation. Moreover for each $$\pi \in \widehat G$$ we have $$L^2_\pi(G) \cong_G d_\pi \cdot \mathcal{H}_\pi$$, here $$d_\pi = \text{dim}(\mathcal{H}_\pi)$$.

Before prving this theorem, we prove a lemma which has interest on its own.

> **Lemma**: The matrix coefficients of irreducible representations of $$G$$
> form a unital $$\mathbb C$$-algebra, closed under complex conjugation.

_Proof_: Denote by $$\mathcal{A}$$ the closure of the linear span of $$\{ \pi_{u,v} \mid \pi \in \widehat G , u,v \in \mathcal{H}_\pi
 \}$$.
If $$\pi, \sigma$$ are two representations, then $$(\pi\oplus\sigma)_{u\oplus u', v\oplus v'} = \pi_{u,v} +
 \sigma_{u',v'}$$, so by the Peter-Weyl theorem any matrix coefficient belongs to the
closed span of the coefficient of irreducible representations.

Denote by $$\pi\otimes \sigma$$ the tensor product of $$\pi$$ and
$$\sigma$$ acting on $$\mathcal{H}_\pi \otimes \mathcal{H}_\sigma$$. then one
checks that
$$\pi\otimes\sigma_{u\otimes u', v \otimes v'} = \pi_{u,v} \cdot
 \sigma_{u',v'}$$, by the previous remark the product of matrix
coefficients is in $$\mathcal{A}$$.

$$\mathcal{A}$$ is closed under complex conjugation since $$\overline {\pi_{u,v}}=\pi^\dagger_{u,v}$$

where $$\pi^\dagger$$ is the _contra-gradient representation_ of $$\pi$$. This
representation is realized as follows; let $$\mathcal{H}^\dagger$$ be equal
to $$\mathcal{H}$$ as a set, with complex multiplication defined by
$$\lambda \cdot u = \overline \lambda u$$ and inner product
$$\langle u,v \rangle_ {\mathcal{H}^\dagger} = \langle v,u \rangle$$, then
$$\pi^\dagger(x) u = \pi(x) u$$ is a representation of $$G$$ acting on
$$\mathcal{H}^\dagger$$. Let $$\pi : G \to \mathbb C$$ be the trivial
representation on $$\mathbb C$$, then $$\pi_{1,1}$$ is a unit for
$$\mathcal{A}$$. $$\square$$

> **Remark**: The [Gelfand-Raikov theorem][1] implies that $$\mathcal{A}$$ separates
> points, by the [Stone-Von Neumann theorem][2] $$\mathcal{A}$$ is dense in the
> space of continuous functions on $$G$$.
{: .definition}

Combining all these facts, we have proven the theorem.

## References

1. {:.publications} Folland, G. B. _A course in abstract harmonic analysis_. CRC Press. 2016.

[1]: https://ncatlab.org/nlab/show/Gelfand-Raikov+theorem
[2]: https://ncatlab.org/nlab/show/Stone-von+Neumann+theorem

[3]: {% post_url 2016-03-21-petterweyl %}
