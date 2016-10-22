// What to do when the cell gets infected
var s          = argument0; // Self
var virusMap   = argument1; // Map of Virus Obj


s.infected = true;

// Virus Map Keys
// color - The color of the virus
    

// Clears the virus map
ds_map_clear(s.virus);

// Get virus params
var color = ds_map_find_value(virusMap, 'color');

// Set the color of the virus map
ds_map_add(s.virus, 'color', color);

// Update Cell Values, Cell Virus Values
script_execute(update_cell, color);
