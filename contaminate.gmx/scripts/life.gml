/// Provide substance for life of the cell

// If Center Cell Exists
    var inRegenRange = script_execute(in_regen_range); // Within Cell Center's range

    if (inRegenRange) {
        self.regen = true;
    } else {
        self.regen = false;
    }


// Regen
if (self.regen) {
    // Check max hp
    if (self.hp < MAX_CELL_HP) {
        self.hp += self.regenRate;
    }
} else {
    // Check min hp
    if (self.hp > 0) {
        self.hp -= self.degenRate;
    }
}

// Death
if (self.hp <= 0) {
    instance_destroy();
}
