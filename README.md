# Path planning algorithms

<div id="top"></div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#results">Results</a>
      <ul>
        <li><a href="#generating a configuration space">Generating a configuration space</a></li>
        <li><a href="#a* algorithm">A* algorithm</a></li>
        <li><a href="#dijkstra's algorithm">Dijkstra's algorithm</a></li>
        <li><a href="#potential field based planning">Potential field based planning</a></li>
      </ul>
    </li>
    <li><a href="#references">References</a></li>
  </ol>
</details>

## About The Project
It is essential to develop techniques that allow a robot or any vehicle to automatically decide on how to move from one position or configuration to another. This can be done by finding a path that minimizes some cost or distance metric to reach to the ultimate goal. This project aims to study and test different such path planning algorithms for autonomous navigation of vehicles.

## Results

Following are some of the motion planning algorithms implemented on 2D space.

### Generating a configuration space
Since, in the real world, most of the robots move continuously through space, therefore, it is essential to have a complete specification of the position of every point in the system for motion planning. The configuration space of a robot is the set of all configurations and/or positions that the robot can attain.
![](LINK)

### A* algorithm
It is used to calculate the shortest distance between the source (initial state) and the destination (final state). Here, a square grid is provided as a map which possesses many obstacles, scattered randomly. The initial and the final cells are known. The aim is to reach the final cell in the shortest amount of time.
![](LINK)


### Dijkstra's algorithm
It finds a shortest path tree from a single source node, by building a set of nodes that have minimum distance from the source. It has been found that A* is a more time efficient approach as it chooses which node to explore at the next iteration.
![](LINK)

### Potential field based planning
The artificial potential field repels the robot from obstacles and guides it to the desired location. A total potential function is generated as a sum of attractive and repulsive potential functions based on configuration space. The robot then continually evaluates the gradient of the artificial potential field and steps in that direction until it is close enough to the desired goal. 

#### 1) Attractive, Repulsive and total potential field
These fields are constructed based on a function that gives high values as it approaches towards the obstacles and low values as it moves away from them.
![](LINK) ![](LINK) ![](LINK)


#### 2) Generating quiver plot
It is an alternate method to depict the same information, where the arrows indicate the direction of the gradient field at various locations in the configuration space.
![](LINK)

#### 3) Gradient based control
The robot is steered by choosing the velocity based on the gradient of the total function.
![](LINK)

## References

* [Autonomous Navigation, Part 4: Path Planning with A* and RRT, by MATLAB](https://www.youtube.com/watch?v=QR3U1dgc5RE)
* [A* playlist by Sebastian Lague](https://www.youtube.com/watch?v=-L-WgKMFuhE)
* [RRT, RRT* & Random Trees by Aaron Becker](https://youtu.be/Ob3BIJkQJEw)
* [Robotics: Computational Motion Planning ](https://www.coursera.org/learn/robotics-motion-planning/home/welcome)
