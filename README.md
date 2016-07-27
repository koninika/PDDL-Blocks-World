# PDDL-Blocks-World
PDDL  
The Planning Domain Definition Language (PDDL) is a language for defining planning domains and problems. 
https://en.wikipedia.org/wiki/Planning_Domain_Definition_Language

The Blackbox Planner
Blackbox is a planning system that works by converting problems specified in PDDL into Boolean satisfiability problems, and then solving the problems with a variety of satisfiability engines. The front-end employs the graphplan system. You can download a version of Blackbox here for windows, linux ormac os x. 
http://www.cs.rochester.edu/u/kautz/satplan/blackbox/index.html

Task
This repository contains PDDL files for an extension to the classic blocks world domain in which objects can have a color and there are new action for painting objects using using paint sprayers, paint brushes and cans of paint. domain.pddl is a stub for the domain file and the p?.pddl files are stubs for problems. 

Here's a description of the domain and constraints.  

You should include a standard, simple representation for the blocks world (on, ontable, clear, etc) and its actions (pickup, putdown, stack and unstack). Additional types of objects include the following:  

Paint sprayers. Each sprayer can only paint in one color (e.g., red, green, blue).
Paint cans. A paint can holds only only color of paint. 
Brushes. A brush can either be clean or loaded with paint of a particular color. 
Water bucket. A water bucket is used to wash brushes. 

These three objects are like blocks in that they can be picked up, put down, stacked and unstacked. They can also be painted, although painting them only alters their surface (e.g., a red sprayer will continue to spray red paint even after the sprayer is painted blue).  
Additional actions include:  
painting an object with a sprayer.
painting an object with a brush and can. 
loading a paint with paint of a given color. 
washing a brush, making it clean.

Here are some constants that your actions should enforce:
All of the usual actions and constraints of the blocks world. 
There is a fixed set of colors: red, green, blue, yellow, etc. 
In order to paint an object, that object must be on the table and clear. 
Painting with a sprayer is easy -- just pick it up and spray. 
To paint something a color with a brush, it has to be loaded with paint of that color. 
To load a paint bush with a particular color, you have to be holding the brush, the brush must be initially clean and there has to be A paint can holding that color of paint which is clear.
When a brush is loaded with a color it is not clean. 
To wash a brush, making it clean, you have to have a water bucket that has nothing on it (i.e., is clear) and you have to be holding the brush.
