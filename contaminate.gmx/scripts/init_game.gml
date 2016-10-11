


// Setup Particle Systems
global.pSystemCell = part_system_create();

// Particle Creation
    // Small pixels
    global.pPartCell1 = part_type_create();
    part_type_life(global.pPartCell1, 2, 4);
    part_type_shape(global.pPartCell1, pt_shape_spark);
    part_type_size(global.pPartCell1, 0.04, 0.05, 0.00, 0.01);
    part_type_colour2(global.pPartCell1, c_green, c_olive);// c_lime);
    part_type_alpha2(global.pPartCell1, 0.5, 0.3);
    part_type_speed(global.pPartCell1, 0.01, 0.01, 0, 0.01);
    part_type_direction(global.pPartCell1, 0, 359, 0, 1);
    part_type_gravity(global.pPartCell1, 0, 0);
    part_type_blend(global.pPartCell1, false);
    
    var darkPurple = make_colour_rgb(30,0,92);
    
    // Virus Outside
    global.pPartCellV = part_type_create();
    part_type_life(global.pPartCellV, 3, 6);
    part_type_shape(global.pPartCellV, pt_shape_pixel);
    part_type_size(global.pPartCellV, 1, 1, 0.00, 0.00);
    part_type_colour1(global.pPartCellV, c_purple);// c_lime);
    part_type_alpha1(global.pPartCellV, 1);
    part_type_speed(global.pPartCellV, 0.01, 0.01, 0, 0.00);
    part_type_direction(global.pPartCellV, 0, 359, 0, 1);
    part_type_gravity(global.pPartCellV, 0, 0);
    part_type_blend(global.pPartCellV, false);
    
    // Blend
    global.pPartCellV2 = part_type_create();
    part_type_life(global.pPartCellV2, 5, 10);
    part_type_shape(global.pPartCellV2, pt_shape_sphere);
    part_type_size(global.pPartCellV2, 0.1, 0.1, 0.00, 0.01);
    part_type_colour1(global.pPartCellV2, c_purple);
    part_type_alpha2(global.pPartCellV2, 0.5, 0.7);
    part_type_speed(global.pPartCellV2, 0.00, 0.00, 0, 0.00);
    part_type_direction(global.pPartCellV2, 0, 359, 0, 1);
    part_type_gravity(global.pPartCellV2, 0, 0);
    part_type_blend(global.pPartCellV2, true);
