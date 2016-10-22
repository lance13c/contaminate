///Only use: On collision with Virus

// Create new map b/c other will get destroyed before reference
var newVirusMap = ds_map_create();
// Set Virus (other) attributes
ds_map_add(newVirusMap, "color", other.color);

// Infects Current Cell
script_execute(infect_cell, newVirusMap);

// Clean up map
ds_map_destroy(newVirusMap);
