part of invaders;

class Board {
  int x = 0;
  int y = 0;
  int width;
  int height;
  Cloud cloud1;
  Cloud cloud2;
  Cloud cloud3;
  Cloud cloud4;
  Cloud cloud5;
  Cloud cloud6;
  Creature creature1;
  Creature creature2;
  Creature creature3;
  Laser laser;
  Spaceship spaceship;
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    cloud1 = new Cloud(this, 100, -20, 70, 70);
    cloud2 = new Cloud(this, 600, -293, 70, 70);
    cloud3 = new Cloud(this, 800, -90, 70, 70);
    cloud4 = new Cloud(this, 500, -170, 70, 70);
    cloud5 = new Cloud(this, 700, -240, 70, 70);
    cloud6 = new Cloud(this, 300, -350, 70, 70);
    creature1 = new Creature(this, 100, 100, 80, 80);
    creature2 = new Creature(this, 600, -293, 80, 80);
    creature3 = new Creature(this, 300, -90, 80, 80);
    laser = new Laser(this, 20, 20, 3, 50, creature1, creature2, creature3);
    spaceship = new Spaceship(this, 350, 100, 70, 70);
    border();
    // redraw
    window.animationFrame.then(gameLoop);
  }

  gameLoop(num delta) {
    draw();
    window.animationFrame.then(gameLoop);
  }

  border() {
    context.beginPath();
    context.fillStyle = 'lightBlue';
    context.rect(x, y, width, height);
    context.fillRect(x, y, width, height);
    context.closePath();
    context.stroke();
  }

  clear() {
    context.clearRect(x, y, width, height);
    border();
  }

  draw() {
    clear();
    cloud1.draw();
    cloud2.draw();
    cloud3.draw();
    cloud4.draw();
    cloud5.draw();
    cloud6.draw();
    creature1.draw();
    creature2.draw();
    creature3.draw();
    laser.draw();
    spaceship.draw();
  }
}
