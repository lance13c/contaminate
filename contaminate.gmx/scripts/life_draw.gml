
var scale = (self.hp/(MAX_CELL_HP));

// Min Max
if (scale < 0) {
    scale = .01;
}

if (scale > 1) {
    scale = 1;
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, scale);

//draw_text(self.x, self.y - 40, self.hp);
//draw_text(self.x, self.y - 80, self.regen);
