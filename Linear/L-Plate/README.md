# Buckling and modal analysis with preload
Tested with CGX/CCX 2.10

+ Modal analysis with preload
+ Eigenvalue buckling analysis
+ Shell edge load

File                      | Contents    
 :-------------           | :-------------
 [pre.fbl](pre.fbl)       | Preprocessing script for CGX     
 [modal.inp](modal.inp)   | CCX input
 [shapes.fbl](shapes.fbl) | CGX script for postprocessing (mode shape movies)



## Model Description
The model is a flat L-shaped plate.

<img src="mesh.png" width="400" title="mesh">

Boundary conditions
+ UY=0, UZ=0 at the upper edge (red)
+ UX=0, UZ=0 at the left edge (green)
+ UZ=0 at the lower (blue) and right (magenta) edges
+ Line load in y-direction (1 N/mm)

<img src="RFv.png" width="400" title="Reactions and loads">
<img src="PS3.png" width="400" title="Minimum principal stress">

Set the appropriate values for the parameters in `par.run.fbd` and run the simulation using
```
> param.py par.run.fbd
> cgx -b run.fbl
```
## Solution

If you want to run the analysis separately:
```
> ccx solve.inp
```
The analysis consists of 3 steps:
+ Static step, application of preload for the modal analysis
+ Frequency step, modal analysis with preload
+ Buckle step.

## Postprocessing

### Vibration mode shapes
These are displayed using `ds <n> a` to get a sinusoidal animation
```
> cgx -b vmodes.fbd
```
<img src="v1.gif" width="400"><img src="v2.gif" width="400">

### Buckling mode shapes:
These are displayed with
```
anim real
scal d 200
ds <n> a
```
to get a single-sided animation:
```
> cgx -b bmodes.fbd
```
<img src="b1.gif" width="400"><img src="b2.gif" width="400">
