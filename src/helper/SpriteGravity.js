/**
 * Created by Lance on 10/4/2016.
 */

//  Methods from:  http://www.html5gamedevs.com/topic/13326-p2-gravity-center/

class SpriteGravity {
	constructor(){}
	
	/**
	 *
	 * @param sprite      - Sprite to accelerate
	 * @param spriteGoTo  - Sprite to accelerate towards
	 * @param speed       - How fast to accelerate
	 */
	accelerateToObject(sprite, spriteGoTo, speed = 20) {
		
		let angle = Math.atan2(spriteGoTo.y - sprite.y, spriteGoTo.x - sprite.x);
		sprite.body.rotation = angle + game.math.degToRad(180);
		// correct angle if wanted
		sprite.body.force.x = Math.cos(angle) * speed;
		// accelerateToObject
		sprite.body.force.y = Math.sin(angle) * speed;
	}
	
	distanceBetween(spriteA, spriteB) {
		let dx = spriteA.body.x - spriteB.body.x;
		//distance ship X to planet X
		var dy = spriteA.body.y - spriteB.body.y;
		//distance ship Y to planet Y = pythagoras ^^  (get the distance to each other)
		return Math.sqrt(dx * dx + dy * dy);
	}
	
	// /**
	//  * Updates the speed the object accelerates depending on the speed.
	//  * Put in update method
	//  * @param spriteA -
	//  * @param spriteB
	//  */
	// updateSpeed(spriteA, spriteB) {
	// 	const dist = this.distanceBetween(spriteA, spriteB);
	// 	if (dist < 300) {
	// 		speed = 30;
	// 	} else if (dist < 600) {
	// 		speed = 20;
	// 	} else if (dist < 900) {
	// 		speed = 10;
	// 	}
	// }

}

export default new SpriteGravity();