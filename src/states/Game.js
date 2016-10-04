/* globals __DEV__ */
import Phaser from 'phaser'
import Cell from '../sprites/cell/Cell'

export default class extends Phaser.State {
  init () {}
  preload () {
    this.load.image('cell', './assets/images/cell.png');
  }

  create () {
    let banner = this.add.text(this.game.world.centerX, this.game.height - 30, 'Phaser + ES6 + Webpack');
    banner.font = 'Nunito';
    banner.fontSize = 40;
    banner.fill = '#77BFA3';
    banner.anchor.setTo(0.5);
    
    this.cell = new Cell({
      game: this.game,
      x: this.game.world.centerX,
      y: this.game.world.centerY,
      asset: 'cell'
    });
    this.cell.scale.setTo(.5,.5);

    // set the sprite width to 30% of the game width
    //setResponsiveWidth(this.mushroom, 30, this.game.world);
    this.game.add.existing(this.cell);
  }

  render () {
    if (__DEV__) {
      this.game.debug.spriteInfo(this.cell, 32, 32);
    }
  }
}
