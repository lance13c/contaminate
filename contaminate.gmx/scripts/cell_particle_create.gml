



// Set Position
var xmin = self.x - self.sprite_width/3;
var xmax = self.x + self.sprite_width/3;
var ymin = self.y - self.sprite_height/3;
var ymax = self.y + self.sprite_height/3;

// Setup Region for Emitter
part_emitter_region(global.pSystemCell, pEmitCell, xmin, xmax, ymin, ymax, ps_shape_ellipse, ps_distr_linear);


// Amount of particles
var amountP1 = irandom(5);

part_emitter_burst(global.pSystemCell, self.pEmitCell, global.pPartCell1, amountP1);
