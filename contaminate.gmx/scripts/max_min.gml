
// Limit Max Speed
if (self.speed > 100) {
    self.speed = 100;
}

// Max HP
if (self.hp > MAX_CELL_HP) {
    self.hp = MAX_CELL_HP;
}

// Min HP
if (self.hp < 0) {
    self.hp = 0;
}
