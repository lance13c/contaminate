// Adds transparency
draw_set_alpha(0.1);

// Draw Regen Range
draw_circle_colour(self.x, self.y, self.regenRange, c_black, c_black, true);
draw_circle_colour(self.x, self.y, self.regenRange, c_lime, c_lime, false);

// Adds transparency
draw_set_alpha(1);

// Draw Self

var CENTER_OFFSET = 2;

var gradient_expand = shader_get_uniform( radial_gradient_shader, "expand");
var gradient_center = shader_get_uniform( radial_gradient_shader, "center");
var gradient_radius = shader_get_uniform( radial_gradient_shader, "radius");
var spriteSize = shader_get_uniform( radial_gradient_shader, "spriteSize");

shader_set(radial_gradient_shader);
shader_set_uniform_f( gradient_expand, self.x/room_width);
shader_set_uniform_f( gradient_center, (self.x) - CENTER_OFFSET, (self.y) - CENTER_OFFSET);
shader_set_uniform_f( gradient_radius, 14.0);  // scale 0-1: 0 -> 1 = full sprite width
shader_set_uniform_f( spriteSize, sprite_width, sprite_height);

draw_sprite(sprite_index, image_index, self.x, self.y);


shader_reset();
