// Adds transparency
draw_set_alpha(0.1);

// Draw Regen Range
draw_circle_colour(self.x, self.y, self.regenRange, c_black, c_black, true);
draw_circle_colour(self.x, self.y, self.regenRange, c_lime, c_lime, false);

// Adds transparency
draw_set_alpha(1);

// Draw Self
draw_sprite(sprite_index, image_index, self.x, self.y)
