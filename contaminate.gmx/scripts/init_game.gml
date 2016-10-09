


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
