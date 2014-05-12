/*
 * Parameters
 */
int gridsize = 10; //Rastergröße
int playFps = 10; //Bilder pro Sekunde während Simulation

/*
 * Runtime Variables
 */
boolean isPause = true; //Simulation pausiert true/false
int cell_amount_x, cell_amount_y; //Anzahl der Zellenzeilen und -spalten
Cell[][] cells; //zweidimensionales Array für alle Zellen


/*
 * setup
 */
void setup() {

	size(800, 600, P2D);

	//Die Anzahl der Zellenzeilen und -spalten ergibt sich aus der Rastergröße
	cell_amount_x = int(width/gridsize);
	cell_amount_y = int(height/gridsize);

	//Größe des Arrays festlegen
	cells = new Cell[cell_amount_x][cell_amount_y];

	//Array mit Cell-Objekten füllen
	for(int x=0; x<cell_amount_x; x++) {
		for(int y=0; y<cell_amount_y; y++) {
			cells[x][y] = new Cell(x, y);
		}
	}
}


/*
 * draw
 */
void draw() {

	background(255);
	drawGrid();

	//Mit zwei For-Schleifen werden alle Zellen im Raster durchgegangen
	for(int x=0; x<cell_amount_x; x++) {
		for(int y=0; y<cell_amount_y; y++) {
			
			//Nur wenn das Spiel nicht pausiert ist, sollen sich die Zellen von alleine aktualisieren
			if( !isPause ) cells[x][y].update();
			
			//Zellen darstellen
			cells[x][y].paint();
		}
	}

	//Wenn pause, Infotext anzeigen
	if( isPause ) {

		fill(255,255,255,200);
		noStroke();
		rect(15,15,220,280);
		fill(0);
		text( "- PAUSE -", 30, 40 );
		text( "[Leertaste] Simulation fortsetzen", 30, 60);
		text( "[Linksklick] Zelle beleben", 30, 80);
		text( "[Rechtsklick] Zellen töten", 30, 100 );
		text( "[1] Statische Elemente", 30, 120);
		text( "[2] Oszilierende Elemente", 30, 140);
		text( "[3] Oszilierender 15-Kampf", 30, 160);
		text( "[4] Gleiter", 30, 180);
		text( "[5] Gleiter Crash", 30, 200);
		text( "[6] 54 Generationen", 30, 220);
		text( "[7] F-Pentomino", 30, 240);
		text( "[8] Gleiterkanone", 30, 260);
		text( "[0] Spielfeld leeren", 30, 280);

	//Wenn keine Pause, den nächsten Zustand in allen Zellen anregen.
	//Es ist wichtig, dass dies erst geschieht, nachdem sich alle Zellen geupdated haben 
	//(in der oberen For-Schleife)
	} else {

		for(int x=0; x<cell_amount_x; x++) {
			for(int y=0; y<cell_amount_y; y++) {
				
				cells[x][y].applyNextState();
			}
		}
	}
}


/*
 * drawGrid
 * Raster zeichnen
 */
void drawGrid() {

	noFill();
	stroke(200);

	for(int x=0; x<cell_amount_x; x++) {
		line(x*gridsize, 0, x*gridsize, height);
	}
	for(int y=0; y<cell_amount_y; y++) {
		line(0, y*gridsize, width, y*gridsize);
	}
}
	


/*
 * mousePressed
 * wird bei Mausklick ausgeführt
 */
void mousePressed() {
	toggleCellAtMouse();
}


/*
 * mouseDragged
 * wird bei Mausdrag ausgeführt
 */
void mouseDragged() {
	toggleCellAtMouse();
}


/*
 * toggleCellAtMouse
 */
void toggleCellAtMouse() {

	//Zellkoordinate der Maus bestimmen
	int 	x = int(mouseX/gridsize),
		y = int(mouseY/gridsize);

	if( x >= cell_amount_x || y > cell_amount_y ) return;

	//Linksklick - Zelle beleben
	if( mouseButton == LEFT ) {
		cells[x][y].isAlive = true;
	}

	//Rechtsklick -- Zelle töten
	if( mouseButton == RIGHT ) {
		cells[x][y].isAlive = false;
	}
}


/*
 * keyPressed
 * Wird bei Tastendruck ausgeführt
 */
void keyPressed() {

	if( key == ' ' ) {

		if( isPause ) {
			frameRate( playFps );
			isPause = false;
		} else {
			frameRate( 60 );
			isPause = true;
		}
	}

	//Werden folgende Tasten gedrückt, entsprechende Presets laden 
	//(Funktionen in Datei presets.pde)
	if( key == '0' ) preset0();
	if( key == '1' ) preset1();
	if( key == '2' ) preset2();
	if( key == '3' ) preset3();
	if( key == '4' ) preset4();
	if( key == '5' ) preset5();
	if( key == '6' ) preset6();
	if( key == '7' ) preset7();
	if( key == '8' ) preset8();
}