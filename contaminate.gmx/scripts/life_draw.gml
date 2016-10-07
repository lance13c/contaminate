
var scale = (self.hp/(MAX_CELL_HP));

// Min Max
if (scale < 0) {
    scale = .01;
}

if (scale > 1) {
    scale = 1;
}

draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, image_blend, image_alpha);

draw_text(self.x, self.y - 30, self.hp);
