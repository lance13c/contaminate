var virus = argument0;      // DS Map representing the virus
var cell_obj  = argument1;

// Wipes existing virus
ds_map_clear(cell_obj.virus);

// Store New Virus Stats
var v_color = ds_map_find_value(virus, 'color');  // virus color
ds_map_add(cell_obj.virus, 'color', v_color);

// Test if color is coming over
var color = ds_map_find_value(cell_obj.virus, 'color');
var i = c_purple;
var j = 2;
