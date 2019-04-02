tests
testAgregarQuitarLike
	"Agregamos un usuario a la lista de likes"
	self assert: (post agregarLike: 'user1') sizeListaLike equals: 1.
	"Agregamos un segundo usuario a la lista de likes"
	self assert: (post agregarLike: 'user2') sizeListaLike equals: 2.
	"Comprobamos que no acepte usuarios repetidos"
	self assert: (post agregarLike: 'user1') sizeListaLike equals: 2.
	"Quitamos el like de un usuario"
	self assert: (post quitarLike: 'user1') sizeListaLike equals: 1.
	"Quitamos el like de un usuario que no existe"
	self assert: (post quitarLike: 'user3') sizeListaLike equals: 1.
	
	