# MAP Coloring Project Using PROLOG

As an example of an expert system, we are going to formalize the region coloring problem.
The rules for this issue are as follows :
- A surface is cut into a number of regions of varying surfaces and shapes.
- Each region must be colored
- Two adjacent regions must have two different colors

The second representation makes it possible to abstract from any geometry:
- A vertex represents a region
- An edge connecting two vertices means that the equivalent regions are adjacent.

### Objectif of This Project :

1. Add the coloring facts for each of the coloring pages in the figure.
previous using color (Region, Color, Coloring)
2. Define the conflict (Coloring) and conflict (X, Y, Coloring) rules