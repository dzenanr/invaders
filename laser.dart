part of invaders;

class Laser {
  Board board;
  int x;
  int y;
  int width;
  int height;
  bool hit = true;
  Creature creature1;
  Creature creature2;
  Creature creature3;

  Laser(this.board, this.x, this.y, this.width, this.height,
        this.creature1, this.creature2, this.creature3) {
    document.on.mouseDown.add((MouseEvent e) {
      x = e.offsetX;
      y = e.offsetY - 80;
    });
    // Redraw every 8 ms.
    new Timer.repeating(8, (t) => draw());
  }

  draw() {
    y--;
    board.context.beginPath();
    board.context.fillStyle = 'green';
    board.context.fillRect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    if (x > creature1.x && x < creature1.x + creature1.width &&
        y > creature1.y && y < creature1.y + creature1.height) {
      creature1.visible = false;
    }
    if (x > creature2.x && x < creature2.x + creature2.width &&
        y > creature2.y && y < creature2.y + creature2.height) {
      creature2.visible = false;
    }
    if (x > creature3.x && x < creature3.x + creature3.width &&
        y > creature3.y && y < creature3.y + creature3.height) {
      creature3.visible = false;
    }
  }
}



