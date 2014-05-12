/*
 * class Cell
 */
class Cell {

	int px, py; //X- und Y-Position
	boolean isAlive = false; //Zelle lebendig?
	boolean isAliveNextState = false; //Zelle in nächster Generation lebendig?


	/*
	 * Cell Constructor
	 */
	Cell(int _px, int _py) {

		px = _px;
		py = _py;
	}


	/*
	 * Cell.update
	 */
	void update() {

		//Mit der Klassenmethode "getLivingNeighbours" die Anzahl der lebenden Nachbarn bestimmen
		int neighbours = getLivingNeighbours();

		if( isAlive && neighbours < 2 ) {
			isAliveNextState = false;
		}

		if( isAlive && (neighbours == 2 || neighbours == 3) ) {
			isAliveNextState = true;
		}

		if( isAlive && neighbours > 3 ) {
			isAliveNextState = false;
		}

		if( !isAlive && neighbours == 3 ) {
			isAliveNextState = true;
		}
	}


	/*
	 * Cell.paint
	 */
	void paint() {

		//Wenn die Zelle nicht lebt, wird nichts gezeichnet, 
		//d.h. wir können hier mit "return" abbrechen
		if( !isAlive ) return;

		fill(50);
		noStroke();
		rect( px * gridsize, py * gridsize, gridsize, gridsize );
	}


	/*
	 * Cell.getLivingNeighbours
	 * Zählt die lebenden Zellen, die die eigene Zelle umgeben,
	 * und liefert diese als Integer zurück
	 */
	int getLivingNeighbours() {

		int amount = 0;

		//Die For-Schleifen "wandern" einmal um die Zelle herum,
		//ihre Werte gehen von -1 bis 1 und decken damit ein 3x3 Feld ab
		for(int x=-1;x<2;x++) {
			for(int y=-1;y<2;y++) {

				//wenn x und y = 0, handelt es sich um den Mittelpunkt des 3x3-Feldes 
				//und somit um die eigene Zelle
				if( x == 0 && y == 0 ) continue;

				//Wenn die zu betrachende Zelle innerhalb des Spielfelds liegt ...
				if( 	px+x >= 0 && px+x < cell_amount_x &&
					py+y >= 0 && py+y < cell_amount_y ) {

					//wenn die betrachtete Zelle am Leben ist, Zähler erhöhen
					if( cells[px+x][py+y].isAlive ) {
						amount++;
					}
				}
			}
		}

		return amount;
	}


	/*
	 * Cell.applyNextState
	 */
	void applyNextState() {

		//die zuvor bestimmte Lebhaftigkeit in der nächsten Generation wird angewendet
		isAlive = isAliveNextState;
	}
}