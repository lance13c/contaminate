



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

// Amount of particles
var amountP1 = irandom(5);

part_emitter_burst(global.pSystemCell, self.pEmitCell, global.pPartCell1, amountP1);

// If infected
if (self.infectedLevel > 0) {
    part_emitter_burst(global.pSystemCell, self.pEmitCellVirus, global.pPartCellV2, 5);
}
