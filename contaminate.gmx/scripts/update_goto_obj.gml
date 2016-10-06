var obj1 = argument0;   // Object to go towards
var obj2 = argument1;   // Object that moves towards obj1

obj1 = CellCenter;
obj2 = self;



var r = point_distance(obj1.x, obj1.y, obj2.x, obj2.y);

// Avoid a zero
if (r <= 0) { r = .001 }

// Apply force relitive to x and distance
var FORCE_OFFSET = 100;
var xForce = (obj1.x - obj2.x) * FORCE_OFFSET;
var yForce = (obj1.y - obj2.y) * FORCE_OFFSET;


physics_apply_local_force(0,0, xForce/r, yForce/r);//;obj2.x, obj2.y, (obj1.x)/r, (obj1.y)/r);
