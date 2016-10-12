// Adds transparency
draw_set_alpha(0.1);

// Draw Regen Range
draw_circle_colour(self.x, self.y, self.regenRange, c_black, c_black, true);
draw_circle_colour(self.x, self.y, self.regenRange, c_lime, c_lime, false);

// Adds transparency
draw_set_alpha(1);

// Draw Self

var gradient_expand = shader_get_uniform( radial_gradient_shader, "expand");
var gradient_center = shader_get_uniform( radial_gradient_shader, "center");
var gradient_radius = shader_get_uniform( radial_gradient_shader, "radius");
var roomSize = shader_get_uniform( radial_gradient_shader, "roomSize");

shader_set(radial_gradient_shader);
shader_set_uniform_f( gradient_expand, self.x/room_width);
shader_set_uniform_f( gradient_center, self.x - 6.0, self.y - 6.0);
shader_set_uniform_f( gradient_radius, 0.2);
shader_set_uniform_f( roomSize, room_width, room_height);

draw_sprite(sprite_index, image_index, self.x, self.y);


distFinal = shader_get_uniform( radial_gradient_shader, "distFinal");
draw_text(20, 20, distFinal);



shader_reset();
