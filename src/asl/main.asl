



+step(X): carrying(obstacle) <- !move(s).

+step(X): thing(0,-1,obstacle,_) <- attach(n); +carrying(obstacle).

+step(X): true <- !move(n).





/* 				PERCEPTS 
 * 
 * - position(X,Y) 				- absolute
 * - thing(X,Y,Name,Parameters)	- X horizontal, Y vertical, 
 * 		Exemplos: 
 * 		thing(0,-1,obstacle,_) - obstacle a 1 posi��o NORTE do agente
 * 		thing(0,1,entity,"LIARA") - agente LIARA a 1 posi��o SUL do agente
 * 
 *  attached(0,-1)[entity(_),source(percept)] - algo conectado ao norte
 * 
 * 	Tratamento de erros:
 * 
 *  lastAction(move)[entity(_),source(percept)]
 *  lastActionParams([s])[entity(_),source(percept)]
 * 	lastActionResult(failed_path)[entity(_),source(percept)]
 * 
 * */


/* 				ACTIONS 
 * 
 * move(D) : D-> n  - position(X,Y+1), 
 * 				 s  - position(X,Y-1), 
 * 				 w  - position(X-1,Y), <-
 * 				 e  - position(X+1,Y), ->
 * 
 * attach(D): D -> n, s, w, e
 * 		
 * clear(X,Y):
 * 		(X,Y) -> (1,0) 	- e
 * 		(X,Y) -> (-1,0) - w
 * 		(X,Y) -> (0,1) 	- n
 * 		(X,Y) -> (0,-1) - s
 * 
 * rotate(D): D -> cw, ccw
 * 
 * */
