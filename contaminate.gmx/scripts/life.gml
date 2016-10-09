/// Provide substance for life of the cell

// If Center Cell Exists
    var inRegenRange = script_execute(in_regen_range); // Within Cell Center's range

    if (inRegenRange) {
        self.regen = true;
    } else {
        self.regen = false;
    }
    
    
    
    
// Old Regen
/*
// Cooldown
        if (self.cellRegenCooldown <= 0) {                  // If cooldown is complete
            if (cellCol != noone) {                         // Colliding with another cell
                if (cellCol.regen) {                        // Other cell is regenerating
                    self.regen = true;                      // Set regen to on
                    //self.attached = true;
                }
            } else {
                self.cellRegenCooldown = self.MAX_TIME;     // Reset Regen Cooldown
            }        
        } else {                                            // Cooldown not complete
            self.cellRegenCooldown -= 1;                    // Lower cooldown timer
            if (self.regen) {
                self.regen = false;                         // Set regen to false
            }
        }    

*/

// If coliding cell regen is true, this cell's regen is true

/*
if (cellCol != noone && self.regen == false) {
    if (!self.centerCellColTrigger) {            // When cell disconnects from Center Cell, ensure self.regen = false;
        if (cellCol.regen == true) {
            self.regen = true;
        } else {
            self.regen = false;
        }
    } else {
        self.centerCellColTrigger = false;
    }
}
*/


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
