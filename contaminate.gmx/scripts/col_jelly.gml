
// On Impact change images x-axis scale relitive to speed.
// Direction = direction to object of impact

// Get collision instance
var colId = instance_place(self.x, self.y, all); // Collision Object ID

// If Ids are the same, return out of the method
if (colId == self.id) { return false }

// Relations between speed and image_xscale
var IMAGE_SCALE_OFFSET = (phy_speed / MAX_SPEED) / 2; // Min = 0, Max = 0.5

if (colId == noone) {
    // Flying through the air
    
    var imageOffsetX = abs((self.phy_speed_x / MAX_SPEED) / 2);
    var imageOffsetY = abs((self.phy_speed_y / MAX_SPEED) / 2);
    var dir = point_direction(self.x, self.y, self.x + self.phy_speed_x, self.y + self.phy_speed_y);
    //image_angle = dir;
    //phy_rotation = dir + 90;
    // Image scales are reversed because the opposite scale needs to be affected
    image_xscale = 0.5; //(1 - imageOffsetY);
    //image_yscale = (1 - imageOffsetX);
    
} else {
    image_xscale = 1;
}


