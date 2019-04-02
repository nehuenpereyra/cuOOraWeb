tests
testSeguirAndSiguiendo

	"Un usuario sigue a otro"
	self assert: ((user1 seguir: user2) listaSeguidos size) equals: 1.
	self assert: (user2 listaSeguidores  size) equals: 1.
	self assert: (user2 listaSeguidos size) equals: 0.
	
	"Un usuario empieza a seguir a varios y luego deja de seguir a uno"
	self assert: ((user3 seguir: user2) listaSeguidos size) equals: 1.
	self assert: ((user3 seguir: user4) listaSeguidos size) equals: 2.
	self assert: (user4 listaSeguidores size) equals: 1.
	self assert: ((user3 seguir: user5) listaSeguidos size) equals: 3.
	self assert: ((user3 dejarSeguir: user4) listaSeguidos size) equals: 2.
	self assert: (user4 listaSeguidores size) equals: 0.	