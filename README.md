# Elastica_vs_Euler_beam_MATLAB
Comparisons of analytical solutions for displacement under the pure bending problem between the Elastica beam (considering geometrical nonlinearity) model and the Euler–Bernoulli beam model (linear) .


**Communication**

<a style="text-decoration: none" href="https://twitter.com/hogelungfish_" target="_blank">
    <img src="https://img.shields.io/badge/twitter-%40hogelungfish_-1da1f2.svg" alt="Twitter">
</a>
<p>

**Language**
<p>
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/matlab/matlab-original.svg" width="60"/>
<p>

# Conditions
Pure bending problem for a cantilever beam.

![図1](https://github.com/KRproject-tech/Elastica_vs_Euler_beam_MATLAB/assets/114337358/6290372a-0a76-4add-a860-4353f00aed6b)

# Analytical solutions

We consider the analytical solutions for displacement under the pure bending problem of a cantilever with a total length $L$. 

Position $\zeta$ on complex coordinates at the midline $s'$ on a cantilever is denoted as follows;

$$
\zeta(s) := v(s) + j w(s) = \int_0^s e^{j\theta(s')} \rm{d}s' \in \mathbb{C}.
$$

where $\theta$ is the gradient of a cantilever, and $v$ and $w$ is the position along the $x$ and $y$ directions.

<img width="343" alt="無題" src="https://github.com/KRproject-tech/Elastica_vs_Euler_beam_MATLAB/assets/114337358/b6a1687b-7ae5-4b69-aa2f-065438683bfa">



The relationship between bending moment $M$ and curvature $\partial_s \theta(s)$ is represented by

$$
M(s) = EI \partial_s \theta(s),
$$

where $EI$ is the bending rigidity.

The bending moment distribution is constant on a cantilever under pure bending conditions by the bending moment at a free edge $M_0$,

$$
M(s) = M_0, s \in [ 0, L].
$$

Then, the gradient of a cantilever is obtained as,

$$
\begin{array}{l}
\partial_s \theta (s) = \dfrac{M_0}{EI}, \\
\Rightarrow	\theta(s) = \dfrac{M_0}{EI} s + C_0 \\
\end{array}
$$

From the boundary conditions for the clamped edge,

$$
\theta(0) = C_0 = 0.
$$

Finally, the position of the cantilever on the complex coordinates is obtained as follows,

$$
\begin{array}{ll}
\zeta(s)     &= \int_0^s e^{j\theta(s')} \rm{d}s' \\
             &= \int_0^s e^{j\dfrac{M_0}{EI} s'} \rm{d}s' \\
             &= \left. \dfrac{EI}{j M_0} e^{j\dfrac{M_0}{EI} s'} \right\|_0^s \\
             &= -j \dfrac{EI}{M_0} \left( e^{j\dfrac{M_0}{EI} s} - 1 \right) \\
             &= \dfrac{EI}{M_0} \sin{\dfrac{M_0}{EI} s} + j \dfrac{EI}{M_0} \left( 1 - \cos{\dfrac{M_0}{EI}s} \right).
\end{array}
$$

Then,

$$
\begin{array}{ll}
w(s) =  \rm{Im}(\zeta(s))    &=  \dfrac{EI}{M_0} \left( 1 - \cos{\dfrac{M_0}{EI}s} \right)  \\
                             &=: \dfrac{L}{m_0} \left( 1 - \cos{\dfrac{m_0}{L}s} \right),    \\
v(s) =  \rm{Re}(\zeta(s))    &=  \dfrac{L}{m_0} \sin{\dfrac{m_0}{L}s}.                             
\end{array}
$$

where $m_0 := \dfrac{M_0 L}{EI}$ is the nondimensionalized bending moment.

The relationship between $v$ and $w$ is obtained as follows,

$$
v^2(s) + w^2(s) = 2 \dfrac{L}{m_0} w(s).
$$

<img width="690" alt="image" src="https://github.com/KRproject-tech/Elastica_vs_Euler_beam_MATLAB/assets/114337358/6cb92d4c-c15a-4392-b29f-3c6bc199298f">
