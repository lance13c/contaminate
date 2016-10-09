

// Create particle emitter
self.pEmitCell = part_emitter_create(global.pSystemCell);

// Set Position
var xmin = self.x - self.sprite_width/3;
var xmax = self.x + self.sprite_width/3;
var ymin = self.y - self.sprite_height/3;
var ymax = self.y + self.sprite_height/3;

// Setup Region for Emitter
part_emitter_region(global.pSystemCell, pEmitCell, xmin, xmax, ymin, ymax, ps_shape_ellipse, ps_distr_linear);

