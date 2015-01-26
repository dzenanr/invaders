part of invaders;

class Cloud {
  Board board;
  int x;
  int y;
  int width;
  int height;
  int random;
  bool reappear = true;
  ImageElement cloud;

  Cloud(this.board, this.x, this.y, this.width, this.height) {
    cloud = document.querySelector('#cloud');
    // Redraw every 8 ms.
    new Timer.periodic(const Duration(milliseconds: 8), (t) => move());
  }

  move() {
    y = y + 2;
    random = new Random().nextInt(900);
    if (y >= board.height) {
      reappear = true;
    } else {
      reappear = false;
    }
    if (reappear) {
      y = -random;
      x = random;
    }
    draw();
  }

  draw() {
    board.context.drawImageToRect(cloud, new Rectangle(x, y, width, height));
  }
}
