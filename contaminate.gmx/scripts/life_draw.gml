
var scale = (self.hp/(MAX_CELL_HP));

// Min Max
if (scale < 0) {
    scale = .01;
}

if (scale > 1) {
    scale = 1;
}

var cell_hp = shader_get_uniform( grayscale_cell, "cell_hp");
var cell_hp_max = shader_get_uniform( grayscale_cell, "cell_hp_max");

shader_set(grayscale_cell);
shader_set_uniform_f( cell_hp, self.hp);
shader_set_uniform_f( cell_hp_max, MAX_CELL_HP);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, scale);

shader_reset();
//draw_text(self.x, self.y - 40, self.hp);
//draw_text(self.x, self.y - 80, self.regen);
