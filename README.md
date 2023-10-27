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
Position $\zeta$ on complex coordinates at the midline $s'$ on a cantilever is denoted as follows;

$$
\zeta(s) := \int_0^s e^{j\theta(s')} \rm{d}s'.
$$

where $\theta$ is the gradient of a cantilever.

From the relationship between bending moment $M$ and curvature $\partial_s \theta(s)$ is represented by

$$
M(s) = EI \partial_s \theta(s),
$$

where $EI$ is the bending rigidity.
