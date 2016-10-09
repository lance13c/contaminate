


if (device_mouse_check_button(0, mb_left)) {
    
}

if (keyboard_check(ord("W"))) {
    physics_apply_local_impulse(0,0, 0, -1 * self.FORCE);
}

if (keyboard_check(ord("A"))) {
    physics_apply_local_impulse(0,0, -1 * self.FORCE, 0);
}

if (keyboard_check(ord("S"))) {
    physics_apply_local_impulse(0,0, 0, self.FORCE);
}

if (keyboard_check(ord("D"))) {
    physics_apply_local_impulse(0,0, self.FORCE, 0);
}

if (keyboard_check(ord("G"))) {
    //self.phy_speed = 0;
}

