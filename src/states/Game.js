/* globals __DEV__ */
import Phaser from 'phaser'
import Cell from '../sprites/cell/Cell'

export default class extends Phaser.State {
  init () {}
  preload () {
    this.load.image('cell', './assets/images/cell.png');
  }

  create () {
    
    //  Enable p2 physics
    game.physics.startSystem(Phaser.Physics.P2JS);
  
    // Gravity - For Testing
    game.physics.p2.gravity.y = 200;
    
    // banner.font = 'Nunito';
    // banner.fontSize = 40;
    // banner.fill = '#77BFA3';
    // banner.anchor.setTo(0.5);
    
    // Adds Cell
    this.cell = new Cell({
      game: this.game,
      x: this.game.world.centerX,
      y: this.game.world.centerY,
      asset: 'cell'
    });
  
    // Adds Cell
    this.cell2 = new Cell({
      game: this.game,
      x: this.game.world.centerX,
      y: this.game.world.centerY + 50,
      asset: 'cell'
    });
    
    
    // Halfs the Cell's Size
    this.cell.scale.setTo(.5,.5);
  
    game.physics.p2.enable(this.cell);
  
  
    let cellMaterial = game.physics.p2.createMaterial('cellMaterial', this.cell.body);
    //let cell2MaterialA = game.physics.p2.createMaterial('cellMaterialA', this.cell2.body);
    let worldMaterial = game.physics.p2.createMaterial('worldMaterial');
  
    //  4 trues = the 4 faces of the world in left, right, top, bottom order
    game.physics.p2.setWorldMaterial(worldMaterial, true, true, true, true);
  
    //  Here is the contact material. It's a combination of 2 materials, so whenever shapes with
    //  those 2 materials collide it uses the following settings.
    //  A single material can be used by as many different sprites as you like.
    let cmCellWorld = game.physics.p2.createContactMaterial(cellMaterial, worldMaterial);
    //let cmCellCell2 = game.physics.p2.createContactMaterial(cellMaterial, cell2Material);
  
    cmCellWorld.friction = 0.3;     // Friction to use in the contact of these two materials.
    cmCellWorld.restitution = 1.0;  // Restitution (i.e. how bouncy it is!) to use in the contact of these two materials.
    cmCellWorld.stiffness = 1e7;    // Stiffness of the resulting ContactEquation that this ContactMaterial generate.
    cmCellWorld.relaxation = 3;     // Relaxation of the resulting ContactEquation that this ContactMaterial generate.
    cmCellWorld.frictionStiffness = 1e7;    // Stiffness of the resulting FrictionEquation that this ContactMaterial generate.
    cmCellWorld.frictionRelaxation = 3;     // Relaxation of the resulting FrictionEquation that this ContactMaterial generate.
    cmCellWorld.surfaceVelocity = 0;        // Will add surface velocity to this material. If bodyA rests on top if bodyB, and the surface velocity is positive, bodyA will slide to the right.
  
  
    // cmCellCell2.friction = 0.3;     // Friction to use in the contact of these two materials.
    // cmCellCell2.restitution = 1.0;  // Restitution (i.e. how bouncy it is!) to use in the contact of these two materials.
    // cmCellCell2.stiffness = 1e7;    // Stiffness of the resulting ContactEquation that this ContactMaterial generate.
    // cmCellCell2.relaxation = 3;     // Relaxation of the resulting ContactEquation that this ContactMaterial generate.
    // cmCellCell2.frictionStiffness = 1e7;    // Stiffness of the resulting FrictionEquation that this ContactMaterial generate.
    // cmCellCell2.frictionRelaxation = 3;     // Relaxation of the resulting FrictionEquation that this ContactMaterial generate.
    // cmCellCell2.surfaceVelocity = 0;        // Will add surface velocity to this material. If bodyA rests on top if bodyB, and the surface velocity is positive, bodyA will slide to the right.
    //
    
  
  
    // set the sprite width to 30% of the game width
    //setResponsiveWidth(this.mushroom, 30, this.game.world);
    this.game.add.existing(this.cell);
    this.game.add.existing(this.cell2);
  }

  render () {
    if (__DEV__) {
      this.game.debug.spriteInfo(this.cell, 32, 32);
    }
  }
}
