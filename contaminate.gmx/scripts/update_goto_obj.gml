var obj1 = argument0;   // Object to go towards
var obj2 = argument1;   // Object that moves towards obj1

obj1 = CellCenter;
obj2 = self;



var r = point_distance(obj1.x, obj1.y, obj2.x, obj2.y);

// Avoid a zero
if (r <= 0) { r = .001 }

// Apply force relitive to x and distance
var FORCE_OFFSET = 100;
var xForce = (obj1.x - obj2.x) / FORCE_OFFSET;
var yForce = (obj1.y - obj2.y) / FORCE_OFFSET;

var xForceTouch = ((obj1.x - obj2.x));
var yForceTouch = ((obj1.y - obj2.y));

var obj1x = obj1.x;
var obj1y = obj1.y;
var obj2x = obj2.x;
var obj2y = obj2.y;
var speedx = self.phy_speed_x;
var speedy = self.phy_speed_y;

var rotation = self.phy_rotation;

var colId = instance_place(self.x, self.y, all); // Collision Object ID

if (colId != noone) {
    // Apply Small local force towards object
    physics_apply_local_impulse(0,0, xForce, yForce);//;obj2.x, obj2.y, (obj1.x)/r, (obj1.y)/r);
} else {
    physics_apply_local_impulse(0,0, xForce, yForce);//;obj2.x, obj2.y, (obj1.x)/r, (obj1.y)/r);
}
//self.hspeed = xForce;
//self.vspeed = yForce;




