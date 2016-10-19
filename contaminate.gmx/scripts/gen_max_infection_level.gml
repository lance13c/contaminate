// Returns the random value of infectionLevelMax between OFFSET and INIT value
var initVal = argument0;

return random_range(initVal - INFECTION_MAX_OFFSET, initVal + INFECTION_MAX_OFFSET);
