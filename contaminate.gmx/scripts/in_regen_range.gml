// If Center Cell Exists
if (self.centerCell != -1) {
     // Within Cell Center's range
    return point_in_circle(self.x, self.y, self.centerCell.x, self.centerCell.y, self.centerCell.regenRange);
}

return false;
