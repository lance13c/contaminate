/// Provide substance for life of the cell

var centerCellCol = instance_position(self.x, self.y, CellCenter); // Collision with center cell
var cellCol = instance_position(self.x, self.y, Cell); // Collision with another cell

// If coliding with CenterCell, this regen is true
if (centerCellCol != noone) {
    self.regen = true;
} else {
    self.regen = false;
}

// If coliding cell regen is true, this cell's regen is true
if (cellCol != noone && self.regen == false) {    
    if (cellCol.regen) {
        self.regen = true;
    } else {
        self.regen = false;
    }
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
