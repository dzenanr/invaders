part of invaders;

class Spaceship {
  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement spaceship;

  Spaceship(this.board, this.x, this.y, this.width, this.height) {
    spaceship = document.query('#spaceship');
    document.on.mouseMove.add((MouseEvent e) {
      x = e.offsetX - 35;
      y = e.offsetY - 35;
    });
    draw();
  }

  draw() {
    board.context.drawImage(spaceship, x, y, width, height);
  }
}
