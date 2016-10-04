/**
 * Created by Lance on 10/3/2016.
 */
import Phaser from 'phaser'

const HP = 10;    // Health: Life of Cell
const DEF = 10;   // Defence: Rate of Decontamination
const RADIUS = 10;   // Defence: Rate of Decontamination

export default class extends Phaser.Sprite {
	constructor ({game, x, y, asset, hp = HP, def = DEF, radius = RADIUS}) {
		super(game, x, y, asset);
		
		this.game = game;
		this.anchor.setTo(0.5);
		
		this.hp = hp;
		this.def = def;
		this.radius = radius;
	}
	
	update () {
		this.x += 1
	}
	
}