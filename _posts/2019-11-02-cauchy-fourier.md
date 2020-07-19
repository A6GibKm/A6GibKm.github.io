---
layout: post
title: Cauchy theory and Fourier analysis
tags: [complex-analysis]
---

Suppose that $$f: U \to \mathbb{C}$$ is a holomorphic function in an open set $$U
\subseteq \mathbb{C}$$ which is of class $$C^1(U)$$ as a function defined on $$U
\subseteq \mathbb{R}^2$$, without loss of generality we can assume that the ball of radius $$R$$ and center $$0$$ is
contained in $$U$$, we can consider for any $$r < R$$ the function

$$
F(r,\theta) = f(r e^{i \theta}), \qquad r > 0,\ \theta \in [0, 2\pi).
$$

The idea is to study the behavior of $$f$$ in terms of the Fourier transform of
$$F$$ in its second variable and use this to prove Cauchy's theorem. This is a
well-understood fact that is not usually noted in a complex analysis course.

<!-- more -->

First let us note that by Cauchy's identities $$f$$ is holomorphic if and only if $$\overline{\partial} f
= 0$$ where, $$\overline{\partial} = \partial_x + i \partial_y$$ and its derivative is given by $$\partial f = \partial_x f
-i \partial_y f$$.

> **Proposition**: If $$f$$ is infinitely differentiable we have that $$f^{(k)}$$ is
> also an holomorphic function for all $$k\geq 0$$.

_Proof_: Note that $$\overline{\partial} \partial = \partial\overline{\partial}$$
so in particular $$\overline{\partial} \partial^k f = \partial^k
\overline{\partial}f = 0$$.$$\square$$

Using the chain rule

$$
\begin{aligned}
\partial_x &= \cos(\theta)\partial_r - \frac{1}{r}\sin(\theta) \partial_\theta\\
    \partial_y &= \sin(\theta)\partial_r + \frac{1}{r}\cos(\theta) \partial_\theta
\end{aligned}
$$

and

$$
\overline{\partial} = e^{i\theta}\left( \partial_r + \frac{i}{r} \partial_\theta\right).
$$

So in particular for a holomorphic function $$F$$, using the identities $$\widehat f' (k) = i\,k\,
\widehat f(k)$$ and $$\widehat{e^{i\theta} f(\theta)} (k) = \widehat f(k-1)$$, we have

$$
0 = \widehat {\overline{\partial}F}(r,k+1) = \partial_r \widehat{F} (r,k) -
\frac{k}{r} \widehat{F}(r,k).
$$

Note that here we need to use the fact that $$f$$ is of class $$C^1$$ to
differentiate under the integral sign. If such $$F$$ comes from an holomorphic function then, solving the differential
equation given above, we get

$$
\widehat{F}(r,k) = \frac{1}{\sqrt{2\pi}} \int_0^{2\pi} F(r,\theta) e^{-i k\theta}\,d\theta= C_k r^k,
$$

for some constants $$C_k \in \mathbb{C}$$, which are given by

$$
C_k = r^{-k} \widehat{F}(r,k) = \frac{1}{\sqrt{2\pi}} r^{-k} \int_0^{2 \pi} f(re^{i k \theta}) e^{- i
k \theta} d\theta,
$$

Let us compute the Fourier inversion formula for $$F$$,

$$
F(r,\theta) = \frac{1}{\sqrt{2\pi}} \sum_{k=-\infty}^{\infty} \widehat{F}(r,k) e^{i k
\theta} = \frac{1}{\sqrt{2\pi}} \sum_{k=-\infty}^{\infty} C_k r^k e^{i k \theta},
$$

and let $$r_0 < R$$. If we do the substitution $$\gamma(\theta) = r_0 e^{i\theta}$$,
we obtain

$$
a_k := \frac{1}{\sqrt{2\pi}} C_k = \frac{1}{2 \pi i}\int_{\gamma} \frac{f(w)}{w^{k+1}} dw.
$$

Consider the function $$g(z) = \sum_k a_k z^k$$ for any $$z$$ with $$\vert z\rvert =
r < r_0$$
then, since

$$
\lvert a_k\rvert \leq \frac{C(r)}{r_0^k},\qquad C(r) = \sup_{\lvert z \rvert = r}\lvert f(z)\rvert
$$

we have that

$$
\sum_k \lvert a_k z^k \rvert < C(r) \sum_k \left(\frac{r}{r_0} \right)^k < \infty,
$$

the series for $$g$$ converges absolutely, so it is an analytic function and
therefore holomorphic. A small computation shows that if $$G(r,\theta) =
g(re^{i\theta})$$ then for all $$k,r$$ we have $$\widehat{F}(r,k) =
\widehat{G}(r,k)$$, so by uniqueness of the Fourier transform $$f=g$$ for all $$r <
r_0$$, since this analysis was done for arbitrary $$r_0 < R$$ we have that

$$
f(z) = \sum_k a_k z^k, \qquad \lvert z \rvert < R,
$$

where by definition $$a_k = \frac{f^{(k)}(0)}{k!}$$ and by our previous analysis we get

> **Theorem**: Let $$f$$ be a holomorphic function of class $$C^1$$ on a disk of radius $$R > 0$$
> around $$0$$. Then $$f$$ is infinitely
> differentiable and for all $$k \geq 0$$ we have for all $$r < R$$ 
>
> $$
> f^{(k)}(0) = \frac{k!}{2 \pi i}\int_{\gamma} \frac{f(w)}{w^{k+1}}\,dw,
> $$
>
> where $$\gamma$$ is the closed loop given by $$\gamma(\theta) = re^{i\theta}$$.

This analysis shows that in fact holomorphic functions are the same as analytic
functions under the mild hypothesis that their first derivative is continuous.

> **Corollary**: Let $$f:U \to \mathbb{C}$$ be a holomorphic function of class $$C^1(U)$$, then $$f$$
> is analytic on any ball contained in $$U$$.
