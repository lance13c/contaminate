// What to do when the cell gets infected
// Affects Self

var virusMap = argument0; // Map of Virus Obj

// Infect current cell
self.infected = true;

// Virus Map Keys
// color - The color of the virus
    

// Clears the virus map
ds_map_clear(self.virus);

// Get virus params
var color = ds_map_find_value(virusMap, 'color');

// Set the color of the virus map
ds_map_add(self.virus, 'color', color);

// Update Cell Values, Cell Virus Values
script_execute(update_cell, color);
