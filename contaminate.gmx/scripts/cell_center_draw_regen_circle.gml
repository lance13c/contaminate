// Adds transparency
draw_set_alpha(0.1);

// Draw Regen Range
draw_circle_colour(self.x, self.y, self.regenRange, c_black, c_black, true);
draw_circle_colour(self.x, self.y, self.regenRange, c_lime, c_lime, false);

// Adds transparency
draw_set_alpha(1);


// Radial Gradient


var xOffset = -4;       // Default value
var yOffset = -5;       // Default value

// Postition depends on where the light is
if (instance_exists(Light)) {
    var radial_dir = point_direction(self.x, self.y, Light.x, Light.y); // Determines position of radial gradient
    xOffset = lengthdir_x(sprite_width/2 - 8, radial_dir);              // Max length is a little less than half the size of the sprite;
    yOffset = lengthdir_y(sprite_height/2 - 8, radial_dir);
}

var spriteCenter = shader_get_uniform( radial_gradient_shader, "center");
var gradientOffset = shader_get_uniform( radial_gradient_shader, "offset");
var gradientRadius = shader_get_uniform( radial_gradient_shader, "radius");
var spriteSize = shader_get_uniform( radial_gradient_shader, "spriteSize");

shader_set(radial_gradient_shader);
shader_set_uniform_f( gradientOffset, xOffset, yOffset);
shader_set_uniform_f( spriteCenter, self.x, self.y );
shader_set_uniform_f( gradientRadius, 14.0);  // scale 0-1: 0 -> 1 = full sprite width
shader_set_uniform_f( spriteSize, sprite_width, sprite_height);

draw_sprite(sprite_index, image_index, self.x, self.y);


shader_reset();
