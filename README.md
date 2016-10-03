
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


######Behaviors
- Contently attracted to the core
- Can get contaminated



##Dependencies
- [https://github.com/lean/phaser-es6-webpack](https://github.com/lean/phaser-es6-webpack)