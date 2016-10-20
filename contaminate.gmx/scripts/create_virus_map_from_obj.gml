var virus = argument0;      // Either Virus Obj, or DS Map
var cell_obj  = argument1;

// Wipes existing virus
ds_map_clear(cell_obj.virus);

// Store New Virus Stats
ds_map_add(cell_obj.virus, "color", virus.color);

// Test if color is coming over
var color = ds_map_find_value(cell_obj.virus, "color");
var p = 1;


