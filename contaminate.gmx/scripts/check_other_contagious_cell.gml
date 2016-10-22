/// Only use: Collision event with another Cell

// If other cell is contagious, this cell is now infected
if (other.contagious) {
    // Update cell with new map

    // Infects Current Cell
    script_execute(infect_cell, other.virus);
}
