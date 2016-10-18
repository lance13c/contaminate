
// When infected and not contagious
if (self.infected && !self.contagious) {

    // Check if reached max infection
    // If so, the cell is contagious
    if (self.infectedLevel >= self.infectionLevelMax) {
        self.infectedLevel = self.infectionLevelMax;
        self.contagious = true;
    }
    
    
    // Increase infection level
    self.infectedLevel ++;
}
