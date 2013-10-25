part of invaders;

class Spaceship {
  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement spaceship;

  Spaceship(this.board, this.x, this.y, this.width, this.height) {
    spaceship = document.querySelector('#spaceship');
    document.onMouseMove.listen((MouseEvent e) {
      x = e.offset.x - 35;
      y = e.offset.y - 35;
    });
    draw();
  }

  draw() {
    board.context.drawImageToRect(spaceship, new Rectangle(x, y, width, height));
  }
}
