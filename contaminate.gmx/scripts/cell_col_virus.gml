/// On Virus Impact

// Create new map b/c other will get destroyed before reference
var newVirusMap = ds_map_create();
// Set Virus (other) attributes
ds_map_add(newVirusMap, "color", other.color);

// Remove Self later
script_execute(infect_cell, self, newVirusMap);

// Clean up map
ds_map_destroy(newVirusMap);
