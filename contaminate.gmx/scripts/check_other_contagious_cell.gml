/// When colliding with another Cell

// If other cell is contagious, this cell is now infected
if (other.contagious) {
    // Update cell with new map

    script_execute(infect_cell, self, other.virus);
    //script_execute(create_virus_map_from_map, other.virus, self);
}