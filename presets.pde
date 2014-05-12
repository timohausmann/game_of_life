/*
 * preset0
 * all dead
 */
void preset0() {

	for(int x=0; x<cell_amount_x; x++) {
		for(int y=0; y<cell_amount_y; y++) {
			cells[x][y].isAlive = false;
			cells[x][y].isAliveNextState = false;
		}
	}
}

/*
 * preset1
 * statics
 */
void preset1() {

	preset0();

	cells[20][20].isAlive = true;
	cells[20][21].isAlive = true;
	cells[21][20].isAlive = true;
	cells[21][21].isAlive = true;

	cells[31][20].isAlive = true;
	cells[30][21].isAlive = true;
	cells[31][22].isAlive = true;
	cells[32][21].isAlive = true;

	cells[41][20].isAlive = true;
	cells[40][21].isAlive = true;
	cells[40][22].isAlive = true;
	cells[42][21].isAlive = true;
	cells[42][22].isAlive = true;
	cells[41][23].isAlive = true;

	cells[21][30].isAlive = true;
	cells[22][30].isAlive = true;
	cells[20][31].isAlive = true;
	cells[23][31].isAlive = true;
	cells[21][32].isAlive = true;
	cells[23][32].isAlive = true;
	cells[22][33].isAlive = true;

	cells[31][30].isAlive = true;
	cells[32][30].isAlive = true;
	cells[30][31].isAlive = true;
	cells[33][31].isAlive = true;
	cells[30][32].isAlive = true;
	cells[33][32].isAlive = true;
	cells[31][33].isAlive = true;
	cells[32][33].isAlive = true;

	cells[42][30].isAlive = true;
	cells[41][31].isAlive = true;
	cells[43][31].isAlive = true;
	cells[40][32].isAlive = true;
	cells[42][32].isAlive = true;
	cells[41][33].isAlive = true;
}


/*
 * preset2
 * oszillierend
 */
void preset2() {

	preset0();

	cells[20][21].isAlive = true;
	cells[21][21].isAlive = true;
	cells[22][21].isAlive = true;

	cells[32][20].isAlive = true;
	cells[30][21].isAlive = true;
	cells[31][21].isAlive = true;
	cells[32][22].isAlive = true;
	cells[33][22].isAlive = true;
	cells[31][23].isAlive = true;

	cells[41][20].isAlive = true;
	cells[42][20].isAlive = true;
	cells[40][21].isAlive = true;
	cells[43][22].isAlive = true;
	cells[41][23].isAlive = true;
	cells[42][23].isAlive = true;

	cells[50][20].isAlive = true;
	cells[51][20].isAlive = true;
	cells[50][21].isAlive = true;
	cells[53][22].isAlive = true;
	cells[52][23].isAlive = true;
	cells[53][23].isAlive = true;	
}


/*
 * preset3
 * oszillierend
 */
void preset3() {

	preset0();

	cells[20][20].isAlive = true;
	cells[21][20].isAlive = true;
	cells[22][20].isAlive = true;
	cells[23][20].isAlive = true;
	cells[24][20].isAlive = true;
	cells[25][20].isAlive = true;
	cells[26][20].isAlive = true;
	cells[27][20].isAlive = true;
	cells[20][21].isAlive = true;
	cells[22][21].isAlive = true;
	cells[23][21].isAlive = true;
	cells[24][21].isAlive = true;
	cells[25][21].isAlive = true;
	cells[27][21].isAlive = true;
	cells[20][22].isAlive = true;
	cells[21][22].isAlive = true;
	cells[22][22].isAlive = true;
	cells[23][22].isAlive = true;
	cells[24][22].isAlive = true;
	cells[25][22].isAlive = true;
	cells[26][22].isAlive = true;
	cells[27][22].isAlive = true;
}


/*
 * preset4
 * Gleiter
 */
void preset4() {

	preset0();

	cells[21][10].isAlive = true;
	cells[22][10].isAlive = true;
	cells[23][10].isAlive = true;
	cells[24][10].isAlive = true;
	cells[20][11].isAlive = true;
	cells[24][11].isAlive = true;
	cells[24][12].isAlive = true;
	cells[20][13].isAlive = true;
	cells[23][13].isAlive = true;

	cells[21][20].isAlive = true;
	cells[22][21].isAlive = true;
	cells[20][22].isAlive = true;
	cells[21][22].isAlive = true;
	cells[22][22].isAlive = true;
}


/*
 * preset5
 * Gleiter Crash
 */
void preset5() {

	preset0();

	cells[21][20].isAlive = true;
	cells[22][21].isAlive = true;
	cells[20][22].isAlive = true;
	cells[21][22].isAlive = true;
	cells[22][22].isAlive = true;

	cells[42][20].isAlive = true;
	cells[41][21].isAlive = true;
	cells[41][22].isAlive = true;
	cells[42][22].isAlive = true;
	cells[43][22].isAlive = true;
}


/*
 * preset6
 * 54 Gen
 */
void preset6() {

	preset0();

	cells[30][20].isAlive = true;
	cells[31][20].isAlive = true;
	cells[32][20].isAlive = true;
	cells[30][21].isAlive = true;
	cells[32][21].isAlive = true;
	cells[30][22].isAlive = true;
	cells[32][22].isAlive = true;
	cells[30][24].isAlive = true;
	cells[32][24].isAlive = true;
	cells[30][25].isAlive = true;
	cells[32][25].isAlive = true;
	cells[30][26].isAlive = true;
	cells[31][26].isAlive = true;
	cells[32][26].isAlive = true;
}


/*
 * preset7
 * F-Pentomino
 */
void preset7() {

	preset0();

	cells[31][30].isAlive = true;
	cells[32][30].isAlive = true;
	cells[30][31].isAlive = true;
	cells[31][31].isAlive = true;
	cells[31][32].isAlive = true;
}


/*
 * preset8
 * F-Pentomino
 */
void preset8() {

	preset0();

	cells[44][16].isAlive = true;

	cells[42][17].isAlive = true;
	cells[44][17].isAlive = true;

	cells[32][18].isAlive = true;
	cells[33][18].isAlive = true;
	cells[40][18].isAlive = true;
	cells[41][18].isAlive = true;
	cells[54][18].isAlive = true;
	cells[55][18].isAlive = true;

	cells[31][19].isAlive = true;
	cells[35][19].isAlive = true;
	cells[40][19].isAlive = true;
	cells[41][19].isAlive = true;
	cells[54][19].isAlive = true;
	cells[55][19].isAlive = true;

	cells[20][20].isAlive = true;
	cells[21][20].isAlive = true;
	cells[30][20].isAlive = true;
	cells[36][20].isAlive = true;
	cells[40][20].isAlive = true;
	cells[41][20].isAlive = true;

	cells[20][21].isAlive = true;
	cells[21][21].isAlive = true;
	cells[30][21].isAlive = true;
	cells[34][21].isAlive = true;
	cells[36][21].isAlive = true;
	cells[37][21].isAlive = true;
	cells[42][21].isAlive = true;
	cells[44][21].isAlive = true;

	cells[30][22].isAlive = true;
	cells[36][22].isAlive = true;
	cells[44][22].isAlive = true;

	cells[31][23].isAlive = true;
	cells[35][23].isAlive = true;

	cells[32][24].isAlive = true;
	cells[33][24].isAlive = true;


}