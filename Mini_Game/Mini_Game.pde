final int ANZAHL_FELDER = 20;
final int FELD_GROESSE = 30; 

void setup() {
  frameRate(5);
  size(800, 650);
}

//Funktionen
void player() {
  fill(0, 150, 255);
  square(spielerX * FELD_GROESSE, spielerY * FELD_GROESSE, FELD_GROESSE);
}


//Enemy
void enemy() {
  fill(0);
  square(enemyX * FELD_GROESSE, enemyY * FELD_GROESSE, FELD_GROESSE);
  switch ((int)(random(0, 3))) {
   case 0:
   enemyY = enemyY - (int)(random(1, 19)) ;
   break;
   case 1:
   enemyX = enemyX + (int)(random(1, 19));
   break;
   case 2:
   enemyY = enemyY + (int)(random(1, 19));
   break;
   case 3:
   enemyX = enemyX - (int)(random(1, 19));
   break;
   }
}

//Food
void food() {
  fill(255, 0, 0);
  square(foodX * FELD_GROESSE, foodY * FELD_GROESSE, FELD_GROESSE);
}

//Spielfeld
void raster() {
  fill(255);
  for (int y = 0; y < ANZAHL_FELDER; y++) {
    for (int x = 0; x < ANZAHL_FELDER; x++) 
      square(x*FELD_GROESSE, y*FELD_GROESSE, FELD_GROESSE);
  }
}

void score() {

  fill(0);
  textSize(35);
  text("Score: " + "\n" + score, 610, 30);
}

//Player Movement
void playerMovement() {
  switch (key) {
  case 'd':
    spielerX = spielerX + 1;
    break;
  case 'a':
    spielerX = spielerX - 1;
    break;
  case 's':
    spielerY = spielerY + 1;
    break;
  case 'w':
    spielerY = spielerY - 1;
    break;
  }
}

//Gameover
void gameover() {
  if (spielerX == enemyX && spielerY == enemyY) {
    frameRate(0);
    background(0);
    fill(255);
    textSize(50);
    text("GAMEOVER \n", 260, 315);
    fill(255, 255, 0);
    textSize(50);
    text("Final score: " + score, 230, 365);
  }
}

//Logic
void logic() {

  //Food Status
  if (spielerX == foodX && spielerY == foodY) {
    score = score + 100;
    foodX = (int)(random(0, 20));
    foodY = (int)(random(0, 20));
  }

  //Spieler Movement cap
  if (spielerX >= ANZAHL_FELDER) {
    spielerX = ANZAHL_FELDER * 0;
  } else if (spielerX < 0) {
    spielerX = spielerX + ANZAHL_FELDER;
  } else if (spielerY >= ANZAHL_FELDER) {
    spielerY = ANZAHL_FELDER * 0;
  } else if (spielerY < 0) {
    spielerY = spielerY + ANZAHL_FELDER;
  }

  //Enemy Movement cap
  if (enemyX >= ANZAHL_FELDER) {
    enemyX = ANZAHL_FELDER * 0;
  } else if (enemyX < 0) {
    enemyX = enemyX + ANZAHL_FELDER;
  } else if (enemyY >= ANZAHL_FELDER) {
    enemyY = ANZAHL_FELDER * 0;
  } else if (enemyY < 0) {
    enemyY = enemyY + ANZAHL_FELDER;
  }
}
