// Particle Creation
    // Small pixels
    self.pPartCell1 = part_type_create();
    part_type_life(self.pPartCell1, 2, 4);
    part_type_shape(self.pPartCell1, pt_shape_spark);
    part_type_size(self.pPartCell1, 0.04, 0.05, 0.00, 0.01);
    part_type_colour2(self.pPartCell1, c_green, c_olive);
    part_type_alpha2(self.pPartCell1, 0.5, 0.3);
    part_type_speed(self.pPartCell1, 0.01, 0.01, 0, 0.01);
    part_type_direction(self.pPartCell1, 0, 359, 0, 1);
    part_type_gravity(self.pPartCell1, 0, 0);
    part_type_blend(self.pPartCell1, false);
    
    var darkPurple = make_colour_rgb(30,0,92);
    
    // Virus Outside
    self.pPartCellV = part_type_create();
    part_type_life(self.pPartCellV, 3, 6);
    part_type_shape(self.pPartCellV, pt_shape_pixel);
    part_type_size(self.pPartCellV, 1, 1, 0.00, 0.00);
    part_type_colour1(self.pPartCellV, c_purple);
    part_type_alpha1(self.pPartCellV, 1);
    part_type_speed(self.pPartCellV, 0.01, 0.01, 0, 0.00);
    part_type_direction(self.pPartCellV, 0, 359, 0, 1);
    part_type_gravity(self.pPartCellV, 0, 0);
    part_type_blend(self.pPartCellV, false);
    
    // Blend
    self.pPartCellV2 = part_type_create();
    part_type_life(self.pPartCellV2, 5, 10);
    part_type_shape(self.pPartCellV2, pt_shape_sphere);
    part_type_size(self.pPartCellV2, 0.1, 0.1, 0.00, 0.01);
    part_type_colour1(self.pPartCellV2, c_purple);
    part_type_alpha2(self.pPartCellV2, 0.5, 0.7);
    part_type_speed(self.pPartCellV2, 0.00, 0.00, 0, 0.00);
    part_type_direction(self.pPartCellV2, 0, 359, 0, 1);
    part_type_gravity(self.pPartCellV2, 0, 0);
    part_type_blend(self.pPartCellV2, true);
