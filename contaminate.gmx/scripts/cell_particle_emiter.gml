

// Create particle emitter
self.pEmitCell = part_emitter_create(global.pSystemCell);
self.pEmitCellVirus = part_emitter_create(global.pSystemCell);

// Set Position
var xmin1 = self.x - self.sprite_width/3;
var xmax1 = self.x + self.sprite_width/3;
var ymin1 = self.y - self.sprite_height/3;
var ymax1 = self.y + self.sprite_height/3;

var xmin2 = self.x - self.sprite_width/2;
var xmax2 = self.x + self.sprite_width/2;
var ymin2 = self.y - self.sprite_height/2;
var ymax2 = self.y + self.sprite_height/2;

// Setup Region for Emitter
part_emitter_region(global.pSystemCell, pEmitCell, xmin1, xmax1, ymin1, ymax1, ps_shape_ellipse, ps_distr_linear);
part_emitter_region(global.pSystemCell, pEmitCellVirus, xmin2, xmax2, ymin2, ymax2, ps_shape_ellipse, ps_distr_invgaussian);





