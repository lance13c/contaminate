
#Idea


##Objects

####MultiCellCore

######Description
Center of cells. Creates cells. Keeps them alive.

######Properties
- Rate of generation (speed)
- Nutrient Distribution Range (power)

######Behaviors
- Provides nutrients to cells (can only provide for so many)
- Generates cells, around it's self
- Can get contaminated


###Cell

######Properties
- Health
- Defence against contamination
- Regeneration Rate
- Degeneration Rate
- Regen: If the cell should regenerate (true) or degenerate (false)


######Behaviors
- Contently attracted to the core
- Can get contaminated
- Lose health when not connected to another cell who is gaining health
- Change color depending on hp
- Contagious




##Dependencies
- [https://github.com/lean/phaser-es6-webpack](https://github.com/lean/phaser-es6-webpack)
