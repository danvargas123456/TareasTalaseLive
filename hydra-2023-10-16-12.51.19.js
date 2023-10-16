voronoi(1.567, 2, () => Math.sin(time))
	.kaleid([2, 4, 8])
	.mult(osc(2, 2.5, 2))
	.brightness([0.1, -0.5, 0])
	.out(o0);