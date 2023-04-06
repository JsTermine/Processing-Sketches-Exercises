//Player Position
int spielerY = 3;
int spielerX = 7;

//Enemy Position
int enemyX = 19;
int enemyY = 17;

//Food Position
int foodX = (int)(random(0, 20));
int foodY = (int)(random(0, 20));

//Score
int score = 0;


void draw() {
  background(255);

  //score
  score();

  //Movement W/A/S/D
  playerMovement();

  //Spielfeld
  raster();

  //logic
  logic();
  
  //Player, food and enemy
  player();
  food();
  enemy();
  
  //Gameover
  gameover();
}
