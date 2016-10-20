// What to do when the cell gets infected
var s          = argument0; // Self
var virusColor = argument1; // Virus Color   switch to virus obj
var virusMap   = argument2; // Map of Virus Obj


s.infected = true;

// If undefined use virusMap instead
if (is_undefined(virusColor)){

    var color = ds_map_find_value(virusMap, "color");
    ds_map_add(s.virus, "color", color);
} else {
    s.virusColor = virusColor;
    ds_map_add(s.virus, "color", virusColor);
}
