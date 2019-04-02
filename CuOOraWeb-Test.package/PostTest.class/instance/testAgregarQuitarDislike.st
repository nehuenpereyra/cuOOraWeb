tests
testAgregarQuitarDislike
	"Agregamos un usuario a la lista de likes"
	self assert: (post agregarDislike: 'user1') sizeListaDislike equals: 1.
	"Agregamos un segundo usuario a la lista de likes"
	self assert: (post agregarDislike: 'user2') sizeListaDislike equals: 2.
	"Comprobamos que no acepte usuarios repetidos"
	self assert: (post agregarDislike: 'user1') sizeListaDislike equals: 2.
	"Quitamos el dislike de un usuario"
	self assert: (post quitarDislike: 'user1') sizeListaDislike equals: 1.
	"Quitamos el dislike de un usuario que no existe"
	self assert: (post quitarDislike: 'user3') sizeListaDislike equals: 1.
	